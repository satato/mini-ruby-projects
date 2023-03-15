# CatRecord.rb
It’s kitten season now, and every shelter takes in many kittens everyday. For every cat in the shelter, there will be a record that stores the basic information of this cat (name, age, genders, take-in-date, and available status). To help shelter manage these records, we are going to implement a Ruby program that can read a record.txt file and properly store all the read-in information so that they can be reached easily.

For implementing this program, you are given a file named record.txt which contains every cat’s information in the shelter, one line for each cat. Each line should be the following format:

```
<Cat Name\>, <Take-in date\>, <Available Status\>
```
 
We define a **valid line** as follows:
- Cat name should start with **uppercase letter** followed by** one or more lowercase letters**.
- Take-in date is in the format **mm/dd/yy**, i.e. month, day and year are represented by two digit and separated by /
- Available status should be either **Available** or **Adopted**

**Example of valid input:**  
```
Anne, 01/01/22, Available  
Bob, 02/22/22, Adopted  
Cc, 02/02/21, Available  
Lucky, 02/03/18, Adopted  
```

**Example of invalid input:**
```
Forest, 01/01/22, Ad  
jonny, 02/02/22, Available  
Mika, 2/2/2022, Adopted  
```
  
### Implementation
Your task is to complete the `covid_detector` class.

`initialize(filename)`  
**Description:** : Reads the file and parses the contents.

`get_cat_status(cat_name)`  
**Description:**  Returns the available status of cat_name. If cat_name does not exist, return nil.

`take_in_cat_amount_by_month(month)`  
**Description:** Returns the amount of cats that were taken-in in input month. Return nil if input month is invalid.

`max_adopted_cat_month()`  
**Description:** Returns the month that most cats are adopted. If no cat is adopted, return nil.

**Examples:**
Suppose `record.txt` contains all lines from the example of valid lines.
```
s = CatRecord.new('record.txt')  
s.get_cat_status_by_name('Cc')  
=> Available
s.take_in_cat_amount_by_month(2)  
=> 3
s.max_adopted_cat_month()  
=> 2
```
