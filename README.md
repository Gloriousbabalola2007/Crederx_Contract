# Crederx_Contract
Backend–blockchain integration for storing and verifying credit decision hashes using smart contracts.
Crederx: An Alternative Credit Engine (ACE) Blockchain Integration Layer.

This repository contains the smart contract and backend integration logic used to create a tamper-proof audit system for credit decisions.

In this system:

The backend generates a credit decision

A SHA256 hash of the decision is created

The hash is stored on the blockchain using a smart contract

The transaction hash is saved in the database for verification

The blockchain is used only for:

Auditability

Data integrity

Trust between lenders

⚡ Key Features:

Smart contract for storing decision hashes

Duplicate hash prevention

Backend integration using ethers.js

Lightweight and gas-efficient design

No user wallet required (runs in background)

🧠 Architecture:
Backend → Hash Generation → Smart Contract → Blockchain → Transaction Record

🚀 Note:
This is an MVP implementation focused on audit logging.
No sensitive financial data is stored on-chain.
