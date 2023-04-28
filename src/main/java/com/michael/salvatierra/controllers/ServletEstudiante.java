package com.michael.salvatierra.controllers;
import com.michaelsalvatierra.models.domain.Estudiante;
import com.michaelsalvatierra.models.dao.EstudianteDaoImpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import com.michaelsalvatierra.models.dao.EstudianteDaoJPA;
/**
 *
 * @author informatica
 */
@WebServlet("/ServletEstudiante")
public class ServletEstudiante extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String accion = request.getParameter("accion");
        
        if (accion != null){
            switch(accion){
                case "listar":
                    listarEstudiantes(request, response);
                    break;
                case "editar":
                    //Otras acciones
                    break;
                case "eliminar":
                    eliminarEstudiante(request, response);
                    break;
                default:
                    
                    
                    break;
            }
        }
    }
    
    private double calcularSaldoTotal(List<Estudiante> listaEstudiantes){
        double saldoTotal = 0;
        
        for(Estudiante estudiante : listaEstudiantes){
            saldoTotal += estudiante.getSaldo();
        }
        return saldoTotal;
    }
    
    private void listarEstudiantes(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //List<Estudiante> listaEstudiantes = new EstudianteDaoImpl().getAll();
        List<Estudiante> listaEstudiantes = new EstudianteDaoJPA().getAll();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("data", listaEstudiantes);
        sesion.setAttribute("totalEstudiantes", listaEstudiantes.size());
        sesion.setAttribute("saldoTotal", calcularSaldoTotal(listaEstudiantes));
        response.sendRedirect("estudiantes/estudiantes.jsp");
    }
    
    private void eliminarEstudiante(HttpServletRequest request, HttpServletResponse response) throws IOException{
        int idEstudiante = Integer.parseInt(request.getParameter("carne"));
        //Estudiante estudiante = new Estudiante(idEstudiante);
        //int registrosEliminados = new EstudianteDaoImpl(). delete(estudiante);
        
        Estudiante estudiante = new EstudianteDaoJPA().get(new Estudiante(idEstudiante));
        int registrosEliminados = new EstudianteDaoJPA().delete(estudiante);
        if(registrosEliminados >= 1){
            System.out.println("Registros eliminados con exito ");
        }
        listarEstudiantes(request, response);
    }
}
