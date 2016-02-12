//
//  WelcomeViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/10/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    //Outlets
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var buttonParentView: UIView!
    
    
    
    
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        welcomeScrollView.delegate = self

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Functions
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        
        pageControl.currentPage = page
        
        if(page == 3)
        {
            buttonParentView.hidden = false
            pageControl.hidden = true
            UIView.animateWithDuration(0.5, animations: {
                self.buttonParentView.alpha = 1
            })
        }
        else {
            buttonParentView.hidden = true
            pageControl.hidden = false
            self.buttonParentView.alpha = 0
        }
        
    
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
