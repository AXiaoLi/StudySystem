package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.Student;
import utils.JDBCUtils;

public class StuDao {
	
	public Student stuLogin(String um, String up) throws SQLException {
		String sql = "select * from student where stuNum=? and loginPw=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		
		return qr.query(sql, new BeanHandler<Student>(Student.class),um,up);
	}

	public void updateStudent(Student student) throws SQLException {
		String sql = "UPDATE student SET stuNum = ?  ,stuRealname = ? , stuSex = ? , stuAge = ? , loginPw =  ? WHERE stuId=?";
		Object[] params = { student.getStuNum(), student.getStuRealname(), student.getStuSex(), student.getStuAge(), student.getLoginPw(), student.getStuId() };
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql, params);
	}
}
