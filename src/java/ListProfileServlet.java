import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class ListProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ProfileBean> profiles = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/StudentProfilesDB", "app", "app")) {
            String sql = "SELECT * FROM PROFILE";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                ProfileBean p = new ProfileBean();
                p.setStudentId(rs.getString("STUDENTID"));
                p.setName(rs.getString("NAME"));
                p.setProgramme(rs.getString("PROGRAMME"));
                p.setEmail(rs.getString("EMAIL"));
                p.setHobbies(rs.getString("HOBBIES"));
                p.setIntroduction(rs.getString("INTRODUCTION"));
                profiles.add(p);
            }
        } catch (Exception e) { e.printStackTrace(); }

        request.setAttribute("profiles", profiles);
        request.getRequestDispatcher("viewProfiles.jsp").forward(request, response);
    }
}
