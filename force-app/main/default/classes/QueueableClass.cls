public class QueueableClass implements Queueable {
    String message;

    public QueueableClass(String message) {
        this.message = message;
    }

    public void execute(QueueableContext qc) {
        System.debug('Came into QueueableClass.execute() @ ' + System.now() + '. message: ' + message);

        QueueableClass mqc1 = new QueueableClass('Hello World');
        Id asyncJobId = System.enqueueJob(mqc1);
    }
}