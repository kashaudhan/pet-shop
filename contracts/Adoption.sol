pragma solidity >=0.5.16;

contract Adoption {
    address[16] public adopters;
    mapping(uint => bool) isAdopted;

    function adopt(uint _petId) public returns(uint) {
        require(_petId >=0 && _petId <= 15);
        require(!isAdopted[_petId], "Already adopted");

        isAdopted[_petId] = true;
        adopters[_petId] = msg.sender;
        
        return _petId;
    }

    function getAdopters() public view returns(address[16] memory){
        return adopters;
    }
}