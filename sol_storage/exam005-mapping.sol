//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract exam5 {
  mapping(uint256=>uint256) private ageList;

  function setAgeList(uint256 _index, uint256 _age) public {
    ageList[_index] = _age;
  }

  function getAgeList(uint256 _index) public view returns(uint256) {
    return ageList[_index];
  }
}