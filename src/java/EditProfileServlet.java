import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class EditProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentId = request.getParameter("studentId");
        String name = request.getParameter("name");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("introduction");

        try (Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/StudentProfilesDB", "app", "app")) {
            String sql = "UPDATE PROFILE SET NAME=?, PROGRAMME=?, EMAIL=?, HOBBIES=?, INTRODUCTION=? WHERE STUDENTID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, programme);
            ps.setString(3, email);
            ps.setString(4, hobbies);
            ps.setString(5, intro);
            ps.setString(6, studentId);
            ps.executeUpdate();
        } catch (Exception e) { e.printStackTrace(); }

        response.sendRedirect("ListProfileServlet");
    }
}
