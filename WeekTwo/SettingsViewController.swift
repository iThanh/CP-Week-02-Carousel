//
//  SettingsViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/10/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!
    
    
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        settingsScrollView.contentSize = CGSize (width: 320, height: feedImageView.image!.size.height)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Functions
    @IBAction func didPressCloseButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func didPressSignout(sender: AnyObject) {
        let signoutMenu = UIAlertController(title: nil, message: "Sign out of Carousel?", preferredStyle: .ActionSheet)
        
        let logoutAction = UIAlertAction(title: "Sign Out", style: .Destructive) { (action) in
            
            self.performSegueWithIdentifier("signoutSegue", sender: sender)
        }
        
        /*
        let passwordOption = UIAlertAction(title: "I Agree", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.performSegueWithIdentifier("createAccountSegue", sender: sender)
        })
        */
        
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
        }
        
        signoutMenu.addAction(logoutAction)
        signoutMenu.addAction(cancelAction)
        
        self.presentViewController(signoutMenu, animated: true, completion: nil)
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
