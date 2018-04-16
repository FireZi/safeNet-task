var Token = artifacts.require("./Token.sol");

module.exports = function(deployer) {
  deployer.deploy(Token, "0x8226b1072dbd69b3ee7d9a1ab05dce1f6dbe1861");
};
