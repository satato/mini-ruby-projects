# ShoppingList.rb
Implement a shopping list class. As defined by the initialize method, a shopping list should be represented as a hash. The `initialize()` method is already done for you.

### Implementation
Your task is to complete the `ShoppingList` class.

`add_item(name, quantity)`  
**Description:** This method should add an item with the given name and quantity into the shopping list. You can assume the name will always be a String and the quantity will always be an Integer. If the name of the item already exists in the shopping list, add the specified quantity to its current quantity. This method should return nil.

`remove_item() {|name, quantity| block}`  
**Description:** This method should remove all items from the shopping list that make the code block evaluate to a truthy value. The passed in code block accepts as an argument the name and quantity of an item in the shopping_list. The state of the @shopping_list should be changed by the removal of the affected items. This method should return the number of items that were removed.

`prune_shopping_list(item_prices, item_budget)`  
**Description:** Given a hash of the item_prices that maps an item’s name to its price, and a hash item_budget that maps an item’s name to its Integer budget value (every item name in the shopping list is guaranteed to be in both hashes and mapped to a non nil value), generate a new shopping list that contains only the items whose cost (i.e. quantity * price) is less than or equal to the amount budgeted for the item. RETURN the new shopping list. DO NOT change the state of @shopping_list in the process of writing this method.

**Example Usage**  
```
list = ShoppingList.new()  
list.add_item("orange", 2)  
list.add_item("orange", 5) (* The quantity of orange is now 7 *)  
list.add_item("banana", 10)  
list.add_item("guava", 13)  
list.add_item("plantains", 5)
```

**The below line removes orange and plantains from the hash, and returns 2**  
```
list.remove_items() { |name, quantity| quantity == 7 }
```  

**The below line returns a new shopping list with banana as the only item**  
```
list.prune_shopping_list({"banana" => 2, "guava" => 3}, {"banana" => 20, "guava" => 25})
```
