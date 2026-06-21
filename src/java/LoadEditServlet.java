import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoadEditServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentId = request.getParameter("studentId");
        ProfileBean profile = null;

        try (Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/StudentProfilesDB", "app", "app")) {
            String sql = "SELECT * FROM PROFILE WHERE STUDENTID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, studentId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                profile = new ProfileBean();
                profile.setStudentId(rs.getString("STUDENTID"));
                profile.setName(rs.getString("NAME"));
                profile.setProgramme(rs.getString("PROGRAMME"));
                profile.setEmail(rs.getString("EMAIL"));
                profile.setHobbies(rs.getString("HOBBIES"));
                profile.setIntroduction(rs.getString("INTRODUCTION"));
            }
        } catch (Exception e) { e.printStackTrace(); }

        request.setAttribute("profile", profile);
        request.getRequestDispatcher("edit.jsp").forward(request, response);
    }
}
