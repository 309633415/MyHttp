package demoinfo.spring.aop;

public class DukePerformer implements  Performer{
    private String name;  
    public void setName(String name)  {  
        this.name=name;  
    }  
    public String getName()  {  
        return this.name;  
    }  
    public void perform() {  
        System.out.println(this.name+" 开始演唱歌曲。");  
    }  
} 
