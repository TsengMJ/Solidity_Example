const CommonType = artifacts.require('CommonType');

contract('CommonType', (accounts) => {
  it('Should deploy CommonType contract', async () => {
    const commonType = await CommonType.deployed();
    assert.notEqual(
      commonType.address,
      '',
      'CommonType contract deployment failed'
    );
  });

  it('Can get description', async () => {
    const commonType = await CommonType.deployed();
    let desc = await commonType.desc();

    assert.equal(desc, 'Origianl Description', 'Can not get description');
  });
});
