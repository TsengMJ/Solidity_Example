const Empty = artifacts.require('Empty');

contract('Empty', (accounts) => {
  it('Should deploy Empty contract', async () => {
    const empty = await Empty.deployed();
    assert.notEqual(empty.address, '', 'Empty contract deployment failed');
  });
});
