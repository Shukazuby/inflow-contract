//! Token module for InFlow platform.
//! This module handles the InFlow token implementation.

// Re-export token interfaces
mod interface;
use interface::IInflowToken;

// Re-export token implementation
mod token;
use token::InflowToken; 