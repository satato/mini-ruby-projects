# Zodiac.rb
The Chinese Zodiac is represented by 12 zodiac animals: The Rat, Ox, Tiger, Rabbit, Dragon, Snake, Horse, Goat, Monkey, Rooster, Dog, and Pig, and every year is associated with one of the zodiac animals. For example, 2022 is the year of the Tiger.

You are given a file named zodiac.txt which contains the zodiac animal associated with every year from 1981 to 2028. Each line should be the following format:

```
<Zodiac Animal>, <Year 1>, <Year 2>, <...>, <Year n>
```
 
We define a **valid line** as follows:
- The Zodiac Animal starts with an **uppercase letter**, followed by **one or more lowercase letters**.
- Commas should always be followed by a **single space**.
- The years are a **sequence of four-digit numbers**, separated by a **comma** and a **space**.

Invalid lines in the file should be **skipped**. Assume there are no duplicate entries for any zodiac animal.

**Contents of zodiac.txt:**  
```
Rat, 2020, 1996, 1984, 2008
Ox, 1997, 2009, 1985, 2021
Tiger, 1998, 1986, 2022, 2010
Rabbit, 1999, 2011, 2023, 1987
Dragon, 1988, 2000, 2012, 2024
Snake, 2025, 1989, 2013, 2001
Horse, 1990, 2026, 2014, 2002
Goat, 2015, 2027, 1991, 2003
Monkey, 2004, 2016, 2028, 1992
Rooster, 1981, 2017, 2005, 1993
Dog, 2018, 1982, 1994, 2006
Pig, 1983, 2019, 2007, 1995
```

### Implementation
Your task is to complete the `Zodiac` class.

`initialize(filename)`  
**Description:** Reads the file and parses its contents. You may store the contents of the file in
any data structure you prefer, as long as the other three functions described below work as expected.

`get_years(zodiac)`  
**Description:** Returns a **sorted array** of all the years (as integers) associated with the inputted zodiac. In the case of invalid input, return **nil**. **For example:** Cat does not belong to the zodiac, but Rat does. 

`get_zodiac(year)`  
**Description:** Returns the zodiac associated with the inputted year. In the case of invalid input, return **nil**.

`predict_zodiac(year)`
**Description:** While our file only contains zodiac animals for years between 1981 and 2028, we want to predict what the zodiac animal will be in the future. Each zodiac animal is repeated every 12 years. For example, 2010, 2022, and 2034 are all years associated with the zodiac Tiger. Implement the function to predict the zodiac animals for years after 2028. Assume the provided year will always be after 2028.

**Examples:**
**The below line returns a sorted array of all the years from the file that are the year of the Rat**  
```
z.get_years('Rat')
```  
**Expected result:** \[1984, 1996, 2008, 2020]

**The below line returns a sorted array of all the years from the file that are the year of the Cat**  
```
z.get_years('Cat')
```  
**Expected result:** nil

**The below line returns the zodiac associated with the year 2016, based on zodiac.txt**  
```
z.get_zodiac(2016)
```  
**Expected result:** Monkey

**The below line returns the zodiac animal associated with the year 2035, predicted based on zodiac.txt**  
```
z.predict_zodiac(2035)
```  
**Expected result:** Rabbit
