//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Semih Özsoy on 12.04.2021.
//

import Foundation


struct CryptoListViewModel {
    let cryptoCurrencyList: [CryptoCurrency]
    
    func numberOfRowsInSection()->Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index: Int)-> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
    
    
}

struct CryptoViewModel {
    
    let cryptoCurrency: CryptoCurrency
    
    var name: String {
        return self.cryptoCurrency.currency
    }
    
    var prices: String {
        return self.cryptoCurrency.prices
    }
    
}
