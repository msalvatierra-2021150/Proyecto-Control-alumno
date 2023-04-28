package com.michaelsalvatierra.system;
import com.michaelsalvatierra.models.dao.EstudianteDaoImpl;
/**
 *
 * @author informatica
 */
public class Principal {
    public static void main(String[] args) {
        EstudianteDaoImpl estudianteDaoImpl= new EstudianteDaoImpl();
            estudianteDaoImpl.getAll();
    }
}
