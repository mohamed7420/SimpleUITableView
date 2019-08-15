//
//  ViewController.swift
//  SimpleUITableView
//
//  Created by Mohamed on 8/15/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var TABELVIEW: UITableView!
    
    private var data:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for incounter in 0...1000{
            data.append("\(incounter)")
        }
        
        TABELVIEW.dataSource = self
        TABELVIEW.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        
        let alertController = UIAlertController(title: "Alert", message: "select at item \(indexPath.row)", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(alertAction)
        
        self.present(alertController , animated: true , completion: nil)
         TABELVIEW.deselectRow(at: indexPath, animated: true)    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifier") as! CustomTableViewCell
        
        let text = data[indexPath.row]
        cell.labelText.text = text
        return cell
    }
}

