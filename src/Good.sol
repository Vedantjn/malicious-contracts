// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import "./Helper.sol";

// contract Good {
//     Helper public helper;
//     constructor() {
//         helper = new Helper();
// }

contract Good {
    Helper helper;
    constructor(address _helper) payable {
        helper = Helper(_helper);
    }

    function isUserEligible() public view returns(bool) {
        return helper.isUserEligible(msg.sender);
    }

    function addUserToList() public  {
        helper.setUserEligible(msg.sender);
    }

    fallback() external {}
}