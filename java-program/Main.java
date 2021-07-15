import com.jscraft.jsch.*;

public class Main{
	public static void main(String[]args){
		try{
			JSch jsch=new JSch();
			String host = "192.168.1.74";
			String client = "client";
			Session session = jsch.getSession(user,host,22);
			session.setPassword("123");
		} catch(Exception e){
			System.out.println(e);
		}
	}
}
