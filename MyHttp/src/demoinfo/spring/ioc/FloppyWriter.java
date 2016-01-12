package demoinfo.spring.ioc;

/**
 * 软盘类
 */
public class FloppyWriter implements IDeviceWriter {     
    public void saveToDevice() {     
        System.out.println("储存至软盘…");     
    }     
} 
