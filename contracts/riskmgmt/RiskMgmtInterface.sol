pragma solidity ^0.4.11;

import '../dependencies/ERC20.sol';

/// @title RiskMgmtInterface Contract
/// @author Melonport AG <team@melonport.com>
/// @notice This is to be considered as an interface on how to access the underlying RiskMgmt Contract
/* Remark: Checks for:
 *  1) Liquidity: All positions have to be fairly simple to liquidate.
 *    E.g. Cap at percentage of 30 day average trading volume of this pair
 *  2) Market Impact: If w/in above liquidity restrictions, trade size also
 *    restricted to have market impact below certain threshold
 *  3) Best execution: Ensure the best execution possible for Melon fund
 *    investors' orders.
 */
contract RiskMgmtInterface {

    function isExchangeMakePermitted(
        ERC20   haveToken,
        ERC20   wantToken,
        uint    haveAmount,
        uint    wantAmount,
        uint    referencePrice
    )
        returns (bool)
    {}

    function isExchangeTakePermitted(
        ERC20   haveToken,
        ERC20   wantToken,
        uint    haveAmount,
        uint    wantAmount,
        uint    referencePrice,
        address orderOwner
    )
        returns (bool)
    {}
}