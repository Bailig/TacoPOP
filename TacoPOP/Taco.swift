//
//  Taco.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-09.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import Foundation


enum TacoShell {
    case Flour
    case Corn
}

enum TacoProtein {
    case Beef
    case Chicken
    case Brisket
    case Fish
}

enum TacoCondiment {
    case Loaded
    case Plain
}

struct Taco {
    private(set) var id: Int!
    private(set) var productName: String!
    private(set) var shell: TacoShell!
    private(set) var protein: TacoProtein!
    private(set) var condiment: TacoCondiment!
    
//    init(id: Int, productName: String, shell: TacoShell, protein: TacoProtein, condiment: TacoCondiment) {
//        self.id = id
//    }
}
