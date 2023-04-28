package com.michaelsalvatierra.models.dao;
import com.michaelsalvatierra.db.*;
import com.michaelsalvatierra.models.domain.Estudiante;
import com.michaelsalvatierra.models.idao.IEstudianteDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.michaelsalvatierra.db.Conexion;
import java.sql.SQLException;
/**
 *
 * @author informatica
 */
public class EstudianteDaoImpl implements IEstudianteDAO {

    private static final String SQL_SELECT="SELECT id, nombre, apellido, email, telefono, saldo FROM estudiantes";
    private static final String SQL_SELECT_BY_ID="SELECT id, nombre, apellido, email, telefono, saldo FROM estudiantes WHERE id=?";
    private static final String SQL_DELETE = "DELETE FROM estudiantes WHERE id = ?";
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private Estudiante estudiante = null;
    private List<Estudiante> listaEstudiantes = new ArrayList<>();
    
    @Override
    public List<Estudiante> getAll() {
       try{
          con =  Conexion.getConnection();
          pstmt = con.prepareStatement(SQL_SELECT);
          rs = pstmt.executeQuery();
          
          while(rs.next()){
              estudiante = new Estudiante( 
                      rs.getInt("id"),
                      rs.getString("nombre"),
                      rs.getString("apellido"),
                      rs.getString("email"),
                      rs.getString("telefono"),
                      rs.getDouble("saldo"));
                    System.out.println(estudiante.toString());
              listaEstudiantes.add(estudiante);
          }
       }catch(SQLException e){
           e.printStackTrace(System.out);
       }catch(Exception e){
           e.printStackTrace(System.out);
       }finally{
           Conexion.close(rs);
           Conexion.close(pstmt);
           Conexion.close(con);
       }
       return listaEstudiantes;
    }

    @Override
    public int add(Estudiante estudiante) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public int update(Estudiante estudiante) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public int delete(Estudiante estudiante) {
        int rows = 0;
        try{
            con = Conexion.getConnection();
            pstmt = con.prepareStatement(SQL_DELETE);
            pstmt.setInt(1, estudiante.getId());
            System.out.println(pstmt.toString());
            rows = pstmt.executeUpdate();
            
        }catch(SQLException e){
            System.err.println("Se produjo un error al intentar eliminar un registro con el id = "+estudiante.getId());
            e.printStackTrace(System.out);
        }catch(Exception e){
            e.printStackTrace(System.out);
        }
        return rows;
    }

    @Override
    public Estudiante get(Estudiante estudiante) {
        try{
          con =  Conexion.getConnection();
          pstmt = con.prepareStatement(SQL_SELECT_BY_ID);
          rs = pstmt.executeQuery();
          
          while(rs.next()){
              estudiante = new Estudiante( 
                      rs.getInt("id"),
                      rs.getString("nombre"),
                      rs.getString("apellido"),
                      rs.getString("email"),
                      rs.getString("telefono"),
                      rs.getDouble("saldo"));
                    System.out.println(estudiante.toString());
          }
       }catch(SQLException e){
           e.printStackTrace(System.out);
       }catch(Exception e){
           e.printStackTrace(System.out);
       }finally{
           Conexion.close(rs);
           Conexion.close(pstmt);
           Conexion.close(con);
       }
       return estudiante;
    }
    
    
}
