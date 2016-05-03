//
//  FirstViewController.swift
//  No Storyboards Exercise
//
//  Created by Sean Perez on 4/24/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var secondVC: SecondViewController!
    var thirdVC: ThirdViewController!
    @IBOutlet weak var firstprintLbl: UILabel!
    var printTxt = ""
    
    convenience init(printMe: String) {
        self.init(nibName: "FirstViewController", bundle: nil)
        printTxt = printMe
    }
    
    @IBAction func loadSecondViewController(sender: AnyObject) {
        secondVC = SecondViewController(printMe: "Fuck My Neighbor")
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func loadThirdViewController(sender: AnyObject) {
        thirdVC = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        self.presentViewController(thirdVC, animated: true, completion: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        firstprintLbl.text = printTxt
    }

}
