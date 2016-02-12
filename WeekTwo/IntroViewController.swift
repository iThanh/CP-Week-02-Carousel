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
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Functions - Scroll Events
    func scrollViewDidScroll(introScrollFeed: UIScrollView) {
        
        
        //Positioning and translating the tiles, r2Min = storyboard start position of tile
        let tileImage1Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 284)
        let tileImage1X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 76)
        let tileImage1Translate = CGAffineTransformMakeTranslation(tileImage1X, tileImage1Y)
        
        
        let tileImage2Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 247)
        let tileImage2X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: -47)
        let tileImage2Translate = CGAffineTransformMakeTranslation(tileImage2X, tileImage2Y)
        
        let tileImage3Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 410)
        let tileImage3X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: -13)
        let tileImage3Translate = CGAffineTransformMakeTranslation(tileImage3X, tileImage3Y)
        
        let tileImage4Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 387)
        let tileImage4X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: -81)
        let tileImage4Translate = CGAffineTransformMakeTranslation(tileImage4X, tileImage4Y)
        
        let tileImage5Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 497)
        let tileImage5X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 107)
        let tileImage5Translate = CGAffineTransformMakeTranslation(tileImage5X, tileImage5Y)
        
        let tileImage6Y = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 482)
        let tileImage6X = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 0, r2Max: 103)
        let tileImage6Translate = CGAffineTransformMakeTranslation(tileImage6X, tileImage6Y)
        
        
    
        
        //Scaling the tiles, r2Min = start scale of tile as seen on storyboard
        let tileImage1ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 1.0)
        let tileImage1Scale = CGAffineTransformMakeScale(tileImage1ConvertedScale, tileImage1ConvertedScale)
        
        
        let tileImage2ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.5)
        let tileImage2Scale = CGAffineTransformMakeScale(tileImage2ConvertedScale, tileImage2ConvertedScale)
        
        let tileImage3ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.5)
        let tileImage3Scale = CGAffineTransformMakeScale(tileImage3ConvertedScale, tileImage3ConvertedScale)
        
        let tileImage4ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.5)
        let tileImage4Scale = CGAffineTransformMakeScale(tileImage4ConvertedScale, tileImage4ConvertedScale)
        
        let tileImage5ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.5)
        let tileImage5Scale = CGAffineTransformMakeScale(tileImage5ConvertedScale, tileImage5ConvertedScale)
        
        let tileImage6ConvertedScale = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 1, r2Max: 0.5)
        let tileImage6Scale = CGAffineTransformMakeScale(tileImage6ConvertedScale, tileImage6ConvertedScale)
        
        
        
        
        //Rotating the tiles
        let tileImage1ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: -10, r2Max: 0)
        let tileImage1Rotate = CGAffineTransformMakeDegreeRotation(tileImage1ConvertedRotation)
        
        let tileImage2ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: -10, r2Max: 0)
        let tileImage2Rotate = CGAffineTransformMakeDegreeRotation(tileImage2ConvertedRotation)
        
        let tileImage3ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 8, r2Max: 0)
        let tileImage3Rotate = CGAffineTransformMakeDegreeRotation(tileImage3ConvertedRotation)
        
        let tileImage4ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 8, r2Max: 0)
        let tileImage4Rotate = CGAffineTransformMakeDegreeRotation(tileImage4ConvertedRotation)
        
        let tileImage5ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: 6, r2Max: 0)
        let tileImage5Rotate = CGAffineTransformMakeDegreeRotation(tileImage5ConvertedRotation)
        
        let tileImage6ConvertedRotation = convertValue(introScrollFeed.contentOffset.y, r1Min: -20, r1Max: 548, r2Min: -6, r2Max: 0)
        let tileImage6Rotate = CGAffineTransformMakeDegreeRotation(tileImage6ConvertedRotation)
        
        
        
        
        //Calling individual transformations (comment out unused transform constants above to be able to use)
        //tileImage1.transform = CGAffineTransformMakeTranslation(tileImage1X, tileImage1Y)
        //tileImage1.transform = CGAffineTransformMakeScale(tileImage1ConvertedScale, tileImage1ConvertedScale)
        //tileImage1.transform = CGAffineTransformMakeDegreeRotation(tileImage1ConvertedRotation)
        
        
        tileImage1.transform = CGAffineTransformMakeScale(1, 1.2)
        tileImage1.transform = CGAffineTransformMakeDegreeRotation(10)
        
        
        //Combining all three transformations
        tileImage1.transform = CGAffineTransformConcat(tileImage1Rotate, CGAffineTransformConcat(tileImage1Scale, tileImage1Translate))
        tileImage2.transform = CGAffineTransformConcat(tileImage2Rotate, CGAffineTransformConcat(tileImage2Scale, tileImage2Translate))
        tileImage3.transform = CGAffineTransformConcat(tileImage3Rotate, CGAffineTransformConcat(tileImage3Scale, tileImage3Translate))
        tileImage4.transform = CGAffineTransformConcat(tileImage4Rotate, CGAffineTransformConcat(tileImage4Scale, tileImage4Translate))
        tileImage5.transform = CGAffineTransformConcat(tileImage5Rotate, CGAffineTransformConcat(tileImage5Scale, tileImage5Translate))
        tileImage6.transform = CGAffineTransformConcat(tileImage6Rotate, CGAffineTransformConcat(tileImage6Scale, tileImage6Translate))

    }
    
    
    
    
    
    //Functions - Button Events
    
    
    
    
    
    
}
