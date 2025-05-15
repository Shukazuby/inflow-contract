#[derive(Drop, Serde)]
pub enum RewardType {
    ContentCreation: (),
    Engagement: (),
    Referral: (),
} 