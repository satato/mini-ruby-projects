class WaitingTime

    # valid lines are in the format: Lastname, Firstname, Minutes:Seconds
    @@valid_line = /([A-Z][a-z]+), ([A-Z][a-z]+), (\d+):(\d{2})/
    @students

    def initialize(filename)
        @students = {}
        # parses file
        File.readlines(filename).each do |line|
            # checks if valid line (if not, skips)
            if line =~ @@valid_line
                last, first, mins, secs = line.match(@@valid_line).captures
                student_name = first + " " + last

                # checks if student already exists
                if @students[student_name] == nil
                    # students are associated with a list in the format: [minutes, seconds]
                    @students[student_name] = [mins.to_i, secs.to_i]
                # if student already exists, adds to their time spent waiting.
                else
                    og_min = @students[student_name][0]
                    og_sec =  @students[student_name][1]
                    s = (secs.to_i + og_sec) % 60
                    m = mins.to_i + og_min + (secs.to_i + og_sec) / 60

                    @students[student_name] = [m, s]
                end
            end
        end
    end

    # note: student_name is in the format: Firstname Lastname
    def student_waited_for(student_name)
        # checks if valid student
        if @students[student_name] == nil
            # if student invalid, returns 0
            return 0
        else
            # calculates time, in seconds, that student has been waiting
            return @students[student_name][0] * 60 + @students[student_name][1]
        end
    end

    def total_wait_time()
        total = 0
        # goes through students
        for k in @students.keys
            # adds the student's waiting time to the total
            total += student_waited_for(k)
        end
        # returns total time all students have spent waiting
        return total
    end

end