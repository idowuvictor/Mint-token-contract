// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

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

    function transferToken(address _to,uint256 _amount) public {
        _transfer(msg.sender, _to, _amount);


    }
   
}