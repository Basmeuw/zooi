import java.awt.image.BufferedImage;

public class ColorTracker {
	
//	BufferedImage img;
//	FastRGB RGBimg;
//	Color currentColor;
//	Color trackColor;
	
	int w = 640;
	int h = 360;
	public Color tc = new Color(255, 0, 0, 255);
	
	public ColorTracker(int w, int h){
		this.w = w;
		this.h = h;
	}
	
	public Vector track(BufferedImage image) {
		FastRGB RGBimg = new FastRGB(image);
		
		int closestX = 0;
		int closestY = 0;
		float record = 1000;
		
		for (int x = 0; x < w; x++) {
			for(int y = 0; y < h; y++) {
				Color cc = RGBimg.getRGB(x, y);
				
				//3D distance function, Stelling van Pythagoras
				//abs((r2-r1)*(r2-r1) + (g2-g1)*(g2-g1) + (b2-b1)*(b2-b1))
				float d = (float) Math.abs((tc.r - cc.r)*(tc.r - cc.r) + (tc.g - cc.g)*(tc.g - cc.g) + (tc.b - cc.b)*(tc.b - cc.b));
				
				//Square it to make up for the removed square root in the distance function 
				if(d < record*record) {
					record = d;
					closestX = x;
					closestY = y;
				}	
			}
		}
		
		return new Vector(closestX, closestY);
	}
}
