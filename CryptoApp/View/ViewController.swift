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
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrytoCell", for: indexPath) as! CryptoTableViewCell
        return cell 
    }
    


}

