import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class DeleteProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentId = request.getParameter("studentId");

        try (Connection conn = DriverManager.getConnection(
                "jdbc:derby://localhost:1527/StudentProfilesDB", "app", "app")) {
            String sql = "DELETE FROM PROFILE WHERE STUDENTID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, studentId);
            ps.executeUpdate();
        } catch (Exception e) { e.printStackTrace(); }
        response.sendRedirect("ListProfileServlet");
    }
}
