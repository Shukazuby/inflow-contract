
pub mod content {
    pub mod types;
    pub mod interface;
}

pub mod token {
    pub mod interface;
    pub mod token;
}

pub mod rewards {
    pub mod interface;
    pub mod types;
}

// Re-export main types and interfaces
pub use content::types::Content;
pub use content::interface::IContent;
pub use token::interface::IInflowToken;
pub use token::token::InflowToken;
pub use rewards::types::RewardType;
pub use rewards::interface::IRewards;
