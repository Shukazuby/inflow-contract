# InFlow - Decentralized SocialFi Platform

InFlow is a decentralized SocialFi platform that empowers content creators through content ownership, engagement monetization, and blockchain rewards.

## Project Structure

```
inflow/
├── contracts/
│   ├── src/
│   │   ├── content/    # Content management
│   │   ├── token/      # InFlow token implementation
│   │   ├── rewards/    # Reward distribution
│   │   └── lib.cairo   # Main library file
│   ├── tests/          # Test files
│   ├── Scarb.toml     # Project configuration
│   └── .gitignore
```

## Prerequisites

- [Scarb](https://docs.swmansion.com/scarb/)
- [StarkNet Foundry](https://foundry-rs.github.io/starknet-foundry/)

## Setup

1. Install dependencies:

```bash
scarb build
```

2. Run tests:

```bash
scarb test
```

## Development

The project uses:

- Cairo 2.x for smart contracts
- OpenZeppelin contracts for standard implementations
- StarkNet Foundry for testing
- Scarb for package management

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

[MIT License](LICENSE)
