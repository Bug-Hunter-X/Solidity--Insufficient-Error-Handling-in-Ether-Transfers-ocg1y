```solidity
function withdraw(uint amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    (bool success, bytes memory data) = payable(msg.sender).call{value: amount}('');
    require(success, "Transfer failed");
    if (data.length > 0) {
        // Handle returned data if necessary
    }
    balances[msg.sender] -= amount;
}
```