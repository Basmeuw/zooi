import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;

import lejos.nxt.Button;
import lejos.nxt.LCD;
import lejos.nxt.Motor;
import lejos.nxt.comm.USB;
import lejos.nxt.comm.USBConnection;
import lejos.util.Delay;

public class USBReceive2 {

	public static void main(String[] args) throws IOException {

		boolean isRunning = true;
		
		LCD.drawString("Waiting for con", 0, 0);
		USBConnection conn = USB.waitForConnection();
		DataOutputStream dos = conn.openDataOutputStream();
		DataInputStream dis = conn.openDataInputStream();
		LCD.drawString("Connection established", 0, 0);
		
		
		Motor.B.setAcceleration(1000);
		Motor.A.setSpeed(45);
		int data = 0;
		int data1 = 0;
		for(int i = 0; i < 10000; i++) {
			Delay.msDelay(2);
			if(Button.ESCAPE.isDown()) {
				isRunning = false;
			}
			try {
				data = dis.readInt();
				data1 = dis.readInt();
			}catch(EOFException e){}
	
			LCD.drawInt(data, 8, 0, 1);
			LCD.drawInt(data1, 8, 0, 2);
			LCD.drawInt((10000*2)/1000, 8, 0, 8);
			Motor.A.rotateTo(data);
			Motor.B.rotateTo(data1);

		}
		dos.close();
		dis.close();
		conn.close();
		
		
	}

}
