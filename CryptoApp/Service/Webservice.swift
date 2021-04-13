//
//  Webservice.swift
//  CryptoApp
//
//  Created by Semih Özsoy on 11.04.2021.
//

import Foundation


class Webservice {
    
    // CryptoCurrency'den gelen data JSON datası yani birden cok data geleceği için [] dizi şeklinde
    // almamız gerekiyor
    
    func downloadCurrencies(url: URL, completion: @escaping ([CryptoCurrency]?)->(Void))  {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                
               let crytoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)

                if let cryptoList = crytoList {
                    completion(cryptoList)
                    for crypto in cryptoList {
                   
                    }
                }
            }
        }.resume() // işlemi başlatmamıza yarıyan 
    }
}
