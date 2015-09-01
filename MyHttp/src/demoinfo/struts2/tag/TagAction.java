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
    String name;
    Date birthday;
    String bio;
	List friends;
    boolean legalAge;
    String state;
    String region;
    File picture;
    String pictureContentType;
    String pictureFileName;
    String favouriteLanguage;
    String favouriteVehicalType = "MotorcycleKey";
    String favouriteVehicalSpecific = "YamahaKey";
    
  
	List leftSideCartoonCharacters;
    List rightSideCartoonCharacters;
    
    List favouriteLanguages = new ArrayList();
    List vehicalTypeList = new ArrayList();
    Map vehicalSpecificMap = new HashMap();
    
    String thoughts;
    
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
        return SUCCESS;
    }

    /**//*  Getters and Setters  */
           
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
}