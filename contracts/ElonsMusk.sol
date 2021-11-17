pragma solidity 0.5.9;

import "./ElonsMusk/erc20/ERC20ExecuteExtension.sol";
import "./ElonsMusk/erc20/ERC20BaseToken.sol";
import "./ElonsMusk/erc20/ERC20BasicApproveExtension.sol";

contract ElonsMusk is ERC20ExecuteExtension, ERC20BasicApproveExtension, ERC20BaseToken {

  constructor(address elonsAdmin, address executionAdmin, address beneficiary) public {
    _admin = elonsAdmin;
    _executionAdmin = executionAdmin;
    _mint(beneficiary, 69420000000000);
  }

  /// @notice A descriptive name for the tokens
  /// @return name of the tokens
  function name() public view returns (string memory) {
    return "Elon`s Musk";
  }

  /// @notice An abbreviated name for the tokens
  /// @return symbol of the tokens
  function symbol() public view returns (string memory) {
    return "EMUSK";
  }
}
