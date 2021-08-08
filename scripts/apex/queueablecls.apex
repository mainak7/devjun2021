QueueableClass mqc1 = new QueueableClass('Hello World');
Id asyncJobId = System.enqueueJob(mqc1);