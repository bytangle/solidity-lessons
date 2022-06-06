// SPDX-License-Identifier: GPL-3.0

/* For practice */

pragma solidity >= 0.7.0 < 0.9.0;

library ArrayIterator {

    function iterate(
        uint size,
        uint skip,
        function(uint, uint) pure returns (uint) _skipFn
    ) internal pure returns (uint[] memory tempArr) {
        if(size < 0)
            size = 0;
        tempArr = new uint[](size);

        for(uint i = 0; i < size; i++) {
            tempArr[i] = _skipFn(i, skip);
        }
    }

}

contract PracticeContract {

    function skipper(uint _i, uint _skip) internal pure returns (uint) {
        return _i*_skip;
    }

    function createUintArr(uint _size, uint _skip) public pure returns (uint[] memory) {
        return ArrayIterator.iterate(_size, _skip, skipper);
    }
}