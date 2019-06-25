package service;

import java.sql.SQLException;

import dao.StuDao;
import dao.TeaDao;
import domain.Student;

public class StuService {
	
	public Student stuLogin(String um, String up) throws SQLException {
		//调用DAO层功能
		StuDao stuDao = new StuDao();
		return stuDao.stuLogin(um,up);
	}

	public void updateStudent(Student student) throws SQLException {
		StuDao stuDao = new StuDao();
		stuDao.updateStudent(student);
	}

}
