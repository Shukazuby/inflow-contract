use super::types::{RewardType, RewardClaim, RewardConfig, UserRewards};
use starknet::ContractAddress;

#[starknet::interface]
pub trait IRewards<TContractState> {
    // Reward Management
    fn reward_user(
        ref self: TContractState,
        user: ContractAddress,
        reward_type: RewardType,
        amount: u256
    ) -> bool;
    fn get_user_rewards(self: @TContractState, user: ContractAddress) -> UserRewards;
    fn claim_rewards(ref self: TContractState) -> bool;
    fn get_reward_claims(self: @TContractState, user: ContractAddress) -> Array<RewardClaim>;

    // Reward Configuration
    fn get_reward_config(self: @TContractState) -> RewardConfig;
    fn update_reward_config(ref self: TContractState, new_config: RewardConfig);
    fn get_reward_rate(self: @TContractState, reward_type: RewardType) -> u256;

    // Analytics
    fn get_total_rewards_distributed(self: @TContractState) -> u256;
    fn get_user_reward_history(self: @TContractState, user: ContractAddress) -> Array<RewardClaim>;
} 