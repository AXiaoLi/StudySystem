package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import domain.Course;
import domain.Student;
import utils.JDBCUtils;

public class StuCourseDao {

	public List<Course> stuFindCourseList(Student stu) throws SQLException {
		String sql = "SELECT * FROM selectedCourse where stuNum=? ORDER BY sId DESC";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Course>(Course.class),stu.getStuNum());
	}

	public Course stuFindCourseByCid(String cId) throws SQLException {
		String sql = "select * from course where cId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Course>(Course.class), cId);
	}
}
