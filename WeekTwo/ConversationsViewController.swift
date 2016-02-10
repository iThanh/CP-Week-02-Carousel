//
//  ConversationsViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/10/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var backButton: UIButton!
    
    
    //ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      navigationController?.popToRootViewControllerAnimated(true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Functions
    
    
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        
        navigationController?.popToRootViewControllerAnimated(true)
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
