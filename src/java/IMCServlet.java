import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class IMCServlet extends HttpServlet {

    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        
        String tmp = null;
        float peso = 0;
        float altura = 0;
        float imc = 0;
        
        
        tmp = request.getParameter ("peso");
        peso = Float.parseFloat(tmp.replaceAll(",", "."));
       
        tmp = request.getParameter ("altura");
        altura = Float.parseFloat(tmp.replaceAll(",", "."));
      
        imc = peso / (altura * altura);
        
        request.setAttribute("imc", imc);
        request.getRequestDispatcher("resultado.jsp") .forward(request, response);
        
        }

    
    }
