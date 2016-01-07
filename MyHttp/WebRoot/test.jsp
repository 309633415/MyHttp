<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	response.setHeader("Pragma","no-cache");     
	response.setHeader("Cache-Control","no-cache");    
	response.setDateHeader("Expires",0);
	request.setCharacterEncoding("GBK");
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/circle.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/SyntaxHighlighter.css">
	
<style type="text/css">
body{
background-color:lightcyan;
}
h3{
color:white;
background: cadetblue;
}
</style>
  </head>
  <body>
   <h3>知识准备</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
&nbsp;&nbsp;Hibernate的主要目的就是是Java程序员可以随心所欲的使用对象编程思维来操纵数据库。所以,一些数据库表的关系我们应该可以通过hibernate实现,比如在数据库中我们常用到的主外键关系,还有一些跟主外键有关系的设置,比如主键的信息被删除,外键关联的信息也要删除等等,所以,Hibernate同样应该实现这种映射关系。
	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>资源准备</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar包下载地址：<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar包</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON包合集</a>（包括commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar）
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>示例</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
&nbsp;&nbsp;一对一单向[OneToOne] </br>
&nbsp;&nbsp;一对一关系这里定义了一个Person对象以及一个PersonInform对象</br>
&nbsp;&nbsp;Person类：</br>
   <pre  name="code" class="java">
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
</pre>
&nbsp;&nbsp;PersonInform类：</br>
<pre  name="code" class="java">
@Entity  
@Table(name="hibernate_relationship_personinform")
public class PersonInform   implements java.io.Serializable
{  
	private static final long serialVersionUID = 1L;
	private int id;
	private int age;
	private String mailBox;  
	private Person person;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 
	@Column(name="Id",length=50,nullable=false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="age",length=10)
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Column(name="mailBox",length=30)
	public String getMailBox() {
		return mailBox;
	}
	public void setMailBox(String mailBox) {
		this.mailBox = mailBox;
	}
	// OneToOne指定了一对一的关联关系，一对一中随便指定一方来维护映射关系，这里选择PersonInform来进行维护 
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	@JoinColumn(name="personCode",unique=true,nullable=false)		//指定外键的名字personCode
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
}  
</pre>

&nbsp;&nbsp;注意:在判断到底是谁维护关联关系时，可以通过查看外键，哪个实体类定义了外键，哪个类就负责维护关联关系。</br>

 
   </span>
   一对一单向[oneToOne] </br>
一对一关系这里定义了一个Person对象以及一个IDCard对象</br>
Person类：</br>
   <pre  name="code" class="java">
@Entity
@Table(name="t_person")
public class Person
{
    private int id;
    private String name;
    private IDCard card;
    
    @OneToOne(mappedBy="person")　　--->　　指定了OneToOne的关联关系，mappedBy同样指定由对方来进行维护关联关系
    public IDCard getCard()
    {
        return card;
    }
    public void setCard(IDCard card)
    {
        this.card = card;
    }
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    
}

</pre>
IDCard类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_id_card")
public class IDCard
{
    private int id;
    private String no;
    private Person person;
    
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getNo()
    {
        return no;
    }
    public void setNo(String no)
    {
        this.no = no;
    }
    @OneToOne　　--->　　OnetoOne指定了一对一的关联关系，一对一中随便指定一方来维护映射关系，这里选择IDCard来进行维护
    @JoinColumn(name="pid")　　--->　　指定外键的名字 pid
    public Person getPerson()
    {
        return person;
    }
    public void setPerson(Person person)
    {
        this.person = person;
    }
}

</pre>

注意:在判断到底是谁维护关联关系时，可以通过查看外键，哪个实体类定义了外键，哪个类就负责维护关联关系。</br>
   <pre  name="code" class="java">
public class User {

	private Long groupID;

	@Id
	@Column(name = "GROUP_ID", length=1)
	public Long getGroupID() {
		return groupID;
	}

	public void setGroupID(Long groupID) {
		this.groupID = groupID;
	}

}
</pre>

一对多[OneToMany]和多对一[ManyToOne] </br>
这里我们定义了两个实体类，一个是ClassRoom，一个是Student，这两者是一对多的关联关系。</br>
ClassRoom类：	</br>

<pre  name="code" class="java">
@Entity
@Table(name="t_classroom")
public class ClassRoom
{
    private int id;
    private String className;
    private Set<Student> students;
    
    public ClassRoom()
    {
        students = new HashSet<Student>();
    }
    
    public void addStudent(Student student)
    {
        students.add(student);
    }

    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getClassName()
    {
        return className;
    }

    public void setClassName(String className)
    {
        this.className = className;
    }

    @OneToMany(mappedBy="room")　　--->　　OneToMany指定了一对多的关系，mappedBy="room"指定了由多的那一方来维护关联关系，mappedBy指的是多的一方对1的这一方的依赖的属性，(注意：如果没有指定由谁来维护关联关系，则系统会给我们创建一张中间表)
    @LazyCollection(LazyCollectionOption.EXTRA)　　--->　　LazyCollection属性设置成EXTRA指定了当如果查询数据的个数时候，只会发出一条 count(*)的语句，提高性能
    public Set<Student> getStudents()
    {
        return students;
    }

    public void setStudents(Set<Student> students)
    {
        this.students = students;
    }
    
}
</pre>

Student类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_student")
public class Student
{
    private int id;
    private String name;
    private int age;
    private ClassRoom room;
    
