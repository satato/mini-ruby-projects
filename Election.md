# Election.rb
There is an election and you have been given the very important task of calculating who will be the future president. DVH of the Racket party is up against Anwar Mamat of the C++ party. You will receive a file with votes on each line and you must tally them up. Each line in the file will correspond to a voting district. Lines will have the following form:

```
Dist[<id>]: <votes>
```
 
The id a 6-digit number, and is a comma-separated list of votes, each of which is either AM or DVH. For example, a line might look like the following:

```
Dist[012345]: DVH,AM,DVH,AM,AM
```

This means in district 012345, DVH got 3 votes and AM got 3 votes.

There will be a colon and a single space after the district id, and no other whitespace anywhere on the line. You will need to complete the implementation of the class Election , which will process this voting data.
  
### Implementation
Your task is to complete the `covid_detector` class.

`initialize(filename)`  
**Description:** This is the class constructor, it takes the name of the file containing the voting information (as described above). You should read it in and store it in the @votes Hash. If any line of the file is invalid, simply ignore it and keep going. The exact method you use to store the data in the Hash is up to you, but you must store all of the necessary data in this Hash. You may assume that each district ID only appears once in the file.

`district_tally(district_id)`  
**Description:** This method takes a district ID (a 6-digit number) as an integer argument and returns the winner in that district, which should be a string containing either "DVH" or "AM". Assume there is never a tie, and assume a district with the given district_id exists.

`find_winner()`  
**Description:** The winner of the election is the candidate who won in the most districts. Return a string containing the overall winner, either "AM" or "DVH". Again, assume there is no tie.
