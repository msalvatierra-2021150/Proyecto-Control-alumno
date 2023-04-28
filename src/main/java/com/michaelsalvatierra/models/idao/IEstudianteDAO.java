package com.michaelsalvatierra.models.idao;
import java.util.List;
import com.michaelsalvatierra.models.domain.Estudiante;
/**
 *  Created on : Aug 19, 2022, 8:48:50 am
    Author     : Michael Steven Salvatierra Ramirez
    Carne: 2021150
    Codigo tecnico: IN5BM
    Jornada: Matutina
    Grado: 5to Perito en informatica 
    Profesor: Lic. Jorge Luis Perez Canto
    Grupo presencial: 2 (Lunes)
 */
public interface IEstudianteDAO {
    //Listar todos los registros
    public List <Estudiante> getAll();
    
    //Insertar un registtro 
    public int add(Estudiante estudiante); 
    
    //Actualizar un registro
    public int update(Estudiante estudiante);
    
    //Eliminar un registro
    public int delete(Estudiante estudiante);

    public Estudiante get(Estudiante estudiante);
}

