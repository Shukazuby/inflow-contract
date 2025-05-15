#[derive(Drop, Serde)]
pub struct Content {
    pub content_id: u64,
    pub creator: starknet::ContractAddress,
    pub content_type: ContentType,
    pub content_hash: felt252,
    pub metadata_uri: felt252,
    pub created_at: u64,
    pub engagement_count: u64,
    pub is_flagged: bool,
}

#[derive(Drop, Serde, PartialEq)]
pub enum ContentType {
    Text: (),
    Image: (),
    Video: (),
    Audio: (),
}

#[derive(Drop, Serde)]
pub struct ContentMetadata {
    pub title: felt252,
    pub description: felt252,
    pub tags: Array<felt252>,
    pub external_url: felt252,
}

#[derive(Drop, Serde)]
pub struct Engagement {
    pub user: starknet::ContractAddress,
    pub content_id: u64,
    pub engagement_type: EngagementType,
    pub timestamp: u64,
}

#[derive(Drop, Serde, PartialEq)]
pub enum EngagementType {
    Like: (),
    Comment: (),
    Share: (),
    Save: (),
}