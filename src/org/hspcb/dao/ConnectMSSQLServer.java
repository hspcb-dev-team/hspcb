//package org.hspcb.dao;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//public class ConnectMSSQLServer {
//
//	public void dbConnect(String db_connect_string,
//            String db_userid,
//            String db_password)
//   {
//      try {
//         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//         System.out.println("check 1" + db_connect_string);
//         
//         Connection conn = DriverManager.getConnection(db_connect_string,
//                  db_userid, db_password);
//         System.out.println("check3" + conn);
//         System.out.println("connected");
//      } catch (Exception e) {
//         e.printStackTrace();
//      }
//   }
//}
