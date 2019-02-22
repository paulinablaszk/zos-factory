'use strict';

module.exports = {
  compilers: {
    solc: {
      version: "0.4.24"
    }
  },
  networks: {
    local: {
      host: 'localhost',
      port: 9545,
      gas: 5000000,
      gasPrice: 5e9,
      network_id: '*'
    },
    ganache: {
      host: "localhost",
      port: 8545,
      network_id: "*",
      gas: 6000000,
      gasPrice: 10000000000
    }
  }
};