package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.Teacher;
import utils.JDBCUtils;

public class TeaDao {

	public Teacher teaLogin(String um, String up) throws SQLException {
		String sql = "select * from teacher where teaNum=? and loginPw=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());

		return qr.query(sql, new BeanHandler<Teacher>(Teacher.class), um, up);
	}

	public void updateTeacher(Teacher teacher) throws SQLException {
		String sql = "UPDATE teacher SET teaNum = ?  ,teaRealname = ? , teaSex = ? , loginPw =  ? WHERE teaId=?";
		Object[] params = { teacher.getTeaNum(), teacher.getTeaRealname(), teacher.getTeaSex(), teacher.getLoginPw(), teacher.getTeaId() };
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql, params);
		
	}

}
