# \#4. Create and Test Your Token


Here we will create a token program of our own.

## Create a token contract

For this demo, our desired features are following:

- Mint Function: Able to mint user specific `amount` of `token` to the one who called the mint function.
- Transfer Function: Able to transfer other user (`recipient`) specific `amount` of the `token` that was minted using mint function.

### Step one: define your token record

Define a token struct with an owner and balance

```leo
record Token {
    // The token owner, any record must be defined with the `owner` field.
    owner: address,
    // Token balance of the user.
    balance: u64,
}
```

### Step two: define mint function
Define a mint transition that takes a balance and returns a token record.

```leo
transition mint(owner: address, amount: u64) -> Token {
        return Token {
            owner: owner,
            amount: amount,
        };
    }
```

You can refer to the [project directory](token_f3_vc) for setting up the project 

### Step three: 
#### [TASK] (A) Define transfer function
Define a transfer transition that takes a receiver, amount and token and returns two tokens records

```leo
transition transfer(token: Token, to: address, amount: u64) -> (Token, Token) {
<function body here>

    return (recipient, sender);
}
```
#### [TASK] (B) Define balance_of function

Define the code block which returns the balance of a particular owner addresss given the record. Expected ouput balance in u64

```leo
function balance_of(owner_balance: Token) -> u64 {
    // add your code here
}
## Test Program

### Test Mint function

First Test Mint Function.
```bash
leo run mint <owner address> 100u64
```

The output should be a record of new 100 tokens.

### [TASK] Test Transfer function

Then go ahead and test Transfer Function, let's transfer 10 tokens to other address.
```bash
leo run transfer "<Token Record>" <recipient's address> 10u64
```

Then the output should be two record where 10 tokens are owned under recipient's address, and remaining 90 tokens are owned by the original owner.

Notes:
- Remember to replace <recipient's address> field to actual address of the recipient.
- input token record should be the one that is returned after you minted. 
- the record logged on terminal usually has ".private", ".public" keywords after all properties of the record. Those are just indicators to show whether certain properties of the record is public or private.
