# Foundry Simple Storage

This project demonstrates a basic smart contract for storing and retrieving values on the Ethereum blockchain using the Foundry framework.

## Overview

The Simple Storage contract allows you to:

- Store a single `uint256` value.
- Retrieve the stored value.

This project is structured to help developers understand how to work with smart contracts and the Foundry toolset, while also serving as a foundation for more complex Ethereum-based applications.

## Features

- **Smart Contract:** A Solidity contract that stores and retrieves a value.
- **Unit Testing:** Includes unit tests to ensure the correct behavior of the contract.
- **Gas Reporting:** Analyze gas usage for storage and retrieval operations.
- **Deployment:** Scripts for deploying the contract to Ethereum test networks.

## Prerequisites

To use this project, you'll need to have the following installed:

- [Foundry](https://book.getfoundry.sh/) – A blazing fast Ethereum development framework.
- [Node.js](https://nodejs.org/) – For scripting and additional tooling (if needed).

## Getting Started

1.**Clone the repos**

   ```bash
   git clone https://github.com/xyzsimon34/Foundry-Simple-Storage.git
   cd Foundry-Simple-Storage
   ```

2.**Install Foundry dependencies:**

   ```bash
   forge install
   ```

3.**Build the smart contracts**

   ```bash
   forge build
   ```
4.**Run the tests:**
   ```bash
   forge test
   ```
5.**Deploy the contract: Use the deployment script or deploy manually to an Ethereum test network.**
   ```bash
   forge script script/DeploySimpleStorage.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
   ```
## Smart Contract: SimpleStorage.sol
   ```solidity
   // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public storedValue;

    function store(uint256 _value) public {
        storedValue = _value;
    }
   ```
## Testing
Tests are included in the test/ directory. These test the functionality of the smart contract, ensuring:

- **Values can be successfully stored and retrieved.**
- **Proper gas usage is measured.**

## Contributing

Feel free to submit issues or pull requests. Contributions are welcome!
