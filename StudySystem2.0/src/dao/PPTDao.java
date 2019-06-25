package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import domain.Course;
import domain.Doc;
import domain.PPT;
import domain.Vedio;
import utils.JDBCUtils;

public class PPTDao {

	public int findTotalRecords(Course course) throws SQLException {
		String sql = "SELECT COUNT(*) FROM ppt where cId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long) qr.query(sql, new ScalarHandler(),course.getcId());
		return num.intValue();
	}

	public List<PPT> findPPTsWithPageByTeacher(int startIndex, int pageSize, Course course) throws SQLException {
		String sql = "select * from ppt  where cId=? order by pptId limit ? , ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<PPT>(PPT.class),course.getcId(), startIndex, pageSize);
	}

	public void addPPT(PPT ppt, Course course) throws SQLException {
		String sql="INSERT INTO ppt VALUES(NULL , ? ,  ? , ? , ? ,  ? ,  ? )";
		Object[] params= {ppt.getPptName(),course.getcId(),ppt.getPptAttachment(),ppt.getAttachmentOldName(),ppt.getUploadTime(),ppt.getDel()};
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,params);
	}

	public void deletePPTByTeacher(String pId) throws SQLException {
		String sql="delete from ppt where pptId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,pId);
	}

	public PPT findPPTByVid(String pId) throws SQLException {
		String sql="select * from ppt where pptId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<PPT>(PPT.class),pId);
	}

}
