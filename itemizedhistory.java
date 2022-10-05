import java.sql.*;
import java.io.*;
import java.text.*;
import java.util.Date;
/*
CSCE 315
9-27-2021 Lab
 */
public class saleshistory {

  //Commands to run this script
  //This will compile all java files in this directory
  //javac *.java
  //This command tells the file where to find the postgres jar which it needs to execute postgres commands, then executes the code
  //Windows: java -cp ".;postgresql-42.2.8.jar" jdbcpostgreSQL
  //Mac/Linux: java -cp ".:postgresql-42.2.8.jar" jdbcpostgreSQL

  //MAKE SURE YOU ARE ON VPN or TAMU WIFI TO ACCESS DATABASE
  public static void main(String args[]) {

    //Building the connection with your credentials
    Connection conn = null;
    String teamNumber = "24";
    String sectionNumber = "913";
    String dbName = "csce315" +"_"+ sectionNumber + "_" + teamNumber;
    String dbConnectionString = "jdbc:postgresql://csce-315-db.engr.tamu.edu/" + dbName;
    dbSetup myCredentials = new dbSetup(); 

    //Connecting to the database
    try {
        conn = DriverManager.getConnection(dbConnectionString, dbSetup.user, dbSetup.pswd);
     } catch (Exception e) {
        e.printStackTrace();
        System.err.println(e.getClass().getName()+": "+e.getMessage());
        System.exit(0);
     }

     System.out.println("Opened database successfully");
     String csvFilePath = "/Users/dongyingchen/Downloads/315_populate_db-main/PandaExpressPOS/itemizedhistory.csv";
     try{
       //create a statement object

       //Running a query
       //TODO: update the sql command here
       String sqlStatement = "INSERT INTO itemizedhistory (date,item,price) VALUES(?,?,?)";
       PreparedStatement statement = conn.prepareStatement(sqlStatement);
       BufferedReader lineReader = new BufferedReader(new FileReader(csvFilePath));
            String lineText = null;
            lineReader.readLine(); // skip header line in csv
            while ((lineText = lineReader.readLine()) != null) {
                String[] data = lineText.split(",");
                SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd");
                Date date1 = df1.parse(data[0]);
                String item =  String.parseString(data[1]);
                int price= Double.parseDouble(data[2]);
        
                statement.setDate(1, new java.sql.Date(date1.getTime()));
                statement.setString(2, item);
                statement.setDouble(3, price);
                statement.addBatch();
 
            }
 
            lineReader.close();
 
            int[] result = statement.executeBatch();
            conn.commit();
 
       //send statement to DBMS
       //This executeQuery command is useful for data retrieval
      
       //OR
       //This executeUpdate command is useful for updating data
       //int result = stmt.executeUpdate(sqlStatement);

       //OUTPUT
       //You will need to output the results differently depeninding on which function you use
       System.out.println("--------------------Query Results--------------------");
       //while (result.next()) {
       //System.out.println(result.getString("column_name"));
       //}
       //OR
       System.out.println(result);
   } catch (Exception e){
       e.printStackTrace();
       System.err.println(e.getClass().getName()+": "+e.getMessage());
       System.exit(0);
   }

    //closing the connection
    try {
      conn.close();
      System.out.println("Connection Closed.");
    } catch(Exception e) {
      System.out.println("Connection NOT Closed.");
    }//end try catch
  }//end main
}//end Class
