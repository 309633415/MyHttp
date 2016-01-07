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
   <h3>֪ʶ׼��</h3>
   <div id="circle"> 
	<span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
	<span class="bg"> 
&nbsp;&nbsp;Hibernate����ҪĿ�ľ�����Java����Ա��������������ʹ�ö�����˼ά���������ݿ⡣����,һЩ���ݿ��Ĺ�ϵ����Ӧ�ÿ���ͨ��hibernateʵ��,���������ݿ������ǳ��õ����������ϵ,����һЩ��������й�ϵ������,������������Ϣ��ɾ��,�����������ϢҲҪɾ���ȵ�,����,Hibernateͬ��Ӧ��ʵ������ӳ���ϵ��
	</span> 
		<span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
</div> 
   <h3>��Դ׼��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg"> 
 1:jar�����ص�ַ��<a href="http://struts.apache.org/download.cgi" target="_blank">struts2 jar��</a>
 <a href="http://download.csdn.net/detail/jiashubing/9381656" target="_blank">JSON���ϼ�</a>������commons-beanutils.jar,commons-collections.jar,commons-lang-2.1.jar,commons-logging-1.0.4.jar,ezmorph-1.0.2.jar,json-lib-2.1.jar��
   </span>
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>ʾ��</h3>
   <span class="include"> 
		<strong class="s1">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s5">&nbsp;</strong> 
	</span> 
   <span class="bg">
&nbsp;&nbsp;һ��һ����[OneToOne] </br>
&nbsp;&nbsp;һ��һ��ϵ���ﶨ����һ��Person�����Լ�һ��PersonInform����</br>
&nbsp;&nbsp;Person�ࣺ</br>
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

	//ָ����OneToOne�Ĺ�����ϵ��mappedByͬ��ָ���ɶԷ�������ά��������ϵ;
	//CascadeType.ALL�������У�fetch=FetchType.LAZY������
	@OneToOne(mappedBy="person",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public PersonInform getPersonInform() {
		return personInform;
	}
	public void setPersonInform(PersonInform personInform) {
		this.personInform = personInform;
	}

}
</pre>
&nbsp;&nbsp;PersonInform�ࣺ</br>
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
	// OneToOneָ����һ��һ�Ĺ�����ϵ��һ��һ�����ָ��һ����ά��ӳ���ϵ������ѡ��PersonInform������ά�� 
	@OneToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	@JoinColumn(name="personCode",unique=true,nullable=false)		//ָ�����������personCode
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
}  
</pre>

&nbsp;&nbsp;ע��:���жϵ�����˭ά��������ϵʱ������ͨ���鿴������ĸ�ʵ���ඨ����������ĸ���͸���ά��������ϵ��</br>

 
   </span>
   һ��һ����[oneToOne] </br>
һ��һ��ϵ���ﶨ����һ��Person�����Լ�һ��IDCard����</br>
Person�ࣺ</br>
   <pre  name="code" class="java">
@Entity
@Table(name="t_person")
public class Person
{
    private int id;
    private String name;
    private IDCard card;
    
    @OneToOne(mappedBy="person")����--->����ָ����OneToOne�Ĺ�����ϵ��mappedByͬ��ָ���ɶԷ�������ά��������ϵ
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
IDCard�ࣺ</br>
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
    @OneToOne����--->����OnetoOneָ����һ��һ�Ĺ�����ϵ��һ��һ�����ָ��һ����ά��ӳ���ϵ������ѡ��IDCard������ά��
    @JoinColumn(name="pid")����--->����ָ����������� pid
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

ע��:���жϵ�����˭ά��������ϵʱ������ͨ���鿴������ĸ�ʵ���ඨ����������ĸ���͸���ά��������ϵ��</br>
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

һ�Զ�[OneToMany]�Ͷ��һ[ManyToOne] </br>
�������Ƕ���������ʵ���࣬һ����ClassRoom��һ����Student����������һ�Զ�Ĺ�����ϵ��</br>
ClassRoom�ࣺ	</br>

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

    @OneToMany(mappedBy="room")����--->����OneToManyָ����һ�Զ�Ĺ�ϵ��mappedBy="room"ָ�����ɶ����һ����ά��������ϵ��mappedByָ���Ƕ��һ����1����һ�������������ԣ�(ע�⣺���û��ָ����˭��ά��������ϵ����ϵͳ������Ǵ���һ���м��)
    @LazyCollection(LazyCollectionOption.EXTRA)����--->����LazyCollection�������ó�EXTRAָ���˵������ѯ���ݵĸ���ʱ��ֻ�ᷢ��һ�� count(*)����䣬�������
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

Student�ࣺ</br>
<pre  name="code" class="java">
@Entity
@Table(name="t_student")
public class Student
{
    private int id;
    private String name;
    private int age;
    private ClassRoom room;
    
