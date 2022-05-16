const ArrayMapping = artifacts.require('ArrayMapping');

contract('ArrayMapping', (accounts) => {
  const [owner, user1, user2, user3] = accounts;

  it('Shoud Add User into WhiteList Array', async () => {
    const arrayMapping = await ArrayMapping.deployed();
    await arrayMapping.addUserIntoWhiteListArray(user1);
    let _user = await arrayMapping.whiteListArray(BigInt(0));

    assert.equal(_user, user1);
  });
});
