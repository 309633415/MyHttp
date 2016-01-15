package demoinfo.spring.quartz;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import demoinfo.spring.quartz.IPrintInfoService;

public class PrintInfoServiceImpl implements IPrintInfoService{

	public void print() {
		Calendar now = Calendar.getInstance();
		System.out.println("现在是北京时间：" + this.format(now.getTime()));
	}
	
	public String format(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	
}
