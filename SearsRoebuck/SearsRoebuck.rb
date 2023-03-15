class SearsRoebuck

    # constructor
    def initialize(filename)
        @sales = {}
        valid_line = /^([A-Z][a-z]+( [A-Z][a-z]+)*), \$(\d+)$/

        File.readlines(filename).each do |line|
            # checks that a line is valid. if not, ignores
            if line =~ valid_line
                # grabs home model name and its sale price
                model, misc, price = line.match(valid_line).captures
                # checks whether model has been sold before
                if @sales[model] == nil
                    # if not, prep its record w/an empty list
                    @sales[model] = []
                end
                # then, add this sale to the model's record
                @sales[model].push(price.to_i)
            end
        end

    end

    # determines the quantity of the given model_name that have been sold
    def num_model_sold(model_name)
        count = 0
        for v in @sales[model_name]
            count += 1
        end
        
        # if none of this model has been sold, returns nil, otherwise returns the number of sales
        if count == 0
            return nil
        else
            return count
        end
    end

    # determines the average selling price of the specified model
    def avg_selling_price(model_name)
        sum = 0
        count = 0
        for v in @sales[model_name]
            sum += v
            count += 1
        end

        # if the given model has no sales, returns nil, else returns its avg sale price
        if count == 0
            return nil
        else
            return sum / count
        end
    end

    # calculates total sales of all models recorded
    def total_sale_amount()
        sum = 0
        @sales.each do |key, value|
            for v in value
                sum += v
            end
        end

        return sum
    end

end
