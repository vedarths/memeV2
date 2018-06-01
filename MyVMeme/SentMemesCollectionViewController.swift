//
//  SentMemesCollectionViewController.swift
//  MyVMeme
//
//  Created by Vedarth Solutions on 5/20/18.
//  Copyright © 2018 Vedarth Solutions. All rights reserved.
//

import Foundation
import UIKit

class SentMemesCollectionViewController : UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource {
    
    var memes = [Meme]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionCell", for: ((indexPath as NSIndexPath) as IndexPath))
        
        return cell
    }
    
    
}

