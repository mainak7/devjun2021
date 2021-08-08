System.debug('Before starting the batch job');
BatchClass mbc = new BatchClass();
Id jobId = Database.executeBatch(mbc, 20);
System.debug('After starting the batch job');