//
//  ViewController.swift
//  sampleCollectionView
//
//  Created by Adithya Bharadwaj on 11/10/15.
//  Copyright © 2015 adithya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionview: UICollectionView!
    
    var appleProducts = ["Macbook", "Iphone", "Ipad", "Ipod"]
    var appleImage = [UIImage(named: "pug1.jpg"), UIImage(named: "pug2.jpg"), UIImage(named: "pug3.jpg"), UIImage(named: "pug4.jpg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! newCollectionViewCell
        cell.imageLabel.image = self.appleImage[indexPath.row]
        cell.textLabel.text = self.appleProducts[indexPath.row]
        
        return cell
        
        
        
        
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
     
       self.performSegueWithIdentifier("showImage", sender: self)
        
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appleProducts.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage"
        {
            let indexpaths = self.collectionview.indexPathsForSelectedItems()
            let indexpath = indexpaths![0] as NSIndexPath
            
            let vc = segue.destinationViewController as! secondViewController
            vc.image = self.appleImage[indexpath.row]!
            vc.title = self.appleProducts[indexpath.row]
        }
            
        
        
        
    }
}

