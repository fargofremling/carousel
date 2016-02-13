//
//  LoginViewController.swift
//  carousel
//
//  Created by Fremling, Alicia (Contractor) on 2/10/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // outlet for scrollview
    @IBOutlet weak var loginScrollView: UIScrollView!
    
    // outlet for button parent view
    @IBOutlet weak var buttonParentView: UIView!
    var buttonParentInitialY: CGFloat!
    var buttonParentOffset: CGFloat!
    
    // outlet for field parent view
    @IBOutlet weak var fieldParentView: UIView!
    var fieldParentInitialY: CGFloat!
    var fieldParentOffset: CGFloat!
    
    // keyboard show/hide functions
    func keyboardWillShow(notification: NSNotification!) {

    }
    
    func keyboardWillHide(notiification: NSNotification!) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // scroll view size
        
        self.loginScrollView.contentSize = loginScrollView.frame.size
        self.loginScrollView.contentInset.bottom = 100
    
        // sets button parent view offset
        buttonParentInitialY = buttonParentView.frame.origin.y
        buttonParentOffset = -150
        
        // sets field parent view offset
        fieldParentInitialY = fieldParentView.frame.origin.y
        fieldParentOffset = -40
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
