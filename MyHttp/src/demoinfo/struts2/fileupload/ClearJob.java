package demoinfo.struts2.fileupload;

import org.quartz.JobExecutionContext;  
import org.quartz.JobExecutionException;  
import org.springframework.scheduling.quartz.QuartzJobBean;  
  
import demoinfo.struts2.fileupload.IClearService;  

public class ClearJob extends QuartzJobBean{  
    
  private IClearService clearService = null;  
  
  public IClearService getClearService() {
	return clearService;
}
public void setClearService(IClearService clearService) {
	this.clearService = clearService;
}
  @Override  
  protected void executeInternal(JobExecutionContext arg0)  
          throws JobExecutionException {  
	  	this.clearService.clearImage();  
  }  
}  
