use super::types::{Content, ContentType, ContentMetadata, Engagement, EngagementType};
use starknet::ContractAddress;

#[starknet::interface]
pub trait IContent<TContractState> {
    // Content Management
    fn create_content(
        ref self: TContractState,
        content_type: ContentType,
        content_hash: felt252,
        metadata: ContentMetadata
    ) -> u64;
    fn get_content(self: @TContractState, content_id: u64) -> Content;
    fn get_creator_contents(self: @TContractState, creator: ContractAddress) -> Array<Content>;
    fn update_content_metadata(ref self: TContractState, content_id: u64, metadata: ContentMetadata);
    fn flag_content(ref self: TContractState, content_id: u64);

    // Engagement
    fn add_engagement(
        ref self: TContractState,
        content_id: u64,
        engagement_type: EngagementType
    ) -> bool;
    fn remove_engagement(
        ref self: TContractState,
        content_id: u64,
        engagement_type: EngagementType
    ) -> bool;
    fn get_content_engagements(self: @TContractState, content_id: u64) -> Array<Engagement>;
    fn get_user_engagements(self: @TContractState, user: ContractAddress) -> Array<Engagement>;

    // Content Discovery
    fn get_trending_content(self: @TContractState) -> Array<Content>;
    fn get_content_by_type(self: @TContractState, content_type: ContentType) -> Array<Content>;
    fn search_content(self: @TContractState, query: felt252) -> Array<Content>;
} 