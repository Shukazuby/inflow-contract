#[derive(Drop, Serde, PartialEq)]
pub enum RewardType {
    ContentCreation: (),
    ContentEngagement: (),
    QualityContent: (),
    Referral: (),
    Staking: (),
}

#[derive(Drop, Serde)]
pub struct RewardClaim {
    pub user: starknet::ContractAddress,
    pub reward_type: RewardType,
    pub amount: u256,
    pub timestamp: u64,
}

#[derive(Drop, Serde)]
pub struct RewardConfig {
    pub content_creation_reward: u256,
    pub engagement_reward: u256,
    pub quality_content_multiplier: u256,
    pub referral_reward: u256,
    pub staking_reward_rate: u256,
}

#[derive(Drop, Serde)]
pub struct UserRewards {
    pub total_earned: u256,
    pub available_balance: u256,
    pub claimed_amount: u256,
    pub last_claim_timestamp: u64,
} 