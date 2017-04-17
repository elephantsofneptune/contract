pragma solidity ^0.4.10;


// Class variables used both in NumeraireBackend and NumeraireDelegate

contract NumeraireShared {
    // Cap the total supply and the weekly supply
    uint256 public supply_cap = 21000000000000000000000000; // 21 million
    uint256 public disbursement_cap = 96153846153846153846153;

    uint256 public disbursement_period = 1 weeks;
    uint256 public disbursement_end_time;

    uint256 public disbursement;
    uint256 public total_supply;

    mapping (address => uint256) public balance_of;
    mapping (address => mapping (address => uint256)) public allowance_of;
    mapping (bytes32 => uint256) public staked; // A map of submissionIDs to NMR values

    // Generates a public event on the blockchain to notify clients
    event Mint(uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Stake(bytes32 indexed submissionID, uint256 value);
}
