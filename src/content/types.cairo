#[derive(Drop, Serde)]
pub struct Content {
    pub content_id: u64,
    pub creator: starknet::ContractAddress,
    pub content_hash: felt252,
    pub metadata_uri: felt252,
    pub created_at: u64,
} 