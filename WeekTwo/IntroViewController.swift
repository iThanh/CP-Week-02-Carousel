//
//  IntroViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/9/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    
    //Outlets
    @IBOutlet weak var introScrollFeed: UIScrollView!
    @IBOutlet weak var introScrollFeedImage: UIImageView!
    
    @IBOutlet weak var tileImage1: UIImageView!
    @IBOutlet weak var tileImage2: UIImageView!
    @IBOutlet weak var tileImage4: UIImageView!
    @IBOutlet weak var tileImage3: UIImageView!
    @IBOutlet weak var tileImage6: UIImageView!
    @IBOutlet weak var tileImage5: UIImageView!
    
    
    
    //View Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollFeed.contentSize = CGSizeMake(320, introScrollFeedImage.image!.size.height)
        introScrollFeed.delegate = self
        
        
        //Default Tile Rotation
        
        /*
        tileImage1.transform = CGAffineTransformMakeDegreeRotation(-10)
        tileImage2.transform = CGAffineTransformMakeDegreeRotation(-10)
        tileImage4.transform = CGAffineTransformMakeDegreeRotation(8)
        tileImage3.transform = CGAffineTransformMakeDegreeRotation(8)
        tileImage6.transform = CGAffineTransformMakeDegreeRotation(-6)
        tileImage5.transform = CGAffineTransformMakeDegreeRotation(6)
        */
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Functions - Scroll Events
    func scrollViewDidScroll(introScrollFeed: UIScrollView) {
        
        
        //Positioning and translating the tiles, r2Min = storyboard start position of tile
        let tileImage1Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 746)
        let tileImage1X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 100)
        let tileImage1Translate = CGAffineTransformMakeTranslation(tileImage1X, tileImage1Y)
        
        
        
        //Scaling the tiles, r2Min = start scale of tile as seen on storyboard
        let tileImage1ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.8)
        let tileImage1Scale = CGAffineTransformMakeScale(tileImage1ConvertedScale, tileImage1ConvertedScale)
        
        
        //Rotating the tiles
        let tileImage1ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 10, r2Max: 0)
        let tileImage1Rotate = CGAffineTransformMakeDegreeRotation(tileImage1ConvertedRotation)
        
        //Calling individual transformations (comment out unused transform constants above to be able to use)
        //tileImage1.transform = CGAffineTransformMakeTranslation(tileImage1X, tileImage1Y)
        //tileImage1.transform = CGAffineTransformMakeScale(tileImage1ConvertedScale, tileImage1ConvertedScale)
        //tileImage1.transform = CGAffineTransformMakeDegreeRotation(tileImage1ConvertedRotation)
        
        
        //Combining all three transformations
        tileImage1.transform = CGAffineTransformConcat(tileImage1Rotate, CGAffineTransformConcat(tileImage1Scale, tileImage1Translate))
        
        
    }
    
    
    
    
    
    //Functions - Button Events
    
    
    
    
    
    
}
