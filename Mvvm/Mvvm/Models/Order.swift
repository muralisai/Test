//
//  Order.swift
//  Mvvm
//
//  Created by Murali Sai Tummala on 01/10/19.
//  Copyright © 2019 Voxvalley technologies. All rights reserved.
//

import Foundation

enum CofeeType:String{
    case capuccino
    case expressive
    case latto
    case cortado
}

enum CofeeSize : String {
    case small
    case medium
    case large
}

struct Order : Codable{
    
    let name : String
    let email : String
    let type : CofeeType
    let size : CofeeSize
}
