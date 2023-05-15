# WaitingTime.rb
Going to office hours for your college class often involves a lot of waiting. We want to find out how much time, in total, students waited in the office hours room this semester. You will be given a file called **waiting.txt** which contains information about each time a student waited in office hours. 

If a student goes to office hours more than once, their name will appear in the file multiple times, once
for each time they went to office hours.
Each line in **waiting.txt** should be of the following format:

```
<Last name\>, <First name\>, <Minutes\>:<Seconds\>
```
 
We define a **valid line** as follows:
- Both the first name and last name **begin** with an **uppercase letter**, followed by **one or more lowercase letters**.
- Each comma is always followed by a **single space**.
- There are **no spaces** around the colon between the minutes and seconds.
- There should always be a number before the colon.
- Leading zeroes for the minutes are allowed, but there will always be **exactly 2 digits** for the seconds.
- Invalid lines should be **ignored**.

The time is **always** represented as minutes and seconds, so if a student waits for two hours and 15 minutes, their time will be `135:00`.

**contents of waiting.txt**  
```
Claus, Santa, 10:32
Smith, John, 5:05
Invalid, 5:15
Claus, Santa, 0:03
```

**Example of invalid lines:**
```
Invalid, 5:15
Jones, Sally, :30
smith, John, 5:05
```
  
### Implementation
Your task is to complete the `WaitingTime` class.

`initialize(filename)`  
**Description:** : Reads the file and parses the contents.

`student_waited_for(student_name)`  
**Description:**  Determines how long a particular student waited for. The **student_name** will be in the format `Firstname Lastname` (note here, there is no comma, and the firstname is first, the opposite of in the file). The time should be returned in **seconds**.

`total_wait_time()`  
**Description:** Adds up the total time added by **all students**, and returns the time in **seconds**.

**Examples:**
```
w = WaitingTime.new("waiting.txt") waiting.txt:
w.student_waited_for("Santa Claus")
=> 635
w.total_wait_time()
=> 940
```
