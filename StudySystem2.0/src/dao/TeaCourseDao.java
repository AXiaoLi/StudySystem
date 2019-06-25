package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import domain.Course;
import domain.Teacher;
import utils.JDBCUtils;

public class TeaCourseDao {

	public List<Course> teaFindCourseList(Teacher tea) throws SQLException {
		String sql = "SELECT * FROM course where teaNum=? ORDER BY cId DESC";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Course>(Course.class), tea.getTeaNum());
	}

	public Course teaFindCourseByCid(String cId) throws SQLException {
		String sql = "select * from course where cId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Course>(Course.class), cId);
	}

	public void addTeaCourse(Course course) throws SQLException {
		String sql = "insert into course(cName,teaNum,info) values(?,?,?)";
		Object[] params = {course.getcName(),course.getTeaNum(), course.getInfo()};
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,params);
		
	}

	public void deleteCourseByTeacher(String cId) throws SQLException {
		String sql="delete from course where cId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,cId);
	}

}
