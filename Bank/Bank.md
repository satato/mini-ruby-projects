# Bank.rb
You’re in charge of building a Ruby class for a bank that deals exclusively in the tech world’s hottest new currency: ZebraCash. You need to implement the Bank class in order to support this hot new economy and make the teaching staff very rich. The Bank class must store the account names and each account’s current tally of ZebraCash. You can assume that (a) each account name is distinct, and (b) there are no negative amounts ever provided to your code.

### Implementation
Your task is to complete the `Bank` class.

`initialize()`  
**Description:** You will have to decide the proper data structure(s) for storing the data needed for the rest of the outlined functions

`importAccounts(file)`  
**Description:** takes the name of a file and loads accounts and their existing ZebraCash tally. The file has one account per line, in the format “name:amount” where the name consists of (upper and lowercase) letters and the amount is an integer or float. If the same account appears more than once in the file, store only the highest value. If any line doesn’t follow this format, the line is invalid and should be skipped. Multiple calls to importAccounts will update existing balances. Names are NOT case sensitive (i.e. boB and Bob will be treated as the same name).

**Example File Contents**  
Bob:10  
Alice:48.50  
McKenzie:33  
Samantha:28.01  
Kyle:Fifty # Invalid Line  

`transfer(from, to, amount)`  
**Description:** takes in an account name from, account name to, and a transfer amount. It returns true if the transaction succeeds, or false if either of the accounts do not exist or the from account doesn’t have enough ZebraCash to complete the transfer. If false is returned, neither account’s balance should change.

`whoIsTheRichest()`  
**Description:** returns the name of the account in your bank who currently has the highest ZebraCash total. Return nil if there are currently no accounts in your bank.
