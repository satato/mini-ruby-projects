class Bank

    # constructor
    def initialize()
        @accounts = {}
    end

    # takes a file and parses out the account names and their corresponding
    # funds on each line, updating the accounts record.
    def importAccounts(file)
        accs = {}
        name = ""
        amount = ""
        valid_line = /^([a-zA-Z]+):(\d+((\.?\d+)|\d*))$/

        File.readlines(file).each do |line|
            # if the current line is valid -> parse (otherwise, skip it)
            if line =~ valid_line
                # capture group 1 = name; capture group 2 = tally
                name, amount = line.match(valid_line).captures
                name = name.downcase

                # if the current account name already exists from this file,
                # keep the larger value. otherwise, adds it
                if accs[name] != nil
                    if amount.to_f > accs[name]
                        accs[name] = amount.to_f
                    end
                else
                    accs[name] = amount.to_f
                end
            end
        end
        # once the whole file is read, update the larger record (or write it, if empty)
        updateAccounts(accs)
    end

    # takes a hash which maps an account name to a value, and updates @accounts with it
    def updateAccounts(acc)
        acc.each do |key, value|
            @accounts[key] = value
        end
    end

    # transfers the specified amount between the given accounts, if possible
    def transfer(from, to, amount)
        # if both accounts exist, proceed. otherwise, transaction fails
        if ((@accounts[from.downcase] != nil) && (@accounts[to.downcase] != nil))
            # determines if the 'from' account has enough funds to complete transaction
            # if the amount in 'from' is insufficient, transaction fails
            if @accounts[from.downcase] < amount
                return false
            else
                # if funds are sufficient, succeeds in transaction
                @accounts[from.downcase] -= amount
                @accounts[to.downcase] += amount
                return true
            end
        else
            return false
        end
    end

    # determines the account with the largest funds
    def whoIsTheRichest()
        max = 0.0
        accountOwner = ""
        # iterates through each account
        @accounts.each do |key, value|
            if value > max
                max = value
                accountOwner = key
            end
        end

        # if no accountOwner exists, returns nil, otherwise returns that with the highest account total
        if accountOwner == ""
            return nil
        else
            return accountOwner
        end
    end

end
