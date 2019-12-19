//
//  OrdersTableViewController.swift
//  Mvvm
//
//  Created by Murali Sai Tummala on 27/09/19.
//  Copyright © 2019 Voxvalley technologies. All rights reserved.
//

import Foundation
import UIKit

class OrdersTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func populateOrders(){
        
        guard let url = URL(string: "") else {
            fatalError("URL was incorrect")
            return
        }
        
        let resource = Resource<[Order]>(url: url)
        Webservice().load(resource: resource) { Result in
            
            switch Result{
                
            case .success(let orders):
                print("\(orders)")
                break
                
            case .failure(let error):
                print("\(error)")
                break
                
            }
        }
    }
}
