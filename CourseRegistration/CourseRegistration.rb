class CourseRegistration

    @ids
    @courses

    def initialize(path)
        @ids = {}
        @courses = {}
        valid_line = /([A-Z]{4}\d{3}),(\d+)/

        File.readlines(path).each do |line|
            # checks for valid line
            if line =~ valid_line
                course, seats = line.match(valid_line).captures
                # each course is associated with an array/list of the following format:
                # [total seats, available seats]
                @courses[course] = [seats.to_i, seats.to_i]
            end
            # if line is invalid - skipped
        end

    end

    def add(id, course)
        # checks if student has registered for any courses
        if @ids[id] == nil
            # unregistered id, preps for attempting registration
            @ids[id] = []
        else
            # registered id, check whether they've registered for the given course already
            if @ids[id].include?(course)
                return false
            end
        end

        # proceeds with attempting registration
        # checks if course exists (otherwise fails registration)
        if @courses[course] == nil
            return false
        # checks course for available seats
        else
            if @courses[course][1] > 0
                # seats available! registers id
                @ids[id].push(course)
                @courses[course][1] -= 1
                return true
            else
                # no seats available; registration fails
                return false
            end
        end
    end

    def drop(id, course)
        # checks if id is registered
        if @ids[id] == nil
            return false
        else
            # if id is registered for given course
            if @ids[id].include?(course)
                # removes course from id's list
                @ids[id].delete(course)
                # if course exists
                if @courses[course] != nil
                    # adds open seat back to course
                    @courses[course][1] += 1
                    return true
                else
                    return false
                end
            else
                return false
            end
        end
    end

    def get_courses(id)
        # check if id is registered
        if @ids[id] == nil
            return []
        else
            return @ids[id]
        end
    end

end
