//
//  ViewController.swift
//  CryptoApp
//
//  Created by Semih Özsoy on 11.04.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let url = URL(string: "https://api.nomics.com/v1/currencies/sparkline?key=3176b6783f605328be697faceefa8833&ids=BTC,ETH,XRP&start=2021-04-10T00%3A00%3A00Z")!
        
        Webservice().downloadCurrencies(url:url) { (cryptos) in
            if let cryptos = cryptos {
               
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrytoCell", for: indexPath) as! CryptoTableViewCell
        return cell 
    }
    


}

