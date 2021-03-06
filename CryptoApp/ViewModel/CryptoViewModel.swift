//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Semih Özsoy on 12.04.2021.
//

import Foundation


struct CryptoListViewModel {
    
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numbersOfRowsInSection()->Int{
        
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index:Int)->CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
 
    
}

/*

extension CryptoListViewModel {
    
 // Data manipulation'ı extension key i ile gerçekleştirebileceğimizi görmüş olduk.
    
    func numbersOfRowsInSection()->Int{
        
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index:Int)->CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}
 
 */


struct CryptoViewModel {
    
    let cryptoCurrency : CryptoCurrency
    
    var name: String {
        return self.cryptoCurrency.currency ?? ""
    }
    
    var price: String {
        return self.cryptoCurrency.price ?? ""
    }
}

/*

extension CryptoViewModel {
    var name: String {
        return self.cryptoCurrency.currency ?? ""
    }
    
    var price: String {
        return self.cryptoCurrency.price ?? ""
    }
}
 
 */