    @ManyToOne(fetch=FetchType.LAZY)����---> ManyToOneָ���˶��һ�Ĺ�ϵ��fetch=FetchType.LAZY���Ա�ʾ�ڶ����һ��ͨ���ӳټ��صķ�ʽ���ض���(Ĭ�ϲ����ӳټ���)
    @JoinColumn(name="rid")����--->����ͨ�� JoinColumn ��name����ָ������������� rid��(ע�⣺������ǲ�ͨ��JoinColum��ָ����������ƣ�ϵͳ�����������һ������)
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
��Զ�[ManyToMany]</br>
��Զ�����ͨ�������ִ���ʽ��һ����ͨ������һ���м��Ȼ������һһ�����һ����ά��������ϵ����һ�־��ǽ���Զ��ֳ�����һ�Զ�Ĺ�����ϵ</br>
1.ͨ���м������һһ�����һ����ά��������ϵ</br>
Teacher�ࣺ</br>
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
    @ManyToMany(mappedBy="teachers")����--->������ʾ��Course��һ��������ά��
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
Course�ࣺ</br>
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
    @ManyToMany������--->��ManyToManyָ����Զ�Ĺ�����ϵ
    @JoinTable(name="t_teacher_course", joinColumns={ @JoinColumn(name="cid")}, 
    inverseJoinColumns={ @JoinColumn(name = "tid") })����--->������Ϊ��Զ�֮���ͨ��һ���м����ά������ֱ�ӵĹ�ϵ������ͨ�� JoinTable ���ע����������name����ָ�����м������֣�JoinColumns��һ�� @JoinColumn���͵����飬��ʾ�������ⷽ�ڶԷ��е�������ƣ��ҷ���Course�������ڶԷ���������ƾ��� rid��inverseJoinColumnsҲ��һ�� @JoinColumn���͵����飬��ʾ���ǶԷ���������е�������ƣ��Է���Teacher���������ҷ���������ƾ��� tid
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
2.��Many-to-Many��ֳ�����One-to-Many��ӳ��(Admin��Role��AdminRole)</br>
Admin�ࣺ</br>
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
    @OneToMany(mappedBy="admin")����--->����OneToMany��������AdminRole����࣬��AdminRole�������ά�����һ�Ĺ�ϵ��mappedBy="admin"
    @LazyCollection(LazyCollectionOption.EXTRA)����
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
Role�ࣺ</br>
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
    @OneToMany(mappedBy="role")����--->����OneToManyָ������AdminRole�������ά�����һ�Ĺ�����ϵ��mappedBy="role"
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
AdminRole�ࣺ</br>
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
    @ManyToOne����--->����ManyToOne������Admin
    @JoinColumn(name="aid")����
    public Admin getAdmin()
    {
        return admin;
    }
    public void setAdmin(Admin admin)
    {
        this.admin = admin;
    }
    @ManyToOne����--->����
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
С����:ͨ��hibernate�����в��������ʱ�򣬲�����һ�Զࡢһ��һ���Ƕ�Զ࣬��ֻ��Ҫ��סһ�㣬���ĸ�ʵ��������������������ĸ�����ά����ϵ���ڱ�������ʱ�������ȱ������û��ά��������ϵ����һ�������ݣ��󱣴�ά���˹�����ϵ����һ�������ݣ��磺
<pre  name="code" class="java">
������������Person p = new Person();
            p.setName("xiaoluo");
            session.save(p);
            
            IDCard card = new IDCard();
            card.setNo("1111111111");
            card.setPerson(p);
            session.save(card);
</pre>
ע��fetch = FetchType.EAGER�����ѡ��LAZY��hibernate������������ر�session��������session�����⣩����ô�޷�������֮��ȡ����join�����ļ�¼������ʾsession���رա� 
   <span class="include"> 
		<strong class="s5">&nbsp;</strong> 
		<strong class="s4">&nbsp;</strong> 
		<strong class="s3">&nbsp;</strong> 
		<strong class="s2">&nbsp;</strong> 
		<strong class="s1">&nbsp;</strong> 
	</span> 
   <h3>�ĵ�</h3>

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