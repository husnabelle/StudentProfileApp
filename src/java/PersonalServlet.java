import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/PersonalServlet")
public class PersonalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String name = request.getParameter("name");
    String studentId = request.getParameter("studentId");
    String programme = request.getParameter("program");
    String email = request.getParameter("email");
    String hobbies = request.getParameter("hobbies");
    String intro = request.getParameter("intro");

    ProfileBean profile = new ProfileBean();
    profile.setName(name);
    profile.setStudentId(studentId);
    profile.setProgramme(programme);
    profile.setEmail(email);
    profile.setHobbies(hobbies);
    profile.setIntroduction(intro);

    try {
        Connection conn = DriverManager.getConnection(
            "jdbc:derby://localhost:1527/StudentProfilesDB", "app", "app");

        PreparedStatement ps = conn.prepareStatement(
            "INSERT INTO PROFILE(studentID, name, programme, email, hobbies, introduction) VALUES (?, ?, ?, ?, ?, ?)");
        ps.setString(1, studentId);
        ps.setString(2, name);
        ps.setString(3, programme);
        ps.setString(4, email);
        ps.setString(5, hobbies);
        ps.setString(6, intro);
        ps.executeUpdate();

        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    request.getSession().setAttribute("profile", profile);
    request.setAttribute("submitted", "submitted!");
    request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
