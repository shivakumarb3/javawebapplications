package tablestorage;
import com.microsoft.azure.storage.*;
import com.microsoft.azure.storage.table.*;
import com.microsoft.azure.storage.table.TableQuery.*;
import com.microsoft.azure.storage.table.TableServiceException;

public class Insert {

	public static void main(String args[]) {
		
	
	try
	{
	    // Retrieve storage account from connection-string.
		
	String 	storageConnectionString="";
	    CloudStorageAccount storageAccount =
	        CloudStorageAccount.parse(storageConnectionString);

	    // Create the table client.
	    CloudTableClient tableClient = storageAccount.createCloudTableClient();

	    // Create a cloud table object for the table.
	    CloudTable cloudTable = tableClient.getTableReference("Myflame");

	    // Create a new customer entity.
	    CustomerEntity customer1 = new CustomerEntity("Harp", "Walter");
	    customer1.setEmail("Walter@contoso.com");
	    customer1.setPhoneNumber("425-555-0101");

	    // Create an operation to add the new customer to the people table.
	    TableOperation insertCustomer1 = TableOperation.insertOrReplace(customer1);

	    // Submit the operation to the table service.
	    cloudTable.execute(insertCustomer1);
	}
	catch (Exception e)
	{
	    // Output the stack trace.
	    e.printStackTrace();
	}
}
}
