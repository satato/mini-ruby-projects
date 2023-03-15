class CatRecord

    def initialize(filename)
        @cats = {}
        @months = {}

        # pattern for a valid line
        valid_line = /^([A-Z][a-z]+), ((\d{2})\/\d{2}\/\d{2}), (Available|Adopted)$/

        File.readlines(filename).each do |line|
            # if not valid line, skip. otherwise, process
            if line =~ valid_line
                # capture groups: 1 = cat name, 2 = date, 3 = month, 4 = status
                name, date, month, stat = line.match(valid_line).captures

                # adds cat to records
                @cats[name] = [date, stat]

                # updates months records
                if @months[month.to_i] == nil
                    @months[month.to_i] = []
                end

                @months[month.to_i].push(name)

            end
        end

    end

    def get_cat_status_by_name(cat_name)
        # checks if cat exists
        # if not, return nil; otherwise, returns status
        if @cats[cat_name] == nil
            return nil
        else
            return @cats[cat_name][1]
        end
    end

    def take_in_cat_amount_by_month(month)
        # if month is invalid, return nil, otherwise proceed
        if @months[month] == nil
            return nil
        else
            return @months[month].length
        end
    end

    def max_adopted_cat_month()
        # if no cats have been adopted, returns nil, otherwise returns the month w/max adoptions
        if @months == {}
            return nil
        else
            max_month = 1
            max = 0
            # determines the month with the most cats adopted
            @months.each do |month, cat_arr|
                count = 0
                # for each cat in that month, if they were adopted, add them to the count
                for cat in cat_arr
                    if @cats[cat][1] == 'Adopted'
                        count += 1
                    end
                end
                # if the cats adopted in this month are more than the current max
                # update the maximum
                if count > max
                    max_month = month
                    max = count
                end
            end

            # if no cats were adopted, returns nil
            if max == 0
                return nil
            end

            # returns the month with the most cats adopted
            return max_month
        end
    end

end
