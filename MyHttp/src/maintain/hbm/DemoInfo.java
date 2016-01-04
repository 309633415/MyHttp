package maintain.hbm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "demoinfo")
public class DemoInfo implements java.io.Serializable {
	private static final long serialVersionUID = 1L;

	private Integer id;
	
	/** Title */
	private String title;

	/** 知识准备 */
	private String knowLedageReady;

	/** 资源准备 */
	private String resourceReady;

	/** 示例 */
	private String example;

	/** 备注 */
	private String remark;

	public DemoInfo() {
	}

	@Id  
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name="id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	/**       
	 * RegistNo
	 */
	
	@Column(name = "title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String Title) {
		this.title = Title;
	}

	/**       
	 * 知识准备
	 */
	@Column(name = "KnowLedgeReady")
	public String getKnowLedageReady() {
		return knowLedageReady;
	}

	public void setKnowLedageReady(String KnowLedageReady) {
		this.knowLedageReady = KnowLedageReady;
	}


	/**       
	 * 资源准备
	 */

	@Column(name = "resourceReady")
	public String getResourceReady() {
		return this.resourceReady;
	}

	public void setResourceReady(String ResourceReady) {
		this.resourceReady = ResourceReady;
	}

	
	
	/**       
	 * 示例
	 */
	@Column(name = "example")
	public String getExample() {
		return example;
	}

	public void setExample(String Example) {
		this.example = Example;
	}

	

	/**       
	 * 备注
	 */

	@Column(name = "remark")
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String Remark) {
		this.remark = Remark;
	}

}