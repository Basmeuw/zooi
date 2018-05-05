import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;

import com.github.sarxos.webcam.Webcam;
import com.github.sarxos.webcam.WebcamPanel;
import com.github.sarxos.webcam.WebcamResolution;


public class WebcamInput {

	public static void main(String[] args) throws IOException {
		
		// Resolution
		int w = 640;
		int h = 360;
		
		boolean isRunning = true;
		
		Webcam webcam;
		ColorTracker tracker = new ColorTracker(w, h);

		Dimension[] nonStandardResolutions = new Dimension[] {
				new Dimension(w, h)
		};
		
		webcam = Webcam.getDefault();
		webcam.setCustomViewSizes(nonStandardResolutions);
		webcam.setViewSize(new Dimension(w, h));
		webcam.open();
		
		
//		Live Feed from the webcam
		WebcamPanel panel = new WebcamPanel(webcam);
		panel.setFPSDisplayed(true);
		panel.setDisplayDebugInfo(true);
		panel.setImageSizeDisplayed(true);
		panel.setMirrored(true);
		
		JFrame window = new JFrame("Webcam");
		window.add(panel);
		window.setResizable(true);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.pack();
		window.setVisible(true);
		
		panel.addMouseListener(new MouseAdapter() {

			@Override
			public void mousePressed(MouseEvent e){
				System.out.println(e.getX()+ ", " + e.getY());
				
				//Set the trackcolor
				BufferedImage image = webcam.getImage();
				FastRGB img = new FastRGB(image);
				tracker.tc = img.getRGB(e.getX(), e.getY());
				
			}
		});
		
		while(isRunning) {
			BufferedImage image = webcam.getImage();
			FastRGB img = new FastRGB(image);
			
			Vector closestPixel = tracker.track(image);
			
			System.out.println(closestPixel.x + ", " + closestPixel.y);
		}
		webcam.close();
	}
}




