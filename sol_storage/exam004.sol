//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
	event FatherName(string name);
  function who() public virtual{
    emit FatherName('father');
  }
}

contract Mother {
	event MotherName(string name);
  function who() public virtual{
    emit MotherName('father');
  }
}

contract Son is Father, Mother () {
  event SonName(string name);
  function who() public override(Father, Mother) {
    super.who();
    emit SonName('son');
  }
}

// 뒤에 있는 mother로 덮어씌워짐