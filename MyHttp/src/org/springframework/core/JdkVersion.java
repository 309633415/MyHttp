package org.springframework.core;

/**
 * 添加 低版本 spring 对 jdk1.8的支持
 * @author xin11
 *
 */
public class JdkVersion {
	public static final int JAVA_13 = 0;
	public static final int JAVA_14 = 1;
	public static final int JAVA_15 = 2;
	public static final int JAVA_16 = 3;
	public static final int JAVA_17 = 4;
	public static final int JAVA_18 = 5;
	private static final String javaVersion = System.getProperty("java.version");
	private static final int majorJavaVersion;

	public static String getJavaVersion() {
		return javaVersion;
	}

	public static int getMajorJavaVersion() {
		return majorJavaVersion;
	}

	@Deprecated
	public static boolean isAtLeastJava14() {
		return true;
	}

	@Deprecated
	public static boolean isAtLeastJava15() {
		return true;
	}

	@Deprecated
	public static boolean isAtLeastJava16() {
		return majorJavaVersion >= 3;
	}

	static {
		if (javaVersion.contains("1.8.")) {
			majorJavaVersion = 5;
		} else if (javaVersion.contains("1.7.")) {
			majorJavaVersion = 4;
		} else if (javaVersion.contains("1.6.")) {
			majorJavaVersion = 3;
		} else {
			majorJavaVersion = 2;
		}
	}
}
