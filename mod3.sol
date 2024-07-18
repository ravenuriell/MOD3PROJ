// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LustCoin is ERC20, Ownable {
    constructor(address initialOwner, string memory name, string memory symbol) ERC20(name, symbol) Ownable(initialOwner) {
        // Validate initial owner address
        require(initialOwner != address(0), "Invalid initial owner");

        uint256 initialSupply = 1000; 
        _mint(initialOwner, initialSupply);

        transferOwnership(initialOwner);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    //explicitly added transfer function in the code
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
