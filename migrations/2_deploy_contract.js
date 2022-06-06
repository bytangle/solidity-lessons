const PracticeContract = artifacts.require("PracticeContract");

module.exports = (deployer) => {
    deployer.deploy(PracticeContract);
}