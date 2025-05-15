use super::types::RewardType;

#[starknet::interface]
pub trait IRewards<TContractState> {
    fn reward_user(ref self: TContractState, user: starknet::ContractAddress, reward_type: RewardType, amount: u256);
    fn get_rewards_balance(self: @TContractState, user: starknet::ContractAddress) -> u256;
    fn claim_rewards(ref self: TContractState) -> bool;
} 