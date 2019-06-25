package service;

import java.sql.SQLException;

import dao.TeaDao;
import domain.Teacher;

public class TeaService {

	public Teacher teaLogin(String um, String up) throws SQLException {
		// 调用DAO层功能
		TeaDao teaDao = new TeaDao();
		return teaDao.teaLogin(um, up);
	}

	public void updateTeacher(Teacher teacher) throws SQLException {
		TeaDao teaDao = new TeaDao();
		teaDao.updateTeacher(teacher);

	}

}
