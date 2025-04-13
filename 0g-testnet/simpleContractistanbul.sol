// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Interface ERC20 minimal
interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TokenSender {
    IERC20 public token;

    // Token ERC20 diset lewat constructor saat kontrak di-deploy
    constructor(address tokenAddress) {
        token = IERC20(tokenAddress);
    }

    // Fungsi kirim token ke penerima
    function sendToken(address recipient, uint256 amount) public returns (bool) {
        require(token.transfer(recipient, amount), "Transfer failed");
        return true;
    }
}
