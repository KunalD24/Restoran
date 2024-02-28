package restron.dto.com;
public class BookingDto {
    private String orderId;
    private String name;
    private String email;
    private String booking_date;
    private String time_slot;
    private String booking_table;
    private String price;

    public BookingDto() {
    }
    
    public BookingDto(String orderId, String name, String email, String booking_date, String time_slot, String booking_table, String price) {
        this.orderId = orderId;
        this.name = name;
        this.email = email;
        this.booking_date = booking_date;
        this.time_slot = time_slot;
        this.booking_table = booking_table;
        this.price = price;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setBooking_date(String booking_date) {
        this.booking_date = booking_date;
    }

    public void setTime_slot(String time_slot) {
        this.time_slot = time_slot;
    }

    public void setBooking_table(String booking_table) {
        this.booking_table = booking_table;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getBooking_date() {
        return booking_date;
    }

    public String getTime_slot() {
        return time_slot;
    }

    public String getBooking_table() {
        return booking_table;
    }

    public String getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "BookingDto{" + "orderId=" + orderId + ", name=" + name + ", email=" + email + ", booking_date=" + booking_date + ", time_slot=" + time_slot + ", booking_table=" + booking_table + ", price=" + price + '}';
    }

    
    
    
}