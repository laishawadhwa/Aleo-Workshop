// This example demonstrates an example of a minting and transferring a token in Leo.
program token_f3_vc.aleo {
    // The `Token` record datatype.
    record Token {
        // The token owner.
        owner: address,
        // The token amount.
        amount: u64,
    }

    // The `mint` function initializes a new record with the
    // specified number of tokens assigned to the specified receiver.
    transition mint(owner: address, amount: u64) -> Token {
        return Token {
            owner: owner,
            amount: amount,
        };
    }

    // The `transfer` function sends the specified number of tokens
    // to the receiver from the provided token record. 
    
    transition transfer(token: Token, to: address, amount: u64) -> (Token, Token) {
        // Checks the given token record has sufficient balance.
        // add your code here
        
        // Output the sender's change record and the receiver's record.
        
    }

    transition function balance_of(owner_balance: Token) -> u64 {
    // add your code here
}


}

