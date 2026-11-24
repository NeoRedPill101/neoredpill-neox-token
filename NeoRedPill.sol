// SPDX-License-Identifier: MIT
// NeoRedPill (NRP) ERC-20 token for Neo X.
// Based on OpenZeppelin Contracts 5.x.
// No independent security audit has been completed.
pragma solidity ^0.8.27;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Capped} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

/// @custom:security-contact nrp@neoredpill.com
contract NeoRedPill is ERC20, ERC20Burnable, ERC20Capped, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // Maximum supply: 1 billion NRP with 18 decimals.
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10 ** 18;

    constructor(address defaultAdmin, address minter)
        ERC20("NeoRedPill", "NRP")
        ERC20Capped(MAX_SUPPLY)
    {
        require(defaultAdmin != address(0), "Invalid admin");
        require(minter != address(0), "Invalid minter");
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(MINTER_ROLE, minter);
    }

    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    // Enforces the maximum supply whenever tokens are minted.
    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Capped)
    {
        super._update(from, to, value);
    }
}