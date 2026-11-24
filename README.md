# NeoRedPill (NRP) - Neo X

Official NeoRedPill (NRP) ERC-20 smart contract deployed on Neo X Mainnet, based on OpenZeppelin Contracts 5.x.

## Token Specifications

| Property | Details |
| --- | --- |
| Token Name | NeoRedPill |
| Symbol | NRP |
| Network | Neo X Mainnet |
| Token Standard | ERC-20 |
| Decimals | 18 |
| Maximum Supply | 1,000,000,000 NRP |
| Initial Supply | 0 NRP |
| Deployment Date | November 24, 2026 |
| Upgradeable | No |
| License | MIT |
| Source Code Verification | Verified (Exact Match) |

## Neo X Contract Address

`0x4c07A3F9Ef7Fba16661F715b84a1E2748beaE964`

[View verified contract on Neo X Explorer](https://xexplorer.neo.org/address/0x4c07A3F9Ef7Fba16661F715b84a1E2748beaE964)

## Smart Contract Features

- Standard ERC-20 implementation
- OpenZeppelin Contracts 5.x
- Capped token supply using ERC20Capped
- Minting restricted to authorized accounts
- ERC20Burnable functionality
- Role-based access control
- Non-upgradeable contract architecture
- Publicly verified source code

## Access Control

The contract implements OpenZeppelin AccessControl with the following roles:

- DEFAULT_ADMIN_ROLE
- MINTER_ROLE

Both roles were initially assigned to:

`0xc71430E8eCB24B3e0E2844f824ec2373CAAD44BC`

## Compiler Configuration

- Solidity compiler: 0.8.34+commit.80d5c536
- Optimization: Disabled
- EVM version: Default

## Neo N3 Bridge Integration

NeoRedPill is preparing for integration with the Neo N3 to Neo X bridge in coordination with AxLabs.

The intended integration will support cross-chain interoperability between Neo N3 and Neo X.

The Neo X contract uses 18 decimals, while the existing Neo N3 token uses 8 decimals.

Initial bridge liquidity, token backing, reserve management and cross-chain supply consistency must be coordinated before activation.

The Neo X supply cap alone does not enforce a combined cross-chain supply limit.

Bridge integration is currently pending.

## Repository Structure

- `NeoRedPill.sol`: Main Solidity smart contract.
- `NeoRedPill_flattened.sol`: Flattened smart contract source.
- `LICENSE`: MIT License.
- `README.md`: Project and technical documentation.

## Security

The smart contract is based on standard OpenZeppelin implementations.

The deployed source code has been verified on the Neo X blockchain explorer.

No independent security audit has been completed.

Source code verification does not constitute a security audit.

## Official Links

- Website: https://neoredpill.com
- X: https://x.com/NeoRedPill101
- Telegram: https://t.me/neoredpillofficial
- GitHub: https://github.com/NeoRedPill101
- Contact: nrp@neoredpill.com

## License

This project is released under the MIT License.
