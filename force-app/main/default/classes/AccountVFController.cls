public class AccountVFController {
    public Account acc {get; set;}
    public Contact con {get; set;}
    public List<Contact> contacts {get; set;}
    public String accSearchParm {get; set;}
    public String errorMessage {get; set;}
    public PageReference search() {
        String searchTerm = '%' + accSearchParm + '%';
        try{
        
            acc = [select Name, Id from Account where name like : searchTerm limit 1];
            errorMessage = null;
        } catch (Exception e) {
            errorMessage = e.getMessage();
            acc = null;
            con = null;
        }
        return null;
    }
    
    public PageReference getContact() {
        String searchTerm = '%' + accSearchParm + '%';
        try{
            contacts = [select Name, Email, Phone, MobilePhone, Title from Contact where AccountId = :acc.Id];
            if(contacts.size() > 0) {
                con = contacts.get(0);
            }
        } catch (Exception e) {
            errorMessage = e.getMessage();
            con = null;
        }
        return null;
    }

}