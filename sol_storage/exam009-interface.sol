//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

interface ItemInfo {
  struct item {
    string name;
    uint256 price;
  }
  function addItemInfo(string memory _name, uint256 _price) external;
  function getItemInfo(uint256 _id) external view returns(item memory);
}

contract exam9 is ItemInfo {
  item[] public itemList;
  function addItemInfo(string memory _name, uint256 _price) override public {
    itemList.push(item(_name, _price));
  }
  function getItemInfo(uint256 _index) override public view returns(item memory) {
    return itemList[_index];
  }
}