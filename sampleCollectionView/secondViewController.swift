//
//  secondViewController.swift
//  sampleCollectionView
//
//  Created by Adithya Bharadwaj on 11/10/15.
//  Copyright © 2015 adithya. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.imageView.image = self.image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
