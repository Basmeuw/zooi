import lejos.nxt.Motor;

public class ResetNXT {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hoi");
		Motor.A.setSpeed(45);
		Motor.A.rotateTo(45);
		Motor.A.rotateTo(-45);
		Motor.B.rotateTo(20);
		Motor.B.rotateTo(-20);
	}

}
