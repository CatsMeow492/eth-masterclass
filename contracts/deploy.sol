pragma solidity 0.6.12;

contract Toyota {
    Car public newCar;
    // function deployCar and call it
    function deploy() public{
    Car public newCar = Car();
    }
}

contract Car {
    string public color;
}