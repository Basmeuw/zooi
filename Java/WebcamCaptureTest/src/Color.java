//Color class
public class Color {
	public int r, g, b, a;
	
	public Color(int r, int g, int b, int a) {
		this.r = r;
		this.g = g;
		this.b = b;
		this.a = a;
	}
	
	public void printColor() {
		System.out.println(this.r + ", " + this.g + ", " + this.b + ", " + this.a );
	}
}
