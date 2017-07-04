package com.talentsprint.classes;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.MalformedURLException;
import java.net.URL; 
import java.net.URLConnection; 


public class SendRequestToJSP {
	
	public static void sendRequestTo(String str){
		InputStreamReader isr; 
		BufferedReader br; 
		String line; 
		URL url; 
		URLConnection connection;
		ObjectOutputStream output ; 
		ObjectInputStream input ; 
		try { 
			isr = new InputStreamReader(System.in); 
			br = new BufferedReader(isr); 
			line = br.readLine(); 
			url = new URL(str); 
			connection = url.openConnection(); 
			connection.setDoOutput(true); 
			output = new ObjectOutputStream(connection.getOutputStream()); 
			output.writeObject(line); 
			output.close(); 
			input = new ObjectInputStream(connection.getInputStream()); 
			input.readObject(); 
			input.close(); 
			//TODO do your stuff here 
			} catch(Exception ex) { 
			//TODO 
			} 
	}
}
