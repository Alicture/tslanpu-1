package cn.tslanpu.test.exam.food.dao;


import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.jdbc.TxQueryRunner;
import cn.tslanpu.test.exam.food.domain.FoodExam1;

public class FoodExamDao1
{

	private QueryRunner qr = new TxQueryRunner();
	public void add(FoodExam1 foodex1) throws SQLException{
		String sql="insert into examfood(no,examedfood,examdw,exampepl,examdate,examedqy,examtype,d2no,d2cydnum,"
				+ "d2missionsource,d2missiontype,d2bcydwname,d2areatype,d2dwadress,d2legaldelegate,d2yearsail,d2zzcode,"
				+ "d2contact,d2tele,d2fax,d2mailcode,d2production,d2cpk,d2circulation,d2cother,d2food,d2cgtype,d2sttype,"
				+ "d2foodother,d2samplesource,d2sampleattr,d2sampletype,d2samplename,d2examtime,d2samplelogo,d2sampledatetype,"
				+ "d2samplesize,d2sampleno,d2bzq,d2zxwj,d2qualitylv,d2scxkcode,d2price,d2export,d2examedtime,d2backupno,d2samplext,"
				+ "d2samplepacktyp,d2productor,d2productoraddr,d2productorcontact,d2procell,d2samplestorage,d2storagetem,d2deadline,d2sampledist,"
				+ "d2samplemethod,d2examdwname,d2examaddr,d2examcontactor,d2examtele,d2examfax,d2exammail,d2remarks,d2cyview,d2scview,"
				+ "d2sampledate,d2samplepack)"
	+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params={foodex1.getNo(),foodex1.getExamedfood(),foodex1.getExamdw(),foodex1.getExampepl(),foodex1.getExamdate(),
				foodex1.getExamedqy(),foodex1.getExamtype(),foodex1.getD2no(),foodex1.getD2cydnum(),foodex1.getD2missionsource(),foodex1.getD2missiontype(),
				foodex1.getD2bcydwname(),foodex1.getD2areatype(),foodex1.getD2dwadress(),foodex1.getD2legaldelegate(),foodex1.getD2yearsail(),foodex1.getD2zzcode(),
				foodex1.getD2contact(),foodex1.getD2tele(),foodex1.getD2fax(),foodex1.getD2mailcode(),foodex1.getD2production(),foodex1.getD2cpk(),foodex1.getD2circulation(),
				foodex1.getD2cother(),foodex1.getD2food(),foodex1.getD2cgtype(),foodex1.getD2sttype(),foodex1.getD2foodother(),foodex1.getD2samplesource(),foodex1.getD2sampleattr(),
				foodex1.getD2sampletype(),foodex1.getD2samplename(),foodex1.getD2examtime(),foodex1.getD2samplelogo(),foodex1.getD2sampledatetype(),foodex1.getD2samplesize(),foodex1.getD2sampleno(),
				foodex1.getD2bzq(),foodex1.getD2zxwj(),foodex1.getD2qualitylv(),foodex1.getD2scxkcode(),foodex1.getD2price(),foodex1.getD2export(),foodex1.getD2examedtime(),foodex1.getD2backupno(),foodex1.getD2samplext(),
				foodex1.getD2samplepacktyp(),foodex1.getD2productor(),foodex1.getD2productoraddr(),foodex1.getD2productorcontact(),foodex1.getD2procell(),foodex1.getD2samplestorage(),
				foodex1.getD2storagetem(),foodex1.getD2deadline(),foodex1.getD2sampledist(),foodex1.getD2samplemethod(),foodex1.getD2examdwname(),foodex1.getD2examaddr(),foodex1.getD2examcontactor(),foodex1.getD2examtele(),
				foodex1.getD2examfax(),foodex1.getD2exammail(),foodex1.getD2remarks(),foodex1.getD2cyview(),foodex1.getD2scview(),foodex1.getD2sampledate(),foodex1.getD2samplepack()};
		qr.update(sql,params);
	}

}
