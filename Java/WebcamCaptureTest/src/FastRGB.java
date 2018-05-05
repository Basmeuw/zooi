import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;

//Class with a method to get the colors from a pixel
public class FastRGB
{

    private int width;
    private int height;
    private boolean hasAlphaChannel;
    private int pixelLength;
    private byte[] pixels;
    private BufferedImage image;
    
    FastRGB(BufferedImage image)
    {
    	this.image = image;
        pixels = ((DataBufferByte) image.getRaster().getDataBuffer()).getData();
        width = image.getWidth();
        height = image.getHeight();
        hasAlphaChannel = image.getAlphaRaster() != null;
        pixelLength = 3;
        if (hasAlphaChannel)
        {
        	System.out.println("Image has alpha channel");
            pixelLength = 4;
        }

    }

    Color getRGB(int x, int y)
    {
        Color c = new Color(0, 0, 0, 0);
        
        int rawColor = image.getRGB(x, y);
        c.a = 255;
        c.r = (rawColor & 0x00ff0000) >> 16;
        c.g = (rawColor & 0x0000ff00) >> 8;
        c.b = (rawColor & 0x000000ff);
        
        return c;
        
    }
}