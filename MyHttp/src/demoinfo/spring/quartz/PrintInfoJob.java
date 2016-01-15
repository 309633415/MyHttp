package demoinfo.spring.quartz;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import demoinfo.spring.quartz.IPrintInfoService;

public class PrintInfoJob extends QuartzJobBean{
	
	private IPrintInfoService prinfInfoService = null;
	public IPrintInfoService getPrinfInfoService() {
		return prinfInfoService;
	}
	public void setPrinfInfoService(IPrintInfoService prinfInfoService) {
		this.prinfInfoService = prinfInfoService;
	}
	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException {
		this.prinfInfoService.print();
		
	}
}
