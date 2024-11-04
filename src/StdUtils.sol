// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

abstract contract StdUtils {
    /// comment
    function getZKSyncBytecodeHash(
        bytes memory code
    ) internal pure returns (bytes32) {
        require(code.length >= 100, "Data must be at least 100 bytes");

        bytes32 result;
        // Load 32 bytes starting from the 68th byte
        assembly {
            result := mload(add(code, 68)) // 68 + 32 = 100
        }
        return result;
    }
}
