// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyTokenProject is ERC20, Ownable {
    constructor() ERC20("MyTokenProject", "MTP") {
        _mint(msg.sender, 10 * 10 ** decimals());
    }
}

// Ownable contact gives only the owner right to perform certain important trasacton in ths contract
// for another addres to interact with this smart contract the owner has to transfer ownership