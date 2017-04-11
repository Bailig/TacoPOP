//
//  DataService.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-09.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func loadedData(tacos: [Taco])
}


class DataService {
    static let dataService = DataService()
    
    private init() { }
    
    weak var delegate: DataServiceDelegate?
    
    private var tacos = [Taco]()
    
    func loadTacoData() {
        // Chicken Tacos
        tacos.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shell: TacoShell.Flour, protein: TacoProtein.Chicken, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shell: TacoShell.Corn, protein: TacoProtein.Chicken, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shell: TacoShell.Flour, protein: TacoProtein.Chicken, condiment: TacoCondiment.Plain))
        tacos.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shell: TacoShell.Corn, protein: TacoProtein.Chicken, condiment: TacoCondiment.Plain))
        
        // Beef Tacos
        tacos.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shell: TacoShell.Flour, protein: TacoProtein.Beef, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shell: TacoShell.Corn, protein: TacoProtein.Beef, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shell: TacoShell.Flour, protein: TacoProtein.Beef, condiment: TacoCondiment.Plain))
        tacos.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shell: TacoShell.Corn, protein: TacoProtein.Beef, condiment: TacoCondiment.Plain))
        
        // Brisket Tacos
        tacos.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shell: TacoShell.Flour, protein: TacoProtein.Brisket, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shell: TacoShell.Corn, protein: TacoProtein.Brisket, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shell: TacoShell.Flour, protein: TacoProtein.Brisket, condiment: TacoCondiment.Plain))
        tacos.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shell: TacoShell.Corn, protein: TacoProtein.Brisket, condiment: TacoCondiment.Plain))
        
        // Fish Tacos
        tacos.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shell: TacoShell.Flour, protein: TacoProtein.Fish, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shell: TacoShell.Corn, protein: TacoProtein.Fish, condiment: TacoCondiment.Loaded))
        tacos.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shell: TacoShell.Flour, protein: TacoProtein.Fish, condiment: TacoCondiment.Plain))
        tacos.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shell: TacoShell.Corn, protein: TacoProtein.Fish, condiment: TacoCondiment.Plain))
        
        delegate?.loadedData(tacos: tacos)
    }
}
