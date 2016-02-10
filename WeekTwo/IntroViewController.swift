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
        tileImage1.transform = CGAffineTransformMakeDegreeRotation(-10)
        tileImage2.transform = CGAffineTransformMakeDegreeRotation(-10)
        tileImage4.transform = CGAffineTransformMakeDegreeRotation(8)
        tileImage3.transform = CGAffineTransformMakeDegreeRotation(8)
        tileImage6.transform = CGAffineTransformMakeDegreeRotation(-6)
        tileImage5.transform = CGAffineTransformMakeDegreeRotation(6)
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Functions
    func scrollViewDidScroll(introScrollFeed: UIScrollView) {
        // This method is called as the user scrolls
        
    }
  
    
    func scrollViewWillBeginDragging(introScrollFeed: UIScrollView) {
        // Called on finger up if the user dragged
        
        UIView.animateWithDuration(1.0, animations: ({
            self.tileImage1.transform = CGAffineTransformMakeDegreeRotation(10)
            self.tileImage1.transform = CGAffineTransformMakeTranslation(50, 50)

        }))

        /*
        tileImage1.transform = CGAffineTransformMakeDegreeRotation(10)
        tileImage1.transform = CGAffineTransformMakeTranslation(50, 50)
        */
        
        
    }
    
    func scrollViewDidEndDragging(introScrollFeed: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            
            
    }
    
    func scrollViewDidEndDecelerating(introScrollFeed: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
        
        
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
