use super::types::Content;

#[starknet::interface]
pub trait IContent<TContractState> {
    fn create_content(ref self: TContractState, content_hash: felt252, metadata_uri: felt252) -> u64;
    fn get_content(self: @TContractState, content_id: u64) -> Content;
    fn get_creator_contents(self: @TContractState, creator: starknet::ContractAddress) -> Array<Content>;
} 