var Token = artifacts.require("./Token.sol");

module.exports = function(deployer) {
  deployer.deploy(Token, "0x627306090abab3a6e1400e9345bc60c78a8bef57");
};
