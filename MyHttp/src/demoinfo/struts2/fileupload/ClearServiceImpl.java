package demoinfo.struts2.fileupload;

import java.io.File;
import java.io.InputStream;
import java.util.Properties;

public class ClearServiceImpl implements IClearService{

	public void clearImage() {
		Properties prop = new Properties();     
		try{
			//读取属性文件a.properties
			InputStream in = this.getClass().getClassLoader().getResourceAsStream("config.properties"); 
			prop.load(in);     ///加载属性列表
			//获取路径
			String path = prop.getProperty("localpath");
			in.close();
			String fileRoot = path+"MyHttp/strut/fileupload/image";
			//删除图片
			delFolder(fileRoot);
			System.out.println("执行了删除struts上传的图片的任务。");
		}
		catch(Exception e){
			e.printStackTrace();
		}

	}

	// 删除完文件后删除文件夹
	//	param folderPath 文件夹完整绝对路径
	public static void delFolder(String folderPath) {
		try {
			delAllFile(folderPath); // 删除完里面所有内容
			//不想删除文佳夹隐藏下面
			//			String filePath = folderPath;
			//			filePath = filePath.toString();
			//			java.io.File myFilePath = new java.io.File(filePath);
			//			myFilePath.delete(); // 删除空文件夹
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 删除指定文件夹下所有文件
	// param path 文件夹完整绝对路径
	public static boolean delAllFile(String path) {
		boolean flag = false;
		File file = new File(path);
		if (!file.exists()) {
			return flag;
		}
		if (!file.isDirectory()) {
			return flag;
		}
		String[] tempList = file.list();
		File temp = null;
		for (int i = 0; i < tempList.length; i++) {
			if (path.endsWith(File.separator)) {
				temp = new File(path + tempList[i]);
			} else {
				temp = new File(path + File.separator + tempList[i]);
			}
			if (temp.isFile()) {
				temp.delete();
			}
			if (temp.isDirectory()) {
				delAllFile(path + "/" + tempList[i]);// 先删除文件夹里面的文件
				//				delFolder(path + "/" + tempList[i]);// 再删除空文件夹
				flag = true;
			}
		}
		return flag;
	}

}
