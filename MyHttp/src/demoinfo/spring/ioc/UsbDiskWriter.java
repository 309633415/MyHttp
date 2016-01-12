package demoinfo.spring.ioc;

/**
 * USB类
 */
public class UsbDiskWriter implements IDeviceWriter {  
    public void saveToDevice() {  
        System.out.println("储存至移动硬盘…");  
    }  
} 
