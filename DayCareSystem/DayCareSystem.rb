class DayCareSystem

    # patterns for validating a baby file
    @@valid_lines = [/^Baby Name: (([A-Z]*[a-z]*)+ ([A-Z]*[a-z]*)*)$/,
    /^Baby Id: (\d+)$/,
    /^Timeout: ([1-9][0-9]*) minutes$/
    ]

    # constructor
    def initialize()
        @babies = {}
    end

    # takes a text file with data about a baby, adds them to record
    def loadBabyFromFile(file)
        line_number = 0
        baby = ""
        id = ""
        time = 0

        File.readlines(file).each do |line|
            # if first line, get baby name
            if line_number == 0
                baby = line.match(@@valid_lines[0]).captures[0]
            # if second line, get baby id
            elsif line_number == 1
                id = line.match(@@valid_lines[1]).captures[0]
            # if last line, get baby's timeout
            elsif line_number == 2
                time = line.match(@@valid_lines[2]).captures[0].to_i
            end

            # add baby to records
            @babies[baby] = [id, time]

            # increments line number for next line
            line_number += 1
        end
    end

    # takes a baby name, prints out their info if exists in record
    def printBaby(name)
        # if baby is not in records, prints "not found: (baby)"
        if @babies[name] == nil
            puts "not found: " + name
        else
            puts "#{name}, #{@babies[name][0]}, Timeout: #{@babies[name][1]}"
        end
    end

    # graduates a given baby from daycare - erases their records if they exist in them
    def graduateBaby(name)
        if @babies[name] == nil
            return false
        else
            @babies.delete(name)
            return true
        end
    end

end