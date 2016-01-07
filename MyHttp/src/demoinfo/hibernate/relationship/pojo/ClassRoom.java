package demoinfo.hibernate.relationship.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity  
@Table(name="hibernate_relationship_classroom")  
public class ClassRoom  
{  
    private int roomId;  
    private String roomName;  
    private List<Student> students=new ArrayList<Student>(0);
      
    @Id
    @Column(name="roomId",length=50,nullable=false)
    @GeneratedValue(strategy=GenerationType.AUTO)
    public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
  
	@Column(name="roomName")
    public String getRoomName() {  
        return roomName;  
    }  
  
    public void setRoomName(String roomName)  {  
        this.roomName = roomName;  
    }  
  
    /*OneToMany指定了一对多的关系，mappedBy="classRoom"指定了由多的那一方来维护关联关系，mappedBy指的是多的一方对1的这一方的依赖的属性，(注意：如果没有指定由谁来维护关联关系，则系统会给我们创建一张中间表)*/
    @OneToMany(mappedBy="classRoom",cascade=CascadeType.ALL)	
    @LazyCollection(LazyCollectionOption.FALSE) /*如果LazyCollection属性设置成EXTRA指定了当如果查询数据的个数时候，只会发出一条 count(*)的语句，提高性能*/
    public List<Student> getStudents() {
    	return students;
    }  

	public void setStudents(List<Student> students) {
		this.students = students;
	}

}  