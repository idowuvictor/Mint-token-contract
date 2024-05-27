# project tittle 
NameKeeperToken 
Description 
A basic ERC-20 token contract named NameKeeperToken,This project will write a smart contract to create your own ERC20 token and deploy it
using a Remix.the contract owner will be able to mint tokens to a provided address and any user should be able to burn and transfer tokens. 
ERC-20 Details: 
Symbol: NKT Name: NameKeeperToken Decimals: 16
Executing program 
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/. 
Once you are on the Remix website, create a new file by clicking on the “+” icon in the left-hand sidebar. Save the file with a .sol extension (e.g.,
NameKeeperToken.sol). Copy and paste the following code into the file: 
// SPDX-License-Identifier: MIT pragma solidity ^0.8.20; import “@openzeppelin/contracts/token/ERC20/ERC20.sol”; 
contract NameKeeperToken is ERC20 { 
address Owner;
 modifier onlyOwner(){
require(msg.sender == Owner, "Not Owner");
_;
}
 constructor() ERC20("NameKeeperToken", "NKT") {
Owner = msg.sender;
_mint(address(this), 200000 * 20 ** 16);
}
 function mint(address _to, uint256 _amount) public onlyOwner{
uint256 balance = balanceOf(address(this));
require(balance >= _amount, "Insufficient Token Balance");
_transfer(address(this), _to, _amount);
}
 function burn(uint256 _value) external {
_burn(msg.sender, _value);
}

} 
To compile the code, click on the “Solidity Compiler” tab in the left-hand sidebar. Make sure the “Compiler” option is set to “0.8.20” (or another
compatible version), and then click on the “Compile NameKeeperToken.sol” button. 
Once the code is compiled, you can deploy the contract by clicking on the “Deploy & Run Transactions” tab in the left-hand sidebar. Select the “
NameKeeperToken” contract from the dropdown menu, and then click on the “Deploy” button. 
Once the contract is deployed, you can interact with it by seeing all the function in the contract like decimals, name, symbol,totalSupply with
others token address where to Transfer from to another account then you can also mint in the contract. 
# Authors 
Metacrafter Chris @metacraftersi
