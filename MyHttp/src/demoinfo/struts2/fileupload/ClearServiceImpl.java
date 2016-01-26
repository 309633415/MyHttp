package demoinfo.struts2.fileupload;

import java.io.File;


import com.opensymphony.xwork2.ActionSupport;

public class ClearServiceImpl implements IClearService{

	public void clearImage() {
		String fileRoot = "D:/tomcat/apache-tomcat-7.0.57/webapps/MyHttp/strut/fileupload/image";
//		String fileRoot = ServletActionContext.getServletContext().getRealPath( "/strut/fileupload/image") ;
//		System.out.println(this.getClass().getClassLoader().getResource("/").getPath());
//		System.out.println(System.getProperty("user.dir"));
//		FileUploadAction f= new FileUploadAction();
//		System.out.println(FileUploadAction.sss);
		delFolder(fileRoot);
		System.out.println("deleted");
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
