package demoinfo.webservice.xstream;

public class Person {

	private String name;
	private String sayHello;
	public Person(String name,String sayHello){
		this.name = name;
		this.sayHello = sayHello;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSayHello() {
		return sayHello;
	}
	public void setSayHello(String sayHello) {
		this.sayHello = sayHello;
	}
	

}
