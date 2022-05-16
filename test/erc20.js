const ERC20 = artifacts.require('ERC20');

contract('ERC20', (accounts) => {
  it('Should deploy ERC20 contract', async () => {
    const erc20 = await ERC20.deployed();
    assert.notEqual(erc20.address, '', 'ERC20 deployment failed');
  });
});
