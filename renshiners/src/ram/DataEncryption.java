package ram;
import java.io.IOException;
import java.util.Date;
import java.util.Random;
import Decoder.BASE64Encoder;
public class DataEncryption 
{
	private static Random rand = new Random((new Date()).getTime());
	public static String encrypt(String str) 
	{
		 
		  BASE64Encoder encoder = new BASE64Encoder();

		  byte[] salt = new byte[8];

		  rand.nextBytes(salt);

		  return encoder.encode(salt) + encoder.encode(str.getBytes());
	}
	
}
