//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract exam6 {
  struct Character {
    uint256 age;
    string name;
  }

  function createCharacter(uint256 _age, string memory _name) pure public returns(Character memory) {
    Character memory newCharacter = Character(_age, _name);
    return newCharacter;
  }
}