    @ManyToOne(fetch=FetchType.LAZY)　　---> ManyToOne指定了多对一的关系，fetch=FetchType.LAZY属性表示在多的那一方通过延迟加载的方式加载对象(默认不是延迟加载)
    @JoinColumn(name="rid")　　--->　　通过 JoinColumn 的name属性指定了外键的名称 rid　(注意：如果我们不通过JoinColum来指定外键的名称，系统会给我们声明一个名称)
    public ClassRoom getRoom()
    {
        return room;
    }
    public void setRoom(ClassRoom room)
    {
        this.room = room;
    }
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public int getAge()
    {
        return age;
    }
    public void setAge(int age)
    {
        this.age = age;
    }
    
}
</pre>
多对多[ManyToMany]</br>
多对多这里通常有两种处理方式，一种是通过建立一张中间表，然后由任一一个多的一方来维护关联关系，另一种就是将多对多拆分成两个一对多的关联关系</br>
1.通过中间表由任一一个多的一方来维护关联关系</br>
Teacher类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_teacher")
public class Teacher
{
    private int id;
    private String name;
    private Set<Course> courses;
    
    public Teacher()
    {
        courses = new HashSet<Course>();
    }
    public void addCourse(Course course)
    {
        courses.add(course);
    }
    
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    @ManyToMany(mappedBy="teachers")　　--->　　表示由Course那一方来进行维护
    public Set<Course> getCourses()
    {
        return courses;
    }
    public void setCourses(Set<Course> courses)
    {
        this.courses = courses;
    }
    
}
</pre>
Course类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_course")
public class Course
{
    private int id;
    private String name;
    private Set<Teacher> teachers;
    
    public Course()
    {
        teachers = new HashSet<Teacher>();
    }
    public void addTeacher(Teacher teacher)
    {
        teachers.add(teacher);
    }
    @ManyToMany　　　--->　ManyToMany指定多对多的关联关系
    @JoinTable(name="t_teacher_course", joinColumns={ @JoinColumn(name="cid")}, 
    inverseJoinColumns={ @JoinColumn(name = "tid") })　　--->　　因为多对多之间会通过一张中间表来维护两表直接的关系，所以通过 JoinTable 这个注解来声明，name就是指定了中间表的名字，JoinColumns是一个 @JoinColumn类型的数组，表示的是我这方在对方中的外键名称，我方是Course，所以在对方外键的名称就是 rid，inverseJoinColumns也是一个 @JoinColumn类型的数组，表示的是对方在我这放中的外键名称，对方是Teacher，所以在我方外键的名称就是 tid
    public Set<Teacher> getTeachers()
    {
        return teachers;
    }

    public void setTeachers(Set<Teacher> teachers)
    {
        this.teachers = teachers;
    }

    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

}
</pre>
2.将Many-to-Many拆分成两个One-to-Many的映射(Admin、Role、AdminRole)</br>
Admin类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_admin")
public class Admin
{
    private int id;
    private String name;
    private Set<AdminRole> ars;
    public Admin()
    {
        ars = new HashSet<AdminRole>();
    }
    public void add(AdminRole ar)
    {
        ars.add(ar);
    }
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    @OneToMany(mappedBy="admin")　　--->　　OneToMany关联到了AdminRole这个类，由AdminRole这个类来维护多对一的关系，mappedBy="admin"
    @LazyCollection(LazyCollectionOption.EXTRA)　　
    public Set<AdminRole> getArs()
    {
        return ars;
    }
    public void setArs(Set<AdminRole> ars)
    {
        this.ars = ars;
    }
}
</pre>
Role类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_role")
public class Role
{
    private int id;
    private String name;
    private Set<AdminRole> ars;
    public Role()
    {
        ars = new HashSet<AdminRole>();
    }
    public void add(AdminRole ar)
    {
        ars.add(ar);
    }
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    @OneToMany(mappedBy="role")　　--->　　OneToMany指定了由AdminRole这个类来维护多对一的关联关系，mappedBy="role"
    @LazyCollection(LazyCollectionOption.EXTRA)
    public Set<AdminRole> getArs()
    {
        return ars;
    }
    public void setArs(Set<AdminRole> ars)
    {
        this.ars = ars;
    }
}
</pre>
AdminRole类：</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_admin_role")
public class AdminRole
{
    private int id;
    private String name;
    private Admin admin;
    private Role role;
    @Id
    @GeneratedValue
    public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id = id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    @ManyToOne　　--->　　ManyToOne关联到Admin
    @JoinColumn(name="aid")　　
    public Admin getAdmin()
    {
        return admin;
    }
    public void setAdmin(Admin admin)
    {
        this.admin = admin;
    }
    @ManyToOne　　--->　　
    @JoinColumn(name="rid")
    public Role getRole()
    {
        return role;
    }
    public void setRole(Role role)
    {
        this.role = role;
    }
}
</pre>
小技巧:通过hibernate来进行插入操作的时候，不管是一对多、一对一还是多对多，都只需要记住一点，在哪个实体类声明了外键，就由哪个类来维护关系，在保存数据时，总是先保存的是没有维护关联关系的那一方的数据，后保存维护了关联关系的那一方的数据，如：
<pre  name="code" class="java">
　　　　　　Person p = new Person();
            p.setName("xiaoluo");
            session.save(p);
            
            IDCard card = new IDCard();
            card.setNo("1111111111");
            card.setPerson(p);
            session.save(card);
</pre>
注意fetch = FetchType.EAGER，如果选择LAZY，hibernate在事物结束后会关闭session（好像是session的问题），那么无法在事物之外取到被join出来的记录，会提示session被关闭。 
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>文档</h3>

<script language="javascript" src="<%=basePath%>/js/shCore.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCSharp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPhp.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJScript.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushJava.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushVb.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushSql.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushXml.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushDelphi.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushPython.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushRuby.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCss.js"></script> 
<script language="javascript" src="<%=basePath%>/js/shBrushCpp.js"></script> 
<script language="javascript"> 
dp.SyntaxHighlighter.HighlightAll('code'); 
</script> 
  </body>
</html>