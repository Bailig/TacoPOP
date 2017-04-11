//
//  MainViewController.swift
//  TacoPOP
//
//  Created by Bailig Abhanar on 2017-04-09.
//  Copyright © 2017 Bailig Abhanar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, DataServiceDelegate {

    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataService = DataService.dataService
    
    var tacos: [Taco]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        dataService.delegate = self
        dataService.loadTacoData()
        
        headerView.addDropShadow()
        // old way without pop
//        let nib = UINib(nibName: "TacoCollectionViewCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCollectionViewCell")
        
        collectionView.register(TacoCollectionViewCell.self)
    }

    
    func loadedData(tacos: [Taco]) {
        self.tacos = tacos
        self.tacos.shuffle()
    }

}


extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tacos.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // old way without pop
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCollectionViewCell", for: indexPath) as? TacoCollectionViewCell else {
//            print("error: reusable cell assignemnt failed!")
//            return UICollectionViewCell()
//        }
//        cell.taco = tacos[indexPath.row]
//        return cell
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCollectionViewCell
        cell.taco = tacos[indexPath.row]
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? TacoCollectionViewCell else {
            fatalError("TacoCollectionViewCell at indexPath row \(indexPath.row) failed!")
        }
        cell.shake()
    }
    
}
