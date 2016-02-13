//
//  LoginViewController.swift
//  carousel
//
//  Created by Fremling, Alicia (Contractor) on 2/10/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    // outlet for nav bar
    @IBOutlet weak var loginNavBar: UIImageView!
    
    // outlet for scrollview
    @IBOutlet weak var loginScrollView: UIScrollView!
    
    // outlet for field parent view
    @IBOutlet weak var fieldParentView: UIView!
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    
    // outlets for textfields
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    // outlet for button parent view
    @IBOutlet weak var buttonParentView: UIView!
    var buttonParentInitialY: CGFloat!
    var buttonParentOffset: CGFloat!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInActivityIndicator: UIActivityIndicatorView!
    
    // button action
    @IBAction func didPresSignInButton(sender: AnyObject) {
        
        func showAlertWithTitle(title: String, andMessage message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel){ (action) in }
            alert.addAction(cancelAction)
            presentViewController(alert, animated: true){}
        }
        
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            showAlertWithTitle("Email & Password Required", andMessage: "Please enter an email address and password.")
        } else {
            signInActivityIndicator.startAnimating()
            delay(2) {
                if self.emailTextField.text == "test" && self.passwordTextField.text == "ok" {
                    self.signInActivityIndicator.stopAnimating()
                    self.performSegueWithIdentifier("signInButtonSegue", sender: self)
                } else {
                    self.signInActivityIndicator.stopAnimating()
                    showAlertWithTitle("Invalid Email or Password", andMessage: "Please check the email and password combination.")
                }
            }
        }
    
    }

    // keyboard show functions
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY + fieldParentOffset
            
        buttonParentView.frame.origin.y = buttonParentInitialY + buttonParentOffset
    }

    // keyboard hide functions
    func keyboardWillHide(notiification: NSNotification!) {
        fieldParentView.frame.origin.y = fieldParentInitialY
        buttonParentView.frame.origin.y = buttonParentInitialY
    }
    
    // scroll down to dismss keyboard
    func scrollViewDidScroll(loginScrollView: UIScrollView){
        if loginScrollView.contentOffset.y <= -50 {
            // Hide the keyboard
            view.endEditing(true)
            
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginScrollView.delegate = self
        
        // scroll view size
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // sets field parent view offset
        fieldParentInitialY = fieldParentView.frame.origin.y
        fieldParentOffset = -80
        
        // sets button parent view offset
        buttonParentInitialY = buttonParentView.frame.origin.y
        buttonParentOffset = -250
        

    }
    // the vidw is about to appear
    override func viewWillAppear(animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        // Apply the transform properties of the views
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animateWithDuration(0.3) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
