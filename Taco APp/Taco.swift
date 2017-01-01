//
//  Taco.swift
//  Taco APp
//
//  Created by AKIL KUMAR THOTA on 1/1/17.
//  Copyright © 2017 AKIL KUMAR THOTA. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiments : Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _Id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiments!
    
    var Id: Int {
        get {
            return self._Id
        } set {
            self._Id = newValue
        }
    }
    
    var productName: String {
        get {
            return self._productName
        } set {
            self._productName = newValue
        }
    }
    
    var shellId: TacoShell {
        get {
            return self._shellId
        } set {
            self._shellId = newValue
        }
    }
    
    var proteinId: TacoProtein {
        get {
            return self._proteinId
        } set {
            self._proteinId = newValue
        }
    }
    
    var condimentId: TacoCondiments {
        get {
            return self._condimentId
        } set {
            self._condimentId = newValue
        }
    }
    
    init(ID: Int, ProductName: String, ShellId: Int, ProteinId: Int, CondimentId: Int){
        self.Id = ID
        self.productName = ProductName
        
        switch ShellId {
        case 2:
            self.shellId = TacoShell.Corn
        default:
            self.shellId = TacoShell.Flour
        }
        
        switch ProteinId {
        case 1:
            self.proteinId = TacoProtein.Chicken
        case 2:
            self.proteinId = TacoProtein.Brisket
        case 3:
            self.proteinId = TacoProtein.Fish
        default:
            self.proteinId = TacoProtein.Beef
        }
        
        switch CondimentId {
        case 2:
            self.condimentId = TacoCondiments.Plain
        default:
            self.condimentId = TacoCondiments.Loaded
        }
    }
}
