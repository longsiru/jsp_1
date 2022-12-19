package ch08;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistController
 */
@WebServlet("/RegistController")
public class RegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegistService service;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		service = new RegistService();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(request, response);
		String action = request.getParameter("action");
		String view = "";
		
		if(action == null) {
			getServletContext().getRequestDispatcher("/RegistController?action=list").forward(request, response);
		}else {
			switch(action) {
			case "list" : view = list(request, response); break;
			case "info" : view = info(request, response); break;
			case "confirm" : view =confirm(request, response); break;
			}
		}
		
		getServletContext().getRequestDispatcher("/ch08/"+view).forward(request, response);
	}
	
	private String info(HttpServletRequest request, HttpServletResponse response) {
		Regist re = service.find(request.getParameter("id"));
		request.setAttribute("re", re);
		return "registInfo.jsp";
		
	}
	
	private String list(HttpServletRequest request, HttpServletResponse response) {
		List<Regist> relist = service.findAll();
		request.setAttribute("registers", relist);
		return "registList.jsp";
		
	}
	
	
	private String confirm(HttpServletRequest request, HttpServletResponse response) {
		List<Regist> reconfirm = service.findAll();
		request.setAttribute("registers", reconfirm);
		return "confirm.jsp";
		
	}
	
	

	
       
    

}
