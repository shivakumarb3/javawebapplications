
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
 
/**
 * @author ashraf_sarhan
 *
 */
public class Review {
     
    
     
    public static void readCsvFile(String fileName) {
 
        BufferedReader fileReader = null;
      
        try {
             
            //Create a new list of student to be filled by CSV file data 
          
             
            String line = "";
             
            //Create the file reader
            fileReader = new BufferedReader(new FileReader(fileName));
            //fileReader = new BufferedReader(new FileReader(https://drive.google.com/open?id=1rllek1cAwHSeNPoLGTG1Fd96kUv-Rq4l));
             
            //Read the CSV file header to skip it
           // fileReader.readLine();
            int i=0;
            //Read the file line by line starting from the second line
            while ((line = fileReader.readLine()) != null) {
                //Get all tokens available in line
              System.out.println(i+" "+line);
                }
            
             
            //Print the new student list
           
        } 
        catch (Exception e) {
            System.out.println("Error in CsvFileReader !!!");
            e.printStackTrace();
        } finally {
            try {
                fileReader.close();
            } catch (IOException e) {
                System.out.println("Error while closing fileReader !!!");
                e.printStackTrace();
            }
        }
 
    }
    public static void main(String args[]) {
    	
    	Review r=new Review();
    	r.readCsvFile("myfiles/collegereview.csv");
    }
 
}