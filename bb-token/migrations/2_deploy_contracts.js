var Token = artifacts.require("./Token.sol");

module.exports = function(deployer) {
  deployer.deploy(Token, "b81d5ec7a8ce67dc4601f72fc3d701ff71f2c513");
};
