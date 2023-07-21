# AI NFT Generator

## Technology Stack & Tools

- Solidity (Writing Smart Contracts & Tests)
- Javascript (React & Testing)
- [Hardhat](https://hardhat.org/) (Development Framework)
- [Ethers.js](https://docs.ethers.io/v5/) (Blockchain Interaction)
- [React.js](https://reactjs.org/) (Frontend Framework)
- [NFT.Storage](https://nft.storage/) (Connection to IPFS)
- [Hugging Face](https://huggingface.co/) (AI Models)

## Requirements For Initial Setup
- Install [NodeJS](https://nodejs.org/en/)

## Setting Up
### 1. Clone/Download the Repository

### 2. Install Dependencies:
`$ npm install`

### 3. Setup .env file:
Before running any scripts, you'll want to create a .env file with the following values (see .env.example):

- **REACT_APP_HUGGING_FACE_API_KEY=""**
- **REACT_APP_NFT_STORAGE_API_KEY=""**

You'll need to create an account on [Hugging Face](https://huggingface.co/), visit your profile settings, and create a read access token. 

You'll also need to create an account on [NFT.Storage](https://nft.storage/), and create a new API key.

### 4. Run tests
`$ npx hardhat test`

### 5. Start Hardhat node
`$ npx hardhat node`

### 5. Unit Test Coverage
<img width="680" alt="image" src="https://github.com/ThomasHeim11/GeniusMintAI/assets/106417552/698ec467-a8d3-40a6-b6ae-5e7f8f3ebdd4">


### 6. Run deployment script
In a separate terminal execute:
`$ npx hardhat run ./scripts/deploy.js --network localhost`

### 7. Start frontend
`$ npm run start`
