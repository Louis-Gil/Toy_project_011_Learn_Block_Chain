//SPDX-license-Identifier : GPL-30
//0.8 이전만 오버플로우
pragma solidity >= 0.7.0 < 0.9.0;

library safeMatch{ 
	function add(uint8 a, uint8 b) internal pure returns (uint8) {
		require(a+b >= a, "safeMatch : addition overflow");
		return a + b;
	}
}

contract exam{
	using safeMatch for uint8;
	uint8 public a;

	function becomeOverFlow(uint8 _num1, uint8 _num2) public {
		a = _num1.add(_num2);
		//a = safeMatch.add(_num1, _num2);
	}
}