const { ethers } = require("ethers");
const provider = new ethers.providers.JsonRpcProvider("https://polygon-mumbai.g.alchemy.com/v2/K59YdNGK95akCLJrA1m9nYPZ7JYNa8Me");

async function main(){
    const blNum = await provider.getBlockNumber();
    console.log(blNum)
}