
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract DecisionAudit {


    address public owner;

    mapping (bytes32 => uint256) public  decisionRecords;

    event DecisionHashStored(
        bytes32 indexed decisionHash,
        uint256 timestamp,
        address indexed sender
    );
    

    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized ");
        _;
    }
    function storeDecisionHash(bytes32 decisionHash) external onlyOwner{

        require(decisionRecords[decisionHash] == 0, "Hash already exists");

        decisionRecords[decisionHash] = block.timestamp;

        emit DecisionHashStored(decisionHash, block.timestamp, msg.sender);


    }

    function verifyDecisionHash(bytes32 decisionHash) public  view returns (bool) {
        return decisionRecords[decisionHash] != 0;

    }
    
    function getDecisionTimestamp(bytes32 decisionHash) public view returns (uint256) {
        return decisionRecords[decisionHash];
    }
}