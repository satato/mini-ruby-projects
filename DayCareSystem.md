# DayCareSystem.rb
You have been asked to rewrite the database system for a local babysitting company called the BabySitter’s Club (BSC). It is your job to implement the DayCareSystem class.

Each baby will be represented by a single file. **Here is an example** of such a file:

```
Baby Name: Pao Fan  
Baby Id: 115243231  
Timeout: 10 minutes  
```
 

### Implementation
Your task is to complete the `covid_detector` class.

`initialize()`  
**Description:** You will have to decide the proper data structure(s) for storing the data needed for the rest of the outlined functions. Initialize any necessary data structures in this method.

`loadBabyFromFile(file)`  
**Description:** This method will take in a filename and store the following information from the file (see above for an example file):
- **Baby name**: the name of the baby that the file describes.
  - Contains **only** uppercase and lowercase letters. If the name contains multiple words, they will be separated by exactly one space.
- An id is a string of digits that has **at least** a size of 1.
- Timeout is a **positive integer** followed by the word **"minutes"**.

You must update your daycare system with the information you have read from the file. You may assume the files are properly formatted, so don’t worry about what your program will do in the case of an invalid input text file. You do not have to worry about getting duplicate baby names.

`printBaby(name)`  
**Description:** This method will print out all of the stored information on the baby whose name is passed in as the argument name, in format shown below. Printing the baby defined in the example on the previous page should print:

```
Pao Fan, 115243231, Timeout: 10
```

If no baby matches the provided name, print “not found: ” followed by the provided name. For example, if a baby named “Billy” doesn’t exist, calling printBaby("Billy") should print:

```
not found: Billy
```

`graduateBaby(name)`  
**Description:** This method will “graduate” the baby out of the daycare, meaning that the baby will no longer be stored by the daycare system. All information on the baby should be removed. If no baby with the specified name exists, return false. Otherwise, return true.


