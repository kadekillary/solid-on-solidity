pragma solidity ^0.0.0;

interface ERC20 {
    function totalSupply() external view returns (uint _totalSupply);
    function balanceOf(address _owner) external view returns (uint balance);
    function transfer(address _to, uint _value) external returns (bool success);
    function transferFrom(address _from, address _to, uint _value) external returns (bool success);
    function approve(address _spender, uint _value) external returns (bool success);
    function allowance(address _owner, address _spender) external view returns (uint remaining);
    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _owner, address indexed _spender, uint _value);
}

contract Loeker is ERC20 {
    string public constant symbol = "LKR";
    string public constant name = "Loeker";
    uint8 public constant decimals = 18;

    uint private constant _totalSupply = 1000000000000000000000000;

    mapping (address => uint) private _balanceOf;

    mapping (address => mapping (address => uint)) private _allowances;

    constructor() public {
        _balanceOf[msg.sender] = _totalSupply;
    }

    function totalSupply() public view override returns (uint _totalSupply) {
        _totalSupply = _totalSupply;
    }

    function balanceOf(address _addr) public view override returns (uint balance) {
        return _balanceOf[_addr];
    }

    function transfer(address _to, uint _value) public override returns (bool success) {
        if (_value > 0 && _value <= balanceOf(msg.sender)) {
            _balanceOf[msg.sender] -= _value;
            _balanceOf[_to] += _value;
            emit Transfer(msg.sender, _to, _value);
            return true;
        }
        return false;
    }

    function transferFrom(address _from, address _to, uint _value) public override returns (bool success) {
        if (_allowances[_from][msg.sender] > 0 && _value > 0 && _allowances[_from][msg.sender] >= value && !isContract(_to)) {
            _balanceOf[_from] -= _value;
            _balanceOf[_to] += _value;
            emit Transfer(_from, _to, _value);
            return true;
        }
        return false;
    }

    func isContract(address _addr) public view returns (bool) {
        uint codeSize;

        assembly {
            codeSize := extcodesize(_addr)
        }

        return codeSize > 0;
    }

    function approve(address _spender, uint _value) external override returns (bool success) {
        _allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) external override view returns (uint remaining) {
        return _allowances[_owner][_spender];
    }

}
