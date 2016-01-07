package demoinfo.hibernate.relationship.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity  
@Table(name="hibernate_relationship_student")  
public class Student  {  
    private int stuId; 
    private String stuName; 
    private int age; 
    private ClassRoom classRoom;
    
    @Id
	@Column(name="Id",length=50,nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getStuId() {
		return stuId;
	}
	public void setStuId(int stuId) {
		this.stuId = stuId;
	}
	@Column(name="studentName")
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	@Column(name="age")
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	/* ManyToOne指定了多对一的关系，fetch=FetchType.LAZY属性表示在多的那一方通过延迟加载的方式加载对象(默认不是延迟加载)*/
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="roomId")/*通过 JoinColumn 的name属性指定了外键的名称 roomId(注意：如果我们不通过JoinColum来指定外键的名称，系统会给我们声明一个名称)*/
	public ClassRoom getClassRoom() {
		return classRoom;
	}
	public void setClassRoom(ClassRoom classRoom) {
		this.classRoom = classRoom;
	}
	
}  
