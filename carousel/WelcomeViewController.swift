//
//  WelcomeViewController.swift
//  carousel
//
//  Created by Fremling, Alicia (Contractor) on 2/13/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    @IBOutlet weak var backupParentView: UIView!
    
    @IBOutlet weak var welcomePageControl: UIPageControl!
    
    func scrollViewDidEndDecelerating(welcomeScrollView: UIScrollView){ let page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        welcomePageControl.currentPage = page
        welcomePageControl.hidden = false
        
        if page == 3 {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.backupParentView.alpha = 1
                self.welcomePageControl.hidden = true
            }
        } else {
            UIView.animateWithDuration(0.3) { () -> Void in
                self.backupParentView.alpha = 0
                self.welcomePageControl.hidden = false
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.delegate = self
        
        welcomeScrollView.contentSize = CGSize (width: 1280, height: 568)
        
        backupParentView.alpha = 0
        
        // Do any additional setup after loading the view.
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
