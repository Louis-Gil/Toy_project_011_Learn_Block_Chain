//SPDX-license-Identifier : MIT
pragma solidity >= 0.8.0 < 0.9.0;

contract event2 {
    event numberTracker1(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    uint256 num = 0;
    function pushEvent(string memory _str) public {
        emit numberTracker1(num, _str);
        emit numberTracker2(num, _str);
        num ++;
    }

}

// App.js
// sync function getEvent() {
// let events1 = await exam003.getPastEvents("numberTracker1", {
//     fromBlock: 1,
//     toBlock: "latest"
// });
// let events2 = await exam003.getPastEvents("numberTracker2", {
//     filter: {num: [2, 1]},
//     fromBlock: 1,
//     toBlock: "latest"
// });

// 1은 전체가져옴, 2는 필터 가능