package demoinfo.hibernate.relationship.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity  
@Table(name="hibernate_relationship_person")  
public class Person implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	private String personCode;
	private String personName;
	private PersonInform personInform;

	@Id
	@Column(name="personCode",length=20,nullable=false)
	public String getPersonCode() {
		return personCode;
	}
	public void setPersonCode(String personCode) {
		this.personCode = personCode;
	}

	@Column(name="personName",length=15,nullable=false)
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}

	//指定了OneToOne的关联关系，mappedBy同样指定由对方来进行维护关联关系;
	//CascadeType.ALL包含所有；fetch=FetchType.LAZY懒加载
	@OneToOne(mappedBy="person",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public PersonInform getPersonInform() {
		return personInform;
	}
	public void setPersonInform(PersonInform personInform) {
		this.personInform = personInform;
	}

}
