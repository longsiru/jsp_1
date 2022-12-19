package ch07.com.dao;



public class Member {
	private String email;
	private String tel;
	
	
//	  String email = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
//		Pattern p = Pattern.compile("email");
	    static String pattern1 = "\\w+@\\w+\\.\\w+(\\.\\w+)?";
		/* Matcher m = p.matcher(email); */
	 
		/*
		 * String tel = "(02|010)-\\d{3,4}-\\d{4}"; Pattern pattern =
		 * Pattern.compile("tel");
		 */
		static String pattern2 = "(02|010)-\\d{3,4}-\\d{4}";
		/* Matcher matcher = pattern.matcher(tel); */
		
		
		
		
		/*
		 * boolean a = email.matches(); boolean b = tel.matches();
		 */

	public String result() {
		String re;
		if (email.matches(pattern1) && tel.matches(pattern2)) {
			re = "환영하니다";
		}else {
			re = "유휴성 검사에 통과하지 못했습니다";
		}
		return re;
		

	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getTel() {
		return tel;
	}




	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
