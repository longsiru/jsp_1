package ch08;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RegistService {
	Map<String, Regist> registers = new HashMap<>();
	
	public RegistService() {
		Regist re = new Regist("101" , "김지우", "서울시", "silver", "010-1111-1111");
		registers.put("101", re);
		
		re =  new Regist("102" , "홍길동", "인천시", "gold", "010-2222-2222");
		registers.put("102", re);
		
		re =  new Regist("103" , "율곡", "김포시", "vip", "010-3333-3333");
		registers.put("103", re);
	}
	
	public List<Regist> findAll(){
		return new ArrayList<>(registers.values());
	}
	
	public Regist find(String id) {
		return registers.get(id);
	}
}
