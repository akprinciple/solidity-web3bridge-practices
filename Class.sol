// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;


contract Class{
    string public a;
    address public owner;
    uint public bal;
    // Struct
    struct Person{
        string name;
        uint8 age;
        // address wallet;
    }

    // Mapping
    mapping(address => uint) balances;
    // balances[0x000000] = 300;
    mapping(uint => address) balanc; //bal By Int Like    Age
    
function SetBalances() public {
    balances[msg.sender] = 300;
}
function setOwner()  public  {
    owner = msg.sender;
    bal += 100;
}
    // function setName () public {
    //    a ='Akeem';
    // }


    // Nested Array
    mapping (uint => mapping(address => bool)) public Vote;

    uint[4] public age; //Fixed array
    uint[] public tax; //Dynamic array


    Person[] public person;

    function setPerson() public {
        Person memory users = Person("John", 1);
        person.push(users);
    }

    uint[] public numbers = [1,2,3,4];

    function getLength() public view returns(uint){
        return numbers.length;
    }

    function removeNum() public {
        numbers.pop();
    }

    constructor() {
        owner = msg.sender;
    }
    
    modifier  AdminOnly (){
        require(msg.sender == owner, 'Invalid Owner');
        _;
    }
    function withdraw() public AdminOnly{

    }
}