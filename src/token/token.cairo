#[starknet::contract]
pub mod InflowToken {
    use starknet::{ContractAddress, storage::StoragePointerWriteAccess};

    #[storage]
    struct Storage {
        name: felt252,
        symbol: felt252,
        decimals: u8,
        total_supply: u256,
    }

    #[constructor]
    fn constructor(ref self: ContractState) {
        self.name.write('InFlow Token');
        self.symbol.write('INFLOW');
        self.decimals.write(18_u8);
    }
} 