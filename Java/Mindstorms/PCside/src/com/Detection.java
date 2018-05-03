package com;




import lejos.pc.*;
import lejos.pc.comm.NXTComm;
import lejos.pc.comm.NXTCommException;
import lejos.pc.comm.NXTCommFactory;
import lejos.pc.comm.NXTInfo;

import java.io.*;

public class Detection{
	public static void main (java.lang.String[] args){
		
		int n = 0;
		
		try {
			NXTComm nxtComm = NXTCommFactory.createNXTComm(NXTCommFactory.USB);
			NXTInfo[] nxtinfo = nxtComm.search(null);
			nxtComm.open(nxtinfo[0]);
			DataInputStream dis = new DataInputStream(nxtComm.getInputStream());
			n = dis.readInt();
		} catch (NXTCommException e2) {
			e2.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println(n);
	}
}