package main;

public class Daterev {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String date="2013-12-13";
		int i=0;
		int length = date.length();
		String[] dcut=date.split("-");
		 String[] reverse=new String[3];
		

		int z=0;
		 z=2;
		 String revd="";
    	 for(int k=0;k<3;k++)
    	 {
    		reverse[k]=dcut[z];
    		
    		revd=revd+reverse[k];
    		if(k<2)
    		{
    			revd=revd+"-";
    		}
    		z--;
    	 } 
    	
    	 
    	System.out.println("reverse:"+revd);
    	
    	
    	  

    	
    	 
	     
	     
	     
	      
    	

	}

}
