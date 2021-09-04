public class MyQueueableClass {
    public List<Account> accList ;
    public MyQueueableClass(List<Account> accList){
        this.accList = accList ;  
    }
    public void execute(QueueableContext context) {
        for(Account acc :accList){
            // Update the Account Name 
            acc.Name = acc.Name + 'Marlabs';
        }
        update accList;
    }
}