package logic;

public class operation {
	 public int convert(String str)
	    {
	        int val = 0;
	        try {
	            val = Integer.parseInt(str);
	        }
	        catch (NumberFormatException e) {
	            System.out.println("Invalid String");
	        }
	        return val;
	    }

}
