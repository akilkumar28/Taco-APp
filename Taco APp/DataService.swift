//
//  DataService.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import Foundation
import UIKit

protocol finishloading: class {
    func dataloaded()
}



class DataService {
    
    static let instance = DataService()
    
    weak var delegate: finishloading?
    
    var tacoArray = [Taco]()
    
    func loadDeliciousTacoData() {
        
        let path = Bundle.main.path(forResource: "TacoPOPData", ofType: "csv")!
        
        do {
            let csv = try CSV(contentsOfURL: path)
            
            let rows = csv.rows
//            print(rows)
            for row in rows {
                let productname1 = row["productName"]
                let proteinid1 = Int(row["proteinId"]!)
                let id1 = Int(row["id"]!)
                let shellid1 = Int(row["shellId"]!)
                let condimentid1 = Int(row["condimentsId"]!)
                
                tacoArray.append(Taco(ID: id1!, ProductName: productname1!, ShellId: shellid1!, ProteinId: proteinid1!, CondimentId: condimentid1!))
                
            }
//            print(tacoArray)
        } catch let err as NSError{
            print(err.debugDescription)
     
        }
        delegate?.dataloaded()
    }
    
    
}
