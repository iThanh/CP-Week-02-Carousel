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
        // Get the current page based on the scroll offset
        let page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
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
