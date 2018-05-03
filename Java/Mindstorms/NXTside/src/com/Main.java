package com;

import lejos.nxt.Button;
import lejos.nxt.Motor;
import lejos.nxt.LCD;
import lejos.util.Delay;

import java.io.*;
import lejos.nxt.comm.*;



public class Main {

	

	public static void main (java.lang.String[] args){
		
		NXTConnection connection = USB.waitForConnection();

		DataOutputStream dataOut = connection.openDataOutputStream();

		try{
			dataOut.writeInt(1234);
		}catch(IOException e){
			System.out.println("Write error: " + e);
		}
	}


}