pragma solidity ^0.7.3;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
 

contract Token is ERC20 {
    constructor() ERC20('SashToken', 'SSHT') {}
}

contract Token2 is ERC20 {
    constructor() ERC20('SashToken', 'SSHT') {
        _mint(msg.sender, 1000);

    }
}

contract Token3 is ERC20 {
    address public admin;  

    constructor() ERC20('SashToken', 'SSHT') {
        admin = msg.sender;
    }

    function mint(address _to, uint _amount) external {
        require(msg.sender == admin, 'only adming');
        _mint(_to, _amount);
    }
}


contract Token4 is ERC20 {
    constructor() ERC20('SashToken', 'SSHT') {}

    function faucet(address _to, uint _amount) external {
        _mint(_to, _amount);
    }
}