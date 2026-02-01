// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/*//////////////////////////////////////////////////////////////
                          MANUALTOKENS
//////////////////////////////////////////////////////////////*/
contract ManualToken {
    mapping(address => uint256) private sBalance;

    function name() public pure returns (string memory) {
        return "ManualToken";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether;
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return sBalance[_owner];
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        // require(sBalance[msg.sender] >= _value, "Insufficient balance");
        // sBalance[msg.sender] -= _value;
        // sBalance[_to] += _value;
        // return true;

        uint256 senderBalance = sBalance[msg.sender];
        require(senderBalance >= _value, "Insufficient balance");
        sBalance[msg.sender] -= _value;
        sBalance[_to] += _value;
        return true;
    }
}
