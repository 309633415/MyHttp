package demoinfo.struts2.json;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;   
/**
 * JSON Action
 */
public class JsonAction extends ActionSupport {
	private static final long serialVersionUID = 4530102843836746666L;
	private final Logger logger = Logger.getLogger(this.getClass());
	String jsonString;
	public String writeJson(){
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("key","first put is key");
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8"); //设置编码类型UTF-8
			jsonString="var flag = "+jsonObject.toString();
			response.getWriter().write(jsonString); //向前台写JSON
			response.getWriter().flush();
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			throw new IllegalStateException(e);
		}
		return null;
	}
}
