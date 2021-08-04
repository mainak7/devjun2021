List<Waypoint__c> a1 = [select Name from Waypoint__c];
System.debug(a1);
System.debug(a1[0].Name);
System.debug(a1.get(1).Name);