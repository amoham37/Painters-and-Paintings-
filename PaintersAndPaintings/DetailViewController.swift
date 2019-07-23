//
//  DetailViewController.swift
//  PaintersAndPaintings
//
//  Created by Ahmet Mohammed on 3/9/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{

    @IBOutlet weak var titleLabel: UILabel!
   
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!

    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var art: Art?

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let w = art {
            titleLabel.text = w.name
            label1.text = w.caption1
            label2.text = w.caption2
            image1.image = w.image11
            image2.image = w.image22
            
        }
    }
    
   
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

