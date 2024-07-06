# MOD3PROJ Mint, Burn, Transfer + so much more!

This is a basic ERC20 token contract implemented in Solidity. The contract allows for token creation, ownership management, and token transfers following the ERC20 standard.

## Functionality

### Token Creation

The contract deploys with an initial supply of 1000 tokens (`1,000,000 * 10^18` in the smallest unit).

### Ownership Management

The contract uses the `Ownable` pattern from OpenZeppelin, allowing the owner to:
- Mint new tokens.
- Manage allowances for token transfers (`approve` function).
- Transfer ownership to another Ethereum address.

## Features

### Total Supply

The total number of tokens that will ever be issued by the contract.

### Balance Of

Returns the balance of tokens owned by a specified address (`tokenOwner`).

### Transfer

Automatically executes transfers of a specified number of tokens (`tokens`) to a specified address (`to`) for transactions using the token.

### Transfer From

Automatically executes transfers of a specified number of tokens (`tokens`) from a specified address (`from`) using the token. Requires prior approval via the `approve` function.

### Approve

Allows a designated spender (`spender`) to withdraw a specified number of tokens (`tokens`) from the caller's (`msg.sender`) account, up to a specific amount (`value`).

### Allowance

Returns the amount of tokens (`remaining`) that the designated spender (`spender`) is currently allowed to withdraw from the owner's (`owner`) account.

## Events

### Transfer

- **Event**: `Transfer(address indexed from, address indexed to, uint256 tokens)`
- **Description**: Triggered when tokens are transferred successfully from one address (`from`) to another address (`to`).

### Approval

- **Event**: `Approval(address indexed tokenOwner, address indexed spender, uint256 tokens)`
- **Description**: Logged when an approval occurs, allowing a designated spender (`spender`) to withdraw tokens from the owner's (`tokenOwner`) account.

