const HDWalletProvider = require('truffle-hdwallet-provider');
const Web3 = require('web3');
const compiledFile = require("./compile");
 
const interface = compiledFile.abi;
const bytecode = compiledFile.evm.bytecode.object;

const provider = new HDWalletProvider(
  'patch hundred credit grant picnic genius spatial volcano accident nut retire indicate diamond betray erupt disorder romance odor tobacco chest online unfold need offer',
  'https://rinkeby.infura.io/v3/ded4bfa88d3a459598cd03c0bbeaf535'
);


const web3 = new Web3(provider);

const deploy = async () => {
  const accounts = await web3.eth.getAccounts();

  console.log('Attempting to deploy from account', accounts[0]);

const result = await new web3.eth.Contract(interface)
     .deploy({data: '0x' + bytecode, arguments: ['Hi there!']}) // add 0x bytecode
     .send({from: accounts[0]});

  console.log('Contract deployed to', result.options.address);
};
deploy();
