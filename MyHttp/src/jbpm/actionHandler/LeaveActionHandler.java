package jbpm.actionHandler;

import org.jbpm.graph.def.ActionHandler;
import org.jbpm.graph.exe.ExecutionContext;

public class LeaveActionHandler implements ActionHandler {

	/**
	 * 流程在跳转的时候所要执行的Action，必须实现actionHandler接口
	 * <transition to="" name="">
	 *   <action name="">
	 *      <class="" ><action>
	 *   </action>
	 * </transition>
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void execute(ExecutionContext executionContext) throws Exception {
		// TODO Auto-generated method stub
		//在这里添加流程跳转时所要执行的业务代码
		executionContext.getTaskInstance();//这样可以取得任务实例
        System.out.println("now 执行了actionHandler方法");
        //node节点不用人工干预
	}

}
