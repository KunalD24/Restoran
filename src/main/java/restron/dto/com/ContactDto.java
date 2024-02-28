package restron.dto.com;
public class ContactDto {
    public String contact_id;
    public String contact_subject;
    public String contact_message;

    public ContactDto() {
    }

    public ContactDto(String contact_id, String contact_subject, String contact_message) {
        this.contact_id = contact_id;
        this.contact_subject = contact_subject;
        this.contact_message = contact_message;
    }

    public void setContact_id(String contact_id) {
        this.contact_id = contact_id;
    }

    public void setContact_subject(String contact_subject) {
        this.contact_subject = contact_subject;
    }

    public void setContact_message(String contact_message) {
        this.contact_message = contact_message;
    }

    public String getContact_id() {
        return contact_id;
    }

    public String getContact_subject() {
        return contact_subject;
    }

    public String getContact_message() {
        return contact_message;
    }

    @Override
    public String toString() {
        return "ContactDto{" + "contact_id=" + contact_id + ", contact_subject=" + contact_subject + ", contact_message=" + contact_message + '}';
    }
    
}