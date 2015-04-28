package com.felcx.tool;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class FelcxTool {

	public FelcxTool() {
		// properties=new Properties();
		String a="";
		//a.sp
	}

	public static String getProperty(String key) {
		try {
			Properties properties=new Properties();
			String defultPath = "/";
			String defultProperties = "felcx.properties";
			String path = defultPath + defultProperties;
			properties.load(new FileInputStream(path));
			return properties.getProperty(key);
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		//return properties.getProperty(key);
	
	}
}
