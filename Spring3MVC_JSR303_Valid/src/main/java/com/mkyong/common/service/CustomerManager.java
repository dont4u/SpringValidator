import com.mkyong.common.model.Customer;

public class CustomerManager {
	private void sink (Object o) {

	}
	public static void save (Customer customer) {
		sink(customer.getName());
	}
}