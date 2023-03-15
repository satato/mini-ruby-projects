class ShoppingList

    # constructor
    def initialize()
        @shopping_list = {}
    end

    # prints out the current shopping list
    def read_list()
        puts @shopping_list
    end

    # takes an item and its quantity, and adds to the shopping list accordingly
    def add_item(name, quantity)
        # if item already exists, adds quantity, otherwise adds it to list entirely
        if @shopping_list[name] != nil
            @shopping_list[name] += quantity
        else
            @shopping_list[name] = quantity
        end
        # return statement
        return nil
    end

    # removes all items from the shopping list that make the given codeblock truthy
    # the provided codeblock is of the form: {|name, quantity| block}
    def remove_items()
        count = 0
        @shopping_list.each do |key, value|
            if (yield key, value)
                @shopping_list.delete(key)
                count += 1
            end
        end

        return count
    end

    def prune_shopping_list(item_prices, item_budget)
        new_list = {}
        @shopping_list.each do |key, value|
            # if the item and quantity is within the budget, adds it to the new list
            if (item_prices[key] * value <= item_budget[key])
                new_list[key] = value
            end
        end

        return new_list
    end

end