// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

contract Mine{
    uint8 public amount = 190;
    bool public status;
    
    struct Person{
        string name;
        uint age;
    }
    Person[] public listOfPeople;
    function changeAmount(uint8 _amount) public  {
        amount = _amount;
    }
    function AddFive() public view returns (uint8) {
        // return amount = amount+5; 
        // This will not work because the functn is in a view state and
        // View functions does not allow for change in state.
        return amount + 5; //This does not change the state of the contract but only returns a value.
    }

    function AddNewPerson(string memory _name, uint _age) public {
        listOfPeople.push(Person(_name, _age));
    }
}