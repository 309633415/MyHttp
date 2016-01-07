package demoinfo.hibernate.relationship;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

import demoinfo.hibernate.pojo.UserVoGoods;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.PersonInform;
import demoinfo.hibernate.relationship.pojo.User;

@SuppressWarnings("serial")
public class RelationShipAction extends ActionSupport implements ServletRequestAware{
	
	private RelationShipService relationShipService;
	private User user;
	private Goods goods;
	private Person person;
	private UserVoGoods userVoGoods;
	private List<User> users;
	private List<Goods> goodses;
	private List<Person> personList;
	private List<PersonInform> personInformList;
	private List<UserVoGoods> userVoGoodsList;
	private String result;		//ajax返回的result节点，返回success
	private String personCode;		
	private HttpServletRequest request;
	/** 操作类型 */
	private String opreateType;
	
	public String relationshipDetail(){
		return "success";
	}
	
	public String doDeletePerson(){
		relationShipService.deletePerson(personCode);
		return SUCCESS;
	}
	
	public String doPrepareUpdatePerson(){
		opreateType = "edit";
		person = relationShipService.getPerson(personCode);
		return SUCCESS;
	}
	
	public String doViewPerson(){
		opreateType = "view";
		person = relationShipService.getPerson(personCode);
		return SUCCESS;
	}
	
	public String doPrepareAddPerson(){
		opreateType = "add";
		return SUCCESS;
	}
	
	public String doUpdatePerson() {
		//下面这句配合从jsp传来的prpDperson.prpDpersonInform.id值，保证一对一关联时第二张表的值不为空，并且不是新增的
		person.getPersonInform().setPerson(person);
		relationShipService.updatePerson(person);
		return SUCCESS;
	}
	
	public String doAddPerson() {
		//下面这句配合从jsp传来的prpDperson.prpDpersonInform.id值，保证一对一关联时第二张表的值不为空，并且不是新增的
		person.getPersonInform().setPerson(person);
		relationShipService.addPerson(person);
		return SUCCESS;
	}
	
	public String doQueryLinkList(){
		users = relationShipService.findUserAll();
		goodses = relationShipService.findGoodsAll();
		userVoGoodsList = relationShipService.findUserVoGoodsList();
		return SUCCESS;
	}
	
	public String doOneToOneList(){
		personList = relationShipService.findPersonAll();
		personInformList = relationShipService.findPersonInformAll();
		return SUCCESS;
	}
	
	// 自定义查询页面，普通查询
	public String doCheckPersonCode(){
		String name = request.getParameter("name");
		Person person = relationShipService.getPerson(name);
		String flag;
		if(person !=null){
			flag="flase";
		}
		else{
			flag="true";
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("flag", flag);
		JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		this.result = json.toString();//给result赋值，传递给页面
		return SUCCESS;
	}
	
	// 自定义查询页面，普通查询
	public String doCommonQuery(){
		List<User> commonQueryList = relationShipService.findUserAll();
		//将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("commonQueryList", commonQueryList);
        JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
        this.result = json.toString();//给result赋值，传递给页面
		return SUCCESS;
	}
	
	// 自定义查询页面，条件查询
	public String doConditionQuery(){
		//获取数据
		String name = request.getParameter("name");
		List<User> conditionQueryList;
		if(name == null || "".equals(name))
			conditionQueryList = relationShipService.findUserAll();
		else{
			conditionQueryList = relationShipService.queryUsers(name);
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("conditionQueryList", conditionQueryList);
		JSONObject json = JSONObject.fromObject(map);
		this.result = json.toString();
		return SUCCESS;
	}
	
	// 自定义查询页面，原生SQL查询
	public String doOriginalQuery(){
		List<User> originalQueryList = relationShipService.doOriginalQuery();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("originalQueryList", originalQueryList);
		JSONObject json = JSONObject.fromObject(map);
		this.result = json.toString();
		return SUCCESS;
	}
	
	// 自定义查询页面，Criteria查询
	public String doCriteriaQuery(){
		//获取数据
		String temp = request.getParameter("userId");
		List<User> criteriaQueryList;
		if(temp == null || "".equals(temp))
			criteriaQueryList = relationShipService.findUserAll();
		else{
			int userId = Integer.parseInt(temp);
			criteriaQueryList = relationShipService.doCriteriaQuery(userId);
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("criteriaQueryList", criteriaQueryList);
		JSONObject json = JSONObject.fromObject(map);
		this.result = json.toString();
		return SUCCESS;
	}

	//get set
	public RelationShipService getRelationShipService() {
		return relationShipService;
	}

	public void setRelationShipService(RelationShipService relationShipService) {
		this.relationShipService = relationShipService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<Goods> getGoodses() {
		return goodses;
	}

	public void setGoodses(List<Goods> goodses) {
		this.goodses = goodses;
	}

	public UserVoGoods getUserVoGoods() {
		return userVoGoods;
	}

	public void setUserVoGoods(UserVoGoods userVoGoods) {
		this.userVoGoods = userVoGoods;
	}
	
	public List<UserVoGoods> getUserVoGoodsList() {
		return userVoGoodsList;
	}
	
	public void setUserVoGoodsList(List<UserVoGoods> userVoGoodsList) {
		this.userVoGoodsList = userVoGoodsList;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}

	public String getOpreateType() {
		return opreateType;
	}

	public void setOpreateType(String opreateType) {
		this.opreateType = opreateType;
	}

	public List<Person> getPersonList() {
		return personList;
	}

	public void setPersonList(List<Person> personList) {
		this.personList = personList;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public String getPersonCode() {
		return personCode;
	}
	public void setPersonCode(String personCode) {
		this.personCode = personCode;
	}

	public List<PersonInform> getPersonInformList() {
		return personInformList;
	}

	public void setPersonInformList(List<PersonInform> personInformList) {
		this.personInformList = personInformList;
	}
	
	
}
