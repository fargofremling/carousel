//
//  ConversationsViewController.swift
//  carousel
//
//  Created by Fremling, Alicia (Contractor) on 2/14/16.
//  Copyright © 2016 FargoFremling. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    
    @IBAction func backButtonAction(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
