import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import javax.net.ssl.HttpsURLConnection;

import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONException;

public class MainActivity {
    private static final String query_morocco = "https://services3.arcgis.com/hjUMsSJ87zgoicvl/arcgis/rest/services/Covid_19/FeatureServer/5/query?where=1%3D1" +
            "&outFields=Date,Cas_confirm%C3%A9s,Retablis,D%C3%A9c%C3%A9d%C3%A9s,Cas_Jour,Deces_jour,Rtabalis_jour&returnGeometry=false&outSR=4326&f=json";

    private static final String query_region = "https://services3.arcgis.com/hjUMsSJ87zgoicvl/arcgis/rest/services/Covid_19/FeatureServer/0/query?where=1%3D1&out" +
            "Fields=RegionFr,Cases,Deaths,Recoveries&returnGeometry=false&outSR=4326&f=json";

    private static String jsonString = "";
    private static JSONArray jsonarr = null;
    private static JSONObject json = null;

    public static void main(String[] args) {
        try {
            loadJson(query_morocco);
            json = stringToJson();
            jsonarr = json.getJSONArray("features");
            Connection conn = connectToDatabase();
            insertDatabase(conn, jsonarr);

            // same thing but for regions
            loadJson(query_region);
            json = stringToJson();
            jsonarr = json.getJSONArray("features");
            insertDatabasePerRegion(conn, jsonarr);
            System.out.println("Your Database has been filled & Updated!!");
        } catch (Exception e) {
            System.out.println("******************************");
            System.out.println("***ERROR DETECETED***");
            System.out.println("******************************\n");
            System.out.println(e.toString());
            System.out.println("\n******************************");
            System.out.println("********END ERROR********");
            System.out.println("******************************");
        }
    }

    // load json from the link 
    private static void loadJson(String link) throws Exception {
        StringBuilder inline = new StringBuilder();
        URL x = new URL(link);
        HttpsURLConnection conn = (HttpsURLConnection) x.openConnection();
        conn.connect();
        if (conn.getResponseCode() != 200) {
            throw new RuntimeException("httpsresponsecode:" + conn.getResponseCode());
        } else {
            Scanner sc = new Scanner(x.openStream(), "UTF-8");
            while (sc.hasNext()) {
                inline.append(sc.nextLine());
            }
            sc.close();
            jsonString = inline.toString();
        }
    }

    // JsonString to JsonObject
    private static JSONObject stringToJson() throws Exception {
        JSONObject jsonObject = null;
        jsonObject = new JSONObject(jsonString);
        return jsonObject;
    }

    //connect to database
    private static Connection connectToDatabase() throws SQLException  {
        return DriverManager.getConnection("jdbc:mysql://localhost/Covid?serverTimezone=UTC", "root", "");
    }

    // fill database with general morocco's data #TableName = Maroc#
    private static void insertDatabase(Connection conn, JSONArray js) throws SQLException, JSONException {
        Statement st = conn.createStatement();
        int len = js.length();
        st.executeUpdate("DELETE From Maroc;");
        st.executeUpdate("ALTER TABLE Maroc AUTO_INCREMENT = 1;");
        for (int i = 0; i < len; i++) {
            JSONObject temp = js.getJSONObject(i).getJSONObject("attributes");
            long val = temp.getLong("Date");
            Date date = new Date(val);
            SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            String dateText = df2.format(date);
            String sqlquery = "Insert Into Maroc (" +
                    "Date,confirmed,recovered,died,day_cases,day_recovered,day_deaths"
                    + ") values (\"" +
                    dateText + "\","
                    + temp.getInt("Cas_confirmés") + ","
                    + temp.getInt("Retablis") + ","
                    + temp.getInt("Décédés") + ","
                    + temp.getInt("Cas_Jour") + ","
                    + temp.getInt("Rtabalis_jour") + ","
                    + temp.getInt("Deces_jour") + ""
                    + ")";
            st.executeUpdate(sqlquery);
        }
    }

    // fill database with morocco's data per region  #TableName = Maroc_regions#
    private static void insertDatabasePerRegion(Connection conn, JSONArray js) throws SQLException, JSONException {
        Statement st = conn.createStatement();
        int len = js.length();
        Date date = new Date();
        SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String dateText = df2.format(date);
        ResultSet rs = st.executeQuery("SELECT COUNT(*)  as count from Maroc_regions where Date like \"" + dateText.substring(0, 10) + "%\";");
        rs.next();
        int count = rs.getInt(1);
        if (count >= 1) {
            System.out.println("exists");
            return;
        }
        System.out.println(js.toString());
        for (int i = 0; i < len; i++) {
            JSONObject temp = js.getJSONObject(i).getJSONObject("attributes");
            String sqlquery = "Insert Into Maroc_regions (" + "Date,region_name,confirmed,recovered,died"
                    + ") values (\"" +
                    dateText + "\",\""
                    + temp.getString("RegionFr") + "\","
                    + temp.getInt("Cases") + ","
                    + temp.getInt("Recoveries") + ","
                    + temp.getInt("Deaths")
                    + ")";
            st.executeUpdate(sqlquery);
        }
    }
}