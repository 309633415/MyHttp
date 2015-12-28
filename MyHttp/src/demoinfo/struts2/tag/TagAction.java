package demoinfo.struts2.tag;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ognl.OgnlValueStack;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.File;

/** 
 * 
 * @author Administrator
 *
 */
public class TagAction extends ActionSupport implements Validateable  {
	
    private static final long serialVersionUID = -94044809860988047L;        
    String name;		//姓名
    Date birthday;	//生日
    String bio;			//传记
    String film;			//电影
	List<String> friends;		//朋友
    boolean legalAge;	//是否成年
    String region;	//地区
    String state;			//地区下的某个小地区
    File picture;		//照片
    String pictureContentType;	//照片类型
    String pictureFileName;		//照片名字
    String favouriteLanguage;		//喜欢的语言
    String favouriteVehicalType = "MotorcycleKey";		//喜欢的汽车种类
    String favouriteVehicalSpecific = "YamahaKey";		//喜欢汽车种类中的某个品牌的汽车
    
  
	List leftSideCartoonCharacters;
    List rightSideCartoonCharacters;
    
    List favouriteLanguages = new ArrayList();
    List vehicalTypeList = new ArrayList();
    Map vehicalSpecificMap = new HashMap();
    
    String thoughts;
    
    /**
     * 构造函数添加下拉框选项 语言、地区、汽车
     */
    public TagAction()  {
        favouriteLanguages.add(new Language("EnglishKey", "English Language"));
        favouriteLanguages.add(new Language("FrenchKey", "French Language"));
        favouriteLanguages.add(new Language("SpanishKey", "Spanish Language"));
        
        VehicalType car = new VehicalType("CarKey", "Car");
        VehicalType motorcycle = new VehicalType("MotorcycleKey", "Motorcycle");
        vehicalTypeList.add(car);
        vehicalTypeList.add(motorcycle);
        
        List cars = new ArrayList();
        cars.add(new VehicalSpecific("MercedesKey", "Mercedes"));
        cars.add(new VehicalSpecific("HondaKey", "Honda"));
        cars.add(new VehicalSpecific("FordKey", "Ford"));
        
        List motorcycles = new ArrayList();
        motorcycles.add(new VehicalSpecific("SuzukiKey", "Suzuki"));
        motorcycles.add(new VehicalSpecific("YamahaKey", "Yamaha"));
        
        vehicalSpecificMap.put(car, cars);
        vehicalSpecificMap.put(motorcycle, motorcycles);
    }   
        
    public List getLeftSideCartoonCharacters()  {
        return leftSideCartoonCharacters;
    }
    public void setLeftSideCartoonCharacters(List leftSideCartoonCharacters)  {
        this.leftSideCartoonCharacters = leftSideCartoonCharacters;
    }
        
    public List getRightSideCartoonCharacters()  {
        return rightSideCartoonCharacters;
    }
    public void setRightSideCartoonCharacters(List rightSideCartoonCharacters)  {
        this.rightSideCartoonCharacters = rightSideCartoonCharacters;
    }
        
    public String getFavouriteVehicalType()  {
        return favouriteVehicalType;
    }
    
    public void setFavouriteVehicalType(String favouriteVehicalType)  {
        this.favouriteVehicalType = favouriteVehicalType;
    }
    
    public String getFavouriteVehicalSpecific()  {
        return favouriteVehicalSpecific;
    }
    
    public void setFavouriteVehicalSpecific(String favouriteVehicalSpecific)  {
        this.favouriteVehicalSpecific = favouriteVehicalSpecific;
    }
    
    public List getVehicalTypeList()  {
        return vehicalTypeList;
    }
    
    public List getVehicalSpecificList()  {
        OgnlValueStack stack = (OgnlValueStack) ServletActionContext.getValueStack(ServletActionContext.getRequest());
        Object vehicalType = stack.findValue("top");
        if (vehicalType != null && vehicalType instanceof VehicalType)  {
            List l = (List) vehicalSpecificMap.get(vehicalType);
            return l;
        }
        return Collections.EMPTY_LIST;
    }
    
    public List getFavouriteLanguages()  {
        return favouriteLanguages;
    }

    public String execute() throws Exception  {
        return "input";
    }

    public String doSubmit()  {
        return SUCCESS;
    }       
    
    // === inner class 
    public static class Language  {
        String description;
        String key;
        
        public Language(String key, String description)  {
            this.key = key;
            this.description = description;
        }
        
        public String getKey()  { 
            return key; 
        }
        public String getDescription()  { 
            return description; 
        }
        
    }    
    
    public static class VehicalType  {
        String key;
        String description;
        public VehicalType(String key, String description)  {
            this.key = key;
            this.description = description;
        }
        
        public String getKey()  { return this.key; }
        public String getDescription()  { return this.description; }
        
        public boolean equals(Object obj)  {
            if (! (obj instanceof VehicalType))  { 
                return false;
            }
            else  {
                return key.equals(((VehicalType)obj).getKey());
            }
        }
        
        public int hashCode()  {
            return key.hashCode();
        }
    }    
    
    public static class VehicalSpecific  {
        String key; 
        String description;
        public VehicalSpecific(String key, String description)  {
            this.key = key;
            this.description = description;
        }
        
        public String getKey()  { return this.key; }
        public String getDescription()  { return this.description; }
        
        public boolean equals(Object obj)  {
            if (! (obj instanceof VehicalSpecific))  {
                return false;
            }
            else  {
                return key.equals(((VehicalSpecific)obj).getKey());
            }
        }
        
        public int hashCode()  {
            return key.hashCode();
        }
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;


	}

	public List<String> getFriends() {
		return friends;
	}

	public void setFriends(List<String> friends) {
		this.friends = friends;
	}

	public boolean isLegalAge() {
		return legalAge;
	}

	public void setLegalAge(boolean legalAge) {
		this.legalAge = legalAge;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getFavouriteLanguage() {
		return favouriteLanguage;
	}

	public void setFavouriteLanguage(String favouriteLanguage) {
		this.favouriteLanguage = favouriteLanguage;
	}

	public Map getVehicalSpecificMap() {
		return vehicalSpecificMap;
	}

	public void setVehicalSpecificMap(Map vehicalSpecificMap) {
		this.vehicalSpecificMap = vehicalSpecificMap;
	}

	public String getThoughts() {
		return thoughts;
	}

	public void setThoughts(String thoughts) {
		this.thoughts = thoughts;
	}

	public void setFavouriteLanguages(List favouriteLanguages) {
		this.favouriteLanguages = favouriteLanguages;
	}

	public void setVehicalTypeList(List vehicalTypeList) {
		this.vehicalTypeList = vehicalTypeList;
	}

	public String getFilm() {
		return film;
	}

	public void setFilm(String film) {
		this.film = film;
	}
    
}