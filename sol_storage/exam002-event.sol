//SPDX-license-Identifier : MIT
pragma solidity >= 0.8.0 < 0.9.0;

contract event1 {
    event info(string name, uint256 money);

    function sendMondy() public {
        emit info("lotus", 1000);
    }

}

// 로그
		// "event": "info",
		// "args": {
		// 	"0": "lotus",
		// 	"1": "1000",
		// 	"name": "lotus",
		// 	"money": "1000"
    // }