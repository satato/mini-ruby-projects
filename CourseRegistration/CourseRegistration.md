# CourseRegisration.rb
Your university awarded a $100 million contract by ROBOFIXER Inc to upgrade their course registration system. You were hired by this company to develop a part of the course registration system because of your experience in registering for classes - and your Ruby skills.

The goal of the course registration system is to allow students to add/drop classes and see all the courses they've registered for. You will be given a file called **courses.txt** which contains information about every course offered by the university.
Each line of **courses.txt** should be the following format:

```
<Course>, <Seats>
```
 
We define a **valid line** as follows:
- The course name will consists of **4 uppercase letters** followed by **3 digits**
- The total number of seats will be a **number** with **one or more digits**
- All invalid lines should be **ignored**

**Example of valid input:**  
```
CMSC330,2
CMSC351,3
ENGL393,2
STAT400,2
```

**Example of invalid input:**
```
INVALID,0
MATH140,
cmsc330,2
```

The contents of **course.txt** are as follows:
```
CMSC330,2
INVALID,0
CMSC351,3
ENGL393,2
STAT400,2
```
  
### Implementation
Your task is to complete the `CourseRegistration` class.

`initialize(path)`  
**Description:** : Reads the file and parses the contents.

`add(id, course)`  
**Description:**  Registers a student to the given course and returns **true** if there is an open seat and if the student has not already registered for the course. Otherwise return **false.**

`drop(id, course)`  
**Description:** Drops a student from the given course if the student has registered for it; returns **true** if successful, **false** otherwise.

`get_courses(id)`  
**Description:** Returns an array containing all the courses a student has registered for. If there is no such student/registration, return an empty array.

**Examples:**
```
r = CourseRegistration.new('courses.txt')
r.add('1001', 'CMSC351')
=> true
r.add('1001', 'CMSC330')
=> true
r.add('1002', 'CMSC330')
=> true
r.add('1010', 'CMSC330')
=> false # no more open seats!
r.drop('1002', CMSC330')
=> true
r.add('1010', 'CMSC330')
=> true
r.get_courses('1001')
=> ["CMSC330", "CMSC351"]
```
