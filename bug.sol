```solidity
function withdraw(uint amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    (bool success, ) = payable(msg.sender).call{value: amount}('');
    require(success, "Transfer failed");
    balances[msg.sender] -= amount;
}
```