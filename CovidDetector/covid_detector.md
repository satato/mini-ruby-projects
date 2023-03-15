# covid_detector.rb
As students come back to campus since the COVID-19 outbreak, QR codes have been placed all over several buildings to enable contact tracing. You are given the task to write a program that reads contact tracing data to find the students who may have come into close contact with other students who test positive for COVID19. You will be given a file that will include the data for the QR code scans for a given time period. Each line of the file corresponds to a single scan that a student has made, and has the following format:

```
<firstname\> <lastname\>,<location\>
```
 
You can assume that firstname and lastname will always be a student's first and last name, defined as **a single upper case letter, followed by at least one lowercase letter**, and that **location will always be three upper-case letters followed by 4 digits.** You can also assume that **there will be no duplicate lines**, and that **no student's name will appear more than once.**

A **short example** of one of these files may look like the following: 
```
David Smith,IRB0324  
Michael Yang,IRB0324  
Roger Eastman,IRB0324  
John Chadley,ESJ0224  
Master Yoda,VMH0201   
Little Timmy,TWS1212  
Covid Man,IRB0324  
```
  
### Implementation
Your task is to complete the `covid_detector` class.

`initialize()`  
**Description:** This is the class constructor -- it takes no arguments and should be used to initialize any data structures you may need to implement the other two main functions.

`read_files(scans_file)`  
**Description:** This function takes a file as its argument, reads the file, and stores all relevant data from them into the class.

`close_contact(name)`  
**Description:** This function takes a student's name and returns the UID's of all students that they may have come into close contact with. If, in the example file defined above, the student "Covid Man" tested positive for COVID19, and we called close_contact("Covid Man") , it should return ["David Smith", "Michael Yang", "Roger Eastman"] , since they were all in the same place as Covid Man.
