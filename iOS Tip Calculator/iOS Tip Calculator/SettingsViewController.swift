//
//  SettingsViewController.swift
//  iOS Tip Calculator
//
//  Created by Kusch Qin on 1/28/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipOne: UITextField!
    @IBOutlet weak var defaultTipTwo: UITextField!
    @IBOutlet weak var defaultTipThree: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let defaults = UserDefaults.standard
        let tipOne = Double(defaultTipOne.text!) ?? 0.15
        let tipTwo = Double(defaultTipTwo.text!) ?? 0.18
        let tipThree = Double(defaultTipThree.text!) ?? 0.20
        
        //let tipAmounts = [tipOne, tipTwo, tipThree]
        UserDefaults().setValue(tipOne, forKey: "tipOne")
        UserDefaults().setValue(tipTwo, forKey: "tipTwo")
        UserDefaults().setValue(tipThree, forKey: "tipThree")
        //UserDefaults().setValue(tipAmounts, forKey: "tipAmounts")
        //defaults.set(tipAmounts, forKey: "tipAmounts")
        //defaults.set(tipOne, forKey: "tipOne")
        //defaults.set(tipTwo, forKey: "tipTwo")
        //defaults.set(tipThree, forKey: "tipThree")
        //defaults.synchronize()
        
        // Do any additional setup after loading the view.
        // let testLabel.text = "testABC"
    }
    
    
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
