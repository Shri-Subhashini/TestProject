<%@page import="java.sql.ResultSet"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>

<%
	if(request.getParameter("key") != null)
	{
		String key= request.getParameter("key");
		String wild="%" + key+"%";
		
		String url="jdbc:mysql://localhost:3307/test";
		String username="root";
		String password="Subha@2127";
	
	   try
	   {
	     Class.forName("com.mysql.jdbc.Driver");
	     Connection con = DriverManager.getConnection(url,username,password);
	     PreparedStatement pstmt = null;
	     pstmt = con.prepareStatement("SELECT * FROM country WHERE name LIKE ? ");
	     pstmt.setString(1, wild);
	     ResultSet rs = pstmt.executeQuery();
	     
	     while(rs.next())
	     {
	     	%>
	     	<li class="list-group-item"><%=rs.getString("name") %></li>
	     	
	     	<%
	     	}
	     	con.close();
	     	
	     }catch(Exception e)
	   {
	   e.printStackTrace();
	   
	   }
	
	}


 %>











 %>
