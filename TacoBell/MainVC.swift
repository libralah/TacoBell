//
//  MainVC.swift
//  TacoBell
//
//  Created by Hung Nguyen on 5/31/17.
//  Copyright © 2017 Luvdub Nation. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var headerView: HeaderView!

    @IBOutlet weak var collectionView: UICollectionView!

    var ds: DataServiceDelegate = DataServiceDelegate.instance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.shadow()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        ds.loadTacos()
        ds.tacos.shuffle()
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        collectionView.register(TacoCell.self)
        
        
    }




}

extension MainVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            cell.configureCell(taco: ds.tacos[indexPath.row])
//            return cell
//        }
//        return UICollectionViewCell()
        
        let cell = collectionView.dequeueCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacos[indexPath.row])
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
}

