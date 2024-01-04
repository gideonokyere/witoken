require("@nomicfoundation/hardhat-toolbox");
require('@openzeppelin/hardhat-upgrades');
require('dotenv').config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  networks:{
    sepolia:{
      apiKey:process.env.SEPOLIA_URL,
      accounts:[process.env.ACCOUNT_SECRATE_KEY]
    }
  },
  etherscan:{
    apiKey:process.env.ETHERSCAN_API
  }
};
