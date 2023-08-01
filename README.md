# GeniusMintAI
<img width="1800" alt="Screenshot 2023-08-01 at 15 30 16" src="https://github.com/ThomasHeim11/GeniusMintAI/assets/106417552/ca2cd974-ce63-4f87-9ebd-602cbe9bd4f7">

# About 
GeniusMintAI is a decentralized application that allows users to mint NFTs by providing a description that Stable Diffusion v2 converts into an image. The NFTs are minted on the Sepolia testnet and stored on IPFS using [NFT.Storage](https://huggingface.co/stabilityai/stable-diffusion-2). The smart contract is deployed to the sepolia testnet. 



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


# Deployment to a testnet or mainnet

1. Setup environment variables

You'll want to set your `SEPOLIA_RPC_URL` and `PRIVATE_KEY` as environment variables. You can add them to a `.env` file, similar to what you see in `.env.example`.

- `PRIVATE_KEY`: The private key of your account (like from [metamask](https://metamask.io/)). **NOTE:** FOR DEVELOPMENT, PLEASE USE A KEY THAT DOESN'T HAVE ANY REAL FUNDS ASSOCIATED WITH IT.
  - You can [learn how to export it here](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-Export-an-Account-Private-Key).
- `SEPOLIA_RPC_URL`: This is url of the goerli testnet node you're working with. You can get setup with one for free from [Alchemy](https://alchemy.com/?a=673c802981)

Optionally, add your `ETHERSCAN_API_KEY` if you want to verify your contract on [Etherscan](https://etherscan.io/).

1. Get testnet ETH

Head over to [faucets.chain.link](https://faucets.chain.link/) and get some tesnet ETH. You should see the ETH show up in your metamask.

2. Deploy

```npx hardhat run scripts/deploy.js --network sepolia```


# Thank you!

If you appreciated this, feel free to follow !

[![Thomas HeimLinkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/thomas-heim11/)
