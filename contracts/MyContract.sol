pragma solidity ^0.4.24;

import "zos-lib/contracts/Initializable.sol";
import "zos-lib/contracts/application/App.sol";

contract MyContract is Initializable {
    App private app;

    function initialize(App _app) initializer public {
        app = _app;
    }

    function createNewContract(string packageName, string contractName, address admin, bytes data) public returns(address) {
        return app.create(packageName, contractName, admin, data);
    }
    
}