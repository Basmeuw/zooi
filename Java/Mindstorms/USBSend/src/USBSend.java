import java.awt.event.KeyEvent;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Scanner;

import lejos.nxt.Button;
import lejos.pc.comm.NXTCommLogListener;
import lejos.pc.comm.NXTConnector;
 
/**
 * This is a PC sample. It connects to the NXT, and then
 * sends an integer and waits for a reply, 100 times.
 * 
 * Compile this program with javac (not nxjc), and run it 
 * with java.
 * 
 * You need pccomm.jar on the CLASSPATH and the jfantom.dll
 * DLL or liblibnxt.so shared library on the Java library path.
 * 
 * Run the program by:
 * 
 *   java USBSend
 * 
 * Your NXT should be running a sample such as USBReceive. 
 * 
 * @author Lawrie Griffiths
 *
 */
public class USBSend {	
	public static boolean isRunning = true;
	
	public static void main(String[] args) {

		NXTConnector conn = new NXTConnector();
		
		conn.addLogListener(new NXTCommLogListener(){

			public void logEvent(String message) {
				System.out.println("USBSend Log.listener: "+message);
				
			}

			public void logEvent(Throwable throwable) {
				System.out.println("USBSend Log.listener - stack trace: ");
				 throwable.printStackTrace();
				
			}
			
		} 
		);
		
		if(!conn.connectTo("usb://")) {
			System.err.println("No NXT found using USB");
			System.exit(1);
		}
		
		DataInputStream dis = new DataInputStream(conn.getInputStream());
		DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
		
		int data = 0;
		int data1 = 0;
		while(isRunning) {
			
			Scanner scan = new Scanner(System.in);
			data = scan.nextInt();
			data1 = scan.nextInt();
			try {
				dos.writeInt(data);
				dos.writeInt(data1);
				dos.flush();
				//System.out.println("Data sent");
			}catch(IOException e) {
				System.err.println("IO Exception writing bytes");
			}

		}
		
		try {
			dis.close();
			dos.close();
			System.out.println("Closed data streams");
		}catch(IOException e) {
			System.err.println("IO Exception while closing the data streams");
		}
		
		try {
			conn.close();
			System.out.println("Closed connection");
		}catch(IOException e) {
			System.err.println("IO Exception while closing the connection");
		}
	}
	
	public void keyReleased(KeyEvent e) {
		if(e.getKeyCode() == KeyEvent.VK_ESCAPE) {
			isRunning = false;
		}
	}
}