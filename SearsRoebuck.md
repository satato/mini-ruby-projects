# SearsRoebuck.rb
We’re taking a trip back to the early 1900s! Back in the day, the Sears Roebuck Company was well known for their catalog kit houses (many of which are still around today!). We want to find out details about the different home models that the Sears Roebuck Company sold. You will be given a file called sales.txt which contains information about each home model that was sold.

If a model was purchased more than once (ideally by different people), that model and its selling price will appear in the file multiple times, once for each sale. Each line in sales.txt should be of the following format: 

We will define a **valid line** as follows:
- The Home Model Name consists of any number of words, separated by spaces, where **each word begins with an uppercase letter**, followed by **one or more lowercase letters**. 
- Commas should **always** be followed by a single space.
- The Selling Price will start with a **dollar sign $ followed by one or more digits**. It will be a whole dollar amount and have **no commas**, regardless of how large the dollar amount is. 
- All invalid lines should be ignored.
 
**Example of valid lines:**
```
Fairfield, $2500  
Cape Cod, $4500  
Tudor, $0  
Victorian, $5300  
Cape Cod, $4000  
Colonial, $3000  
Fairfield, $2700  
Cape Cod, $3200  
```
**Example of invalid lines:**
```
Fairfield, $  
Cape Cod , $10  
, $100  
Victorian, $1000.50  
Cape Cod, 5400  
Colonial2, $3000  
```

### Implementation
Your task is to complete the `SearsRoebuck` class.

`initialize(filename)`  
**Description:** Reads the file and parses the contents.

`num_model_sold(model_name)`  
**Description:** Returns the number of kits of a particular model that were sold. If model_name does not exist, return nil.

`avg_selling_price(model_name)`  
**Description:** Returns the average amount of money that a particular model was sold for. All values should be rounded down to the nearest dollar. If model_name does not exist, return nil.

`total_sale_amount()`  
**Description:** Returns the total amount of money the Sears Roebuck Company made from sales of the kit homes. If no sales are made, return 0.

**Examples:**
Suppose `sales.txt` contains all lines from the example of valid lines.

```
s = SearsRoebuck.new('sales.txt')  
s.num_model_sold('Fairfield')  
=> 2  
s.avg_selling_price('Cape Cod')  
=> 3900  
s.total_sale_amount()  
=> 25200
```
