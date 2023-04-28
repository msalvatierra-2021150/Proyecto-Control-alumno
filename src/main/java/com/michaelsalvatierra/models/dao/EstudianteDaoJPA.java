package com.michaelsalvatierra.models.dao;
import com.michaelsalvatierra.db.ConexionPU;
import com.michaelsalvatierra.models.domain.Estudiante;
import com.michaelsalvatierra.models.idao.IEstudianteDAO;
import java.sql.SQLException;
import java.util.List;
/**
 *
 * @author W10
 * @date Sep 7, 2022
 * @time 8:44:07 AM
 */

public class EstudianteDaoJPA implements IEstudianteDAO {

    private ConexionPU con = ConexionPU.getInstance();
    
    @Override
    public List<Estudiante> getAll() {
        return con.getEntityManager().createNamedQuery("Estudiante.findAll").getResultList();
    }

    @Override
    public int add(Estudiante estudiante) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Estudiante estudiante) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    @Override
    public Estudiante get(Estudiante estudiante){
        return (Estudiante) con.getEntityManager().createNamedQuery("Estudiante.find").setParameter("id", estudiante.getId()).getSingleResult();
    }
    
    @Override
    public int delete(Estudiante estudiante) {
        int rows = 0;
        System.out.println("Estudiante a eliminar = "+estudiante.getId());
        try{
            con.getEntityManager().getTransaction().begin();
            con.getEntityManager().remove(estudiante);
            con.getEntityManager().getTransaction().commit();
            rows= 1;
        }catch(Exception e){
            System.err.println("Se produjo un error al intentar eliminar un registro con el id = "+estudiante.getId());
            e.printStackTrace(System.out);
            con.getEntityManager().getTransaction().rollback();
        }
        return rows;
    }

}