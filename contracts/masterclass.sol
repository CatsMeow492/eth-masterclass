function sendMoney() public {
    investor = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    investor.transfer(2 ether);
    address payable investor2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    investor2.transfer(1.5 ether);
}
function getValues() public view returns(uint blockNumber, 
uint blockTimestamp,
address msgSender,
bytes calldata msgData) {
    // block number - uint
    // block timestamp - uint
    // msg sender - address
    // msg data - bytesreturn (block.number, block.timestamp, msg.sender, msg.data)
}
function payToContract() payable public {
    msgValue = msg.value;
}
fallback() public payable {
    
}