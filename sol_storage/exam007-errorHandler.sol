//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

// 구버전
// pragma solidity >= 0.4.22 < 0.8.0;

contract exam7_1{
  function assertNow() public pure{
    assert(false);
  }
  function revertNow() public pure{
    revert("error!");
  }
  function requireNow() public pure{
    require(false, "occurred!");
  }
}