const { ethers, JsonRpcProvider } = require("ethers");
const fs = require("fs-extra");


async function main(){

    const provider = new JsonRpcProvider("https://polygon-mumbai.g.alchemy.com/v2/K59YdNGK95akCLJrA1m9nYPZ7JYNa8Me");
    const wallet = new ethers.Wallet("09a670370d9096c270d3a049e79696859e0ca6eb07866a7d77c3c6ccca9435ca", provider);

    const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8");
    const binary = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.bin", "utf8");
    const contract = new ethers.ContractFactory(abi, binary, wallet);
    const deployedDetails = await contract.deploy();
    console.log(deployedDetails);
    const deployReceipt = await deployedDetails.deployTransaction;
    console.log(deployReceipt);
    
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
})
/*
    -------------------------------------------------
    Step 1: create folder for workspace
    step 2: npm init
    step 3: npm install ethers
    step 4: import ethers
    step 5: crate main function
    -------------------------------------------------
    step 6: create provider
    step 7: create wallet
 
*/