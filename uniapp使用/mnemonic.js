'use strict'

import { ethers } from 'ethers';
const bip39 = require('bip39');

const validateMnemonic = mnemonic=>{
	try{
		var Wallet = ethers.Wallet.fromMnemonic(mnemonic);
		var privateKey = Wallet.privateKey;
		// console.log("ETH私钥：",privateKey)
		var address = Wallet.address;
		// console.log("ETH地址：",address)
		var publicKey = Wallet.publicKey;
		// console.log("ETH公钥：",publicKey)
		return {
			mnemonic:mnemonic,
			address:address,
			privateKey:privateKey,
			publicKey:publicKey
		}
	}catch(e){
		console.log(e)
		return false
	}
}

const createMnemonic = ()=>{
	console.log('jjjj') 
	// 生成新的助记词、私钥、地址
	try{
		var wallet = ethers.Wallet.createRandom();
		// console.log('wallet',wallet)
		let mnemonic = wallet.mnemonic;
		var address = wallet.address;
		// console.log("ETH地址：",address)
		var privateKey = wallet.privateKey;
		// console.log("ETH私钥：",privateKey)
		var publicKey = wallet.publicKey;
		// console.log("ETH公钥：",publicKey)
		return {
			mnemonic:mnemonic.phrase,
			address:address,
			privateKey:privateKey,
			publicKey:publicKey
		}
	}catch(e){
		console.log(e)
		return false
	}
}

module.exports = {
	mnemonic: bip39.generateMnemonic(),
	createMnemonic,
	validateMnemonic
}




