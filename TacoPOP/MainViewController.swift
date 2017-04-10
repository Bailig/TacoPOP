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
    
    let tacos: [Taco] = DataService.tacos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        DataService.delegate = self
        
        headerView.addDropShadow()
        
        let nib = UINib(nibName: "TacoCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCollectionViewCell")
    }

    func tacoDataLoaded() {
        print("taco data loaded!")
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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCollectionViewCell", for: indexPath) as? TacoCollectionViewCell else {
            print("error: reusable cell assignemnt failed!")
            return UICollectionViewCell()
        }
        cell.taco = tacos[indexPath.row]
        return cell
    }
    
    
}
