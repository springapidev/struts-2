package com.coderbd.controller;

import com.coderbd.dao.StudentDao;
import com.coderbd.entity.Student;
import com.coderbd.service.StudentService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rajail Islam
 */
public class StudentController extends ActionSupport implements ModelDriven<Student> {

    private Student student;
    private List<Student> students;
    private static final StudentDao STUDENT_DAO = new StudentService();
 
    @Override
    public Student getModel() {
        return student;
    }

    public String save() {
        try {
            STUDENT_DAO.persist(student);
        } catch (Exception ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SUCCESS;
    }

    public String update() {
        try {
            STUDENT_DAO.merge(student);
        } catch (Exception ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SUCCESS;
    }

    public String delete() {
        try {
            STUDENT_DAO.remove(student);
        } catch (Exception ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SUCCESS;
    }

    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getStudents() {
        try {
            students = STUDENT_DAO.findAll();
        } catch (Exception ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

}
