pragma solidity >=0.7.0 < 0.9.0;

contract Basics {
    // integer, string, boo, bytes
    // arrays, enum, struct, mapping (dictionary in python)
    int public a = 4; // default = 0
    int public tempt1=10;
    int public temp2=20;
    address public owner;
    int public sum;
    int9 public b=10;
    int16 public c=20;
    // unsigned integers
    // uint8 = 256 -0 to 255
    uint 8 public d = 30;
    uint public e=19;
    // address
    address payable public investor;
    // string
    string public name = "Raghu"; // default - ""
    // bool
    bool public tf = true; //default - false
    // bytes
    bytes public byteSample = "abc"; // 0x616263
    bytes public byteSample2 = "ABC"; // 0x414243
    // arrays - combination of same type of data
    string [] public students ["Raghu", "John"]; //dynamic arrays
    string [15] public students2; // fixed length arrays
    int[] public sampleint=[1,2,3,4];
    // push, pop, length - are possible in solidity also
    // mapping
    mapping (string => bool) public map;
    uint public msgValue;
    //enum - Enumeration - save storage, confine options for users
    enum Cities {LosAngeles, California, SanJose, Toronto};
    Cities public c1 = Cities.LosAngeles;
    Cities public c2 = Cities.SanJose;
    // struct
    struct Student {
        string name;
        bool attendance;
        int rollNo;
        int marks;
    }

Student public student1;
Student public student2;
Student public student3;
// Functions

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
// Fallback
fallback () external payable {
    msg.sender.transfer(msg.value); // optional
}