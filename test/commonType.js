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
    let desc = await commonType.getDesc();

    assert.equal(desc, 'Origianl Description', 'Can not get description');
  });

  it('Can get owner', async () => {
    const [owner] = accounts;
    const commonType = await CommonType.deployed();
    let _owner = await commonType.owner();

    assert.equal(_owner, owner);
  });

  it('Can Update desc', async () => {
    const commonType = await CommonType.deployed();
    await commonType.updateDesc('MJ is Awesome ~');
    let desc = await commonType.getDesc();

    assert.equal(desc, 'MJ is Awesome ~');
  });
});
