//
//  WelcomeViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/10/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    
    
    
    
    //ViewDidLoad
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Functions
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
