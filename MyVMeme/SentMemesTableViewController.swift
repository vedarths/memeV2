//
//  SentMemesViewController.swift
//  MyVMeme
//
//  Created by Vedarth Solutions on 5/20/18.
//  Copyright © 2018 Vedarth Solutions. All rights reserved.
//

import Foundation
import UIKit

class SentMemesTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var memes = [Meme]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = meme.description
        cell.imageView?.image = meme.memedImage
        return cell
    }
    
    
    
}
