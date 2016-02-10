//
//  LoginViewController.swift
//  WeekTwo
//
//  Created by Jan Senderek on 2/9/16.
//  Copyright © 2016 Jan Senderek. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , UIScrollViewDelegate {
    
    //Outlets
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    
    //Variables
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    var buttonParentInitialY: CGFloat!
    var buttonParentOffset: CGFloat!
    
    
    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loginScrollView.delegate = self
        
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        fieldParentInitialY = fieldParentView.frame.origin.y
        fieldParentOffset = -80
        buttonParentInitialY = buttonParentView.frame.origin.y
        buttonParentOffset = -270
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //Functions
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    
    
    
    //Functions - Scroll Events
    func scrollViewDidScroll(loginScrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        if loginScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    
    func scrollViewWillBeginDragging(loginScrollView: UIScrollView) {
        // Called on finger up if the user dragged. velocity is in points/millisecond. targetContentOffset may be changed to adjust where the scroll view comes to rest
        
    }
    
    
    func scrollViewDidEndDragging(loginScrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    
    func scrollViewDidEndDecelerating(loginScrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    
    
    
    //Functions - Keyboard Events
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY + fieldParentOffset
        buttonParentView.frame.origin.y = buttonParentInitialY + buttonParentOffset
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY
        buttonParentView.frame.origin.y = buttonParentInitialY
    }
    
    @IBAction func tappedView(sender: AnyObject) {
        view.endEditing(true)
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
