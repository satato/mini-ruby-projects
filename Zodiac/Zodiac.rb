class Zodiac
    @animals
    @years

    # initializes the Zodiac class; reads the given file and parses its contents
    def initialize(filename)
        # regex defining a valid line
        valid_line = /^([A-Z][a-z]+), ((\d{4}, )*\d{4})$/
        # initializes animals array and years hash
        @animals = []
        @years = {}
        # begins reading line by line
        index = 0
        File.readlines(filename).each do |line|
            # skips line if invalid, parses if valid
            if line =~ valid_line
                # parses out the animal and its years
                animal, year_line = line.match(valid_line).captures
                # adds to animals list
                @animals[index] = animal

                # parses out the years
                lst = year_line.split(", ")
                @years[@animals[index]] = []
                # adds years to the years hash for the current zodiac animal
                for i in lst
                    @years[@animals[index]].push(i.to_i)
                end
                # increments index for @animals to continue parsing new zodiacs
                index += 1
            end
        end
    end

    # returns a sorted array of all the years associated with the provided
    # zodiac animal
    def get_years(zodiac)
        #sorts array
        lst = @years[zodiac]
        # if provided zodiac does not exist in records
        if lst == nil
            # returns nil
            return nil
        end

        # builds sorted result list, lowest -> highest
        result = []
        for i in 0..(lst.length() - 1)
            result.push(lst.min())
            lst.delete(lst.min())
        end

        # returns resulting sorted list
        return result
    end

    # returns the zodiac associated with the inputted year; does NOT predict
    # beyond existing/initialized data.
    def get_zodiac(year)
        # for each zodiac animal recorded
        for a in @animals
            # if the given year is associated with it
            if @years[a].include?(year)
                # returns the current zodiac animal
                return a
            end
        end
        # if not associated with any zodiac animal recorded, returns nil
        return nil

    end

    # Predicts what the zodiac animal will be in the future, based on initialized
    # data and the fact that each zodiac animal is repeated every 12 years.
    def predict_zodiac(year)
        # iterates through each zodiac to check
        for a in @animals
            # identify highest year of zodiac
            recent = @years[a].max()
            temp = year
            # works way down year by year to most recent for current zodiac
            while (temp > recent)
                temp -= 12
            end
            # if matches this zodiac, returns it
            if temp == recent
                return a
            end
            # otherwise continues searching
        end

        # if matches no zodiac, returns nil
        return nil
    end
end
