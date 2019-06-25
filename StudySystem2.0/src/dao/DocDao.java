package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import domain.Course;
import domain.Doc;
import domain.Vedio;
import utils.JDBCUtils;

public class DocDao {

	public int findTotalRecords(Course course) throws SQLException {
		String sql = "SELECT COUNT(*) FROM doc where cId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long) qr.query(sql, new ScalarHandler(),course.getcId());
		return num.intValue();
	}

	public List<Doc> findDocsWithPageByTeacher(int startIndex, int pageSize, Course course) throws SQLException {
		String sql = "select * from doc  where cId=? order by docId limit ? , ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Doc>(Doc.class),course.getcId(), startIndex, pageSize);
	}

	public void addDoc(Doc doc, Course course) throws SQLException {
		String sql="INSERT INTO doc VALUES(NULL , ? ,  ? ,  ? ,  ? ,  ? ,  ? )";
		Object[] params= {doc.getDocName(),course.getcId(),doc.getDocAttachment(),doc.getAttachmentOldName(),doc.getUploadTime(),doc.getDel()};
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,params);
	}

	public void deleteDocByTeacher(String dId) throws SQLException {
		String sql="delete from doc where docId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,dId);
	}

	public Doc findDocByVid(String dId) throws SQLException {
		String sql="select * from doc where docId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Doc>(Doc.class),dId);
	}

}
