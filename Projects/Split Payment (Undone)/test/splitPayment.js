const SplitPayment = artifacts.require('SplitPayment');

contract('SplitPayment', (accounts) => {
  let splitPayment = null;
  before(async () => {
    splitPayment = await SplitPayment.deployed();
  });
it('should split payment', async () =>{
	const recipients = [accounts[1], accounts[2], accounts[3]];
	const amounts = [40, 20 , 30];
	const intialBalances = await promise.all({recipients.map});

});

});
