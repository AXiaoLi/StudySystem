package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import domain.Course;
import domain.Vedio;
import utils.JDBCUtils;

public class VedioDao {
	
	public int findTotalRecords(Course course) throws SQLException {
		String sql = "SELECT COUNT(*) FROM vedio where cId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long) qr.query(sql, new ScalarHandler(),course.getcId());
		return num.intValue();		
	}

	public List<Vedio> findVediosWithPageByTeacher(int startIndex, int pageSize,Course course) throws SQLException {
		String sql = "select * from vedio  where cId=? order by vedioId limit ? , ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Vedio>(Vedio.class),course.getcId(), startIndex, pageSize);
		
	}

	public void addVedio(Vedio vedio,Course course) throws SQLException {
		String sql="INSERT INTO vedio VALUES(NULL , ? ,  ? , ? ,  ? ,  ? ,  ? ,  ? )";
		Object[] params= {vedio.getVedioName(),course.getcId(),vedio.getVedioPro(),vedio.getVedioAttachment(),vedio.getAttachmentOldName(),vedio.getUploadTime(),vedio.getDel()};
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,params);
		
	}

	public static void deleteVedioByTeacher(String vId) throws SQLException {
		String sql="delete from vedio where vedioId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,vId);
	}

	public Vedio findVedioByVid(String vId) throws SQLException {
		String sql="select * from vedio where vedioId=?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Vedio>(Vedio.class),vId);
	}

	

	

}
