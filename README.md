# Solidity: Insufficient Error Handling in Ether Transfers

This repository demonstrates a common error in Solidity: inadequate error handling when transferring Ether using the call() function. The `withdraw` function lacks robust checks for transfer failures, potentially leading to lost funds and unexpected behavior.  The solution shows how to properly handle potential errors and ensure the transaction's safety.

## Bug Description

The original `withdraw` function only checks if the sender has sufficient balance, neglecting to verify if the Ether transfer itself was successful.  The `call()` function returns a boolean indicating success, which must be checked for secure operations.

## Solution

The solution enhances error handling by verifying the `success` boolean returned by `call()`.  Appropriate error messages are included for informative feedback.
