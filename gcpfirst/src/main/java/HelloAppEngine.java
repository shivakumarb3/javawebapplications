import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(
    name = "HelloAppEngine",
    urlPatterns = {"/hello"}
)
public class HelloAppEngine extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) 
      throws IOException {

    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");

    response.getWriter().print("hey vamshi tinnava leda pettala!\r\n");
    
    
    final String createTableSql = "CREATE TABLE IF NOT EXISTS visits ( "
            + "visit_id SERIAL NOT NULL, ts timestamp NOT NULL, "
            + "PRIMARY KEY (visit_id) );";
        final String createVisitSql = "INSERT INTO visits (ts) VALUES (?);";
        final String selectSql = "SELECT ts FROM visits ORDER BY ts DESC "
            + "LIMIT 10;";

        String path = reqest.getRequestURI();
        if (path.startsWith("/favicon.ico")) {
          return; // ignore the request for favicon.ico
        }

        PrintWriter out = response.getWriter();
        resp.setContentType("text/plain");

        Stopwatch stopwatch = Stopwatch.createStarted();
        try (PreparedStatement statementCreateVisit = conn.prepareStatement(createVisitSql)) {
          conn.createStatement().executeUpdate(createTableSql);
          statementCreateVisit.setTimestamp(1, new Timestamp(new Date().getTime()));
          statementCreateVisit.executeUpdate();

          try (ResultSet rs = conn.prepareStatement(selectSql).executeQuery()) {
            stopwatch.stop();
            out.print("Last 10 visits:\n");
            while (rs.next()) {
              String timeStamp = rs.getString("ts");
              out.println("Visited at time: " + timeStamp);
            }
          }
        } catch (SQLException e) {
          throw new ServletException("SQL error", e);
        }
        out.println("Query time (ms):" + stopwatch.elapsed(TimeUnit.MILLISECONDS));
      }

  }
