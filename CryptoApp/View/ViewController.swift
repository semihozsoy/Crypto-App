//
//  ViewController.swift
//  CryptoApp
//
//  Created by Semih Özsoy on 11.04.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    @IBOutlet weak var tableView: UITableView!
    private var cryptoListViewModel : CryptoListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
  
       getData()
        
    }
    
    func getData(){
        
        let url = URL(string:   "https://api.nomics.com/v1/currencies/ticker?key=3176b6783f605328be697faceefa8833&interval=1d,30d&convert=EUR&per-page=100&page=1")!
        
        Webservice().downloadCurrencies(url:url) { (cryptos) in
            if let cryptos = cryptos {
               
                self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: cryptos)
                
                DispatchQueue.main.sync {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cryptoListViewModel == nil ? 0: self.cryptoListViewModel.numbersOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrytoCell", for: indexPath) as! CryptoTableViewCell
        
        let cryptoViewModel = self.cryptoListViewModel.cryptoAtIndex(index: indexPath.row)
        
        cell.priceText.text = cryptoViewModel.price
        cell.currencyText.text  = cryptoViewModel.name
        return cell 
    }
    


}

