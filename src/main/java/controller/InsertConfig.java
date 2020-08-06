
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/insert" })
public class InsertConfig extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		
		
		
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		String fileFormat = request.getParameter("fileFormat");
//		String remoteDir = request.getParameter("remoteDir");
//		String localDir = request.getParameter("localDir");
		
		
		 int id_Config= Integer.parseInt(request.getParameter("idconfig"));
		 String name_Config= request.getParameter("nameconfig");
		 String hostname = request.getParameter("hostname");
		 int port = Integer.parseInt(request.getParameter("port"));
		 String userNameAccount= request.getParameter("username");
		 String passwordAccount= request.getParameter("password");
		 String file_Format= request.getParameter("fileformat") ;
		 String remote_Dir=  request.getParameter("remotedir");
		 String local_Dir=  request.getParameter("localdir");
		
		
		 String name_db_Control=  request.getParameter("namedbcontrol");
		 String name_table_config=  request.getParameter("nametbconfig");
		 String name_table_log=  request.getParameter("nametblog");
		
		 String name_db_Staging=  request.getParameter("namedbstaging");
		 String name_table_staging=  request.getParameter("nametbstaging");
		
		 String name_db_Warehouse=  request.getParameter("namedbwarehouse");
		 String name_table_warehouse=  request.getParameter("nametbwarehouse");
		
		
		Connection conn = ConnectDB.connect("controll", "root", "");
		String sql = null;
		PreparedStatement pre = null;
		
		
		try {
			//String sqlupdate = "UPDATE config SET hostname = ?, port = ?, username_account = ?, password_account = ?, file_format = ?, remote_dir = ?, local_dir = ? WHERE name_config = ?";
			
			String sqlInsertString="Insert into config values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
			pre = conn.prepareStatement(sql);
			
			pre.setInt(1, id_Config);
			pre.setString(2, name_Config);
			pre.setString(3, hostname);
			pre.setInt(4, port);
			pre.setString(5, userNameAccount);
			pre.setString(6, passwordAccount);
			pre.setString(7, file_Format);
			pre.setString(8, remote_Dir);
			pre.setString(9, local_Dir );
			pre.setString(10, name_db_Control);
			pre.setString(11, name_table_config);
			pre.setString(12, name_table_log);
			pre.setString(13, name_db_Staging);
			pre.setString(14, name_table_staging);
			pre.setString(15, name_db_Warehouse);
			pre.setString(16, name_table_warehouse);
			pre.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		try {
            String[] command = {"cmd.exe", "/C", "Start", "C:\\Users\\WIN10\\Desktop\\runDown.bat"};
            Runtime.getRuntime().exec(command);           
        } catch (IOException ex) {
        }
		response.sendRedirect(request.getContextPath() + "/viewLog");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
	
	
	
}
