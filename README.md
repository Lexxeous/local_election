<!-- Local Election README -->

# <img src=".pics/lexx_headshot_clear.png" width="100px"/> Lexxeous's Smart Contract Election: <img src=".pics/vote_logo.png" width="100"/>

## Credit

The content contained in this repository is a result of following [The Ultimate Ethereum Dapp Tutorial (How to Build a Full Stack Decentralized Application Step-By-Step)](https://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial). If you do not want to follow along with the article, you can find the original YouTube video, by Dapp University, [here](https://www.youtube.com/watch?v=3681ZYbDSSk).

## Summary

This application will be using a locally hosted Ethereum blockchain network with the help of Ganache and Truffle. This local network will be provided with fake accounts and fake Ether, on port `7545` by default. A simple smart contract called `Election.sol` is written with a constructor, a candidate model, voter and candidate mappings, & `add_candidate()` and `vote()` functions. 

There is also a file `./test/election.js` that takes advantage of the [Mocha testing framework](https://mochajs.org/) and the [Chai assertion library](https://www.chaijs.com/) to ensure proper functionality of the smart contract before deployment. The file can be ran with `$ truffle test`.

Migrations are written to deploy the application/smart contract to the local blockchain, while Ganache is running. Deployment can be done by running `truffle migrate --reset`. 

After installing the Metamask extension and creating an account, one of the fake accounts from Ganache can be imported into Metamask by providing the private key. Instead of trying to run the application on the main Ethereum network (Mainnet), a custom network/RPC can be added to Metamask by providing a custom name, the network URL (http://127.0.0.1:7545), and the chain ID (1337 for me).

After migrating/deploying the smart contract to the local blockchain, the HTMl, CSS, & JS sources can be deployed in development mode by running `npm run dev`. This will host the NodeJS web application on `http://localhost:3000` by default.

## Prerequisites

 * [NodeJS](https://nodejs.org/en/)

 > Run `npm install` to get all of the necessary NodeJS packages.

 * [Ganache](https://www.trufflesuite.com/ganache)
 * [Truffle](http://truffleframework.com/)
 * [Metamask](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en) (Google Chrome Extension)