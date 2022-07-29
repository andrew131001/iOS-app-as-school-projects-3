//
//  ViewController.swift
//  Exercise02
//
//  Created by Andrew Ok on 2022-07-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customTipTop: UILabel!
    @IBOutlet weak var customTipBottom: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipFifteen: UILabel!
    @IBOutlet weak var totalFifteen: UILabel!
    @IBOutlet weak var customTip: UILabel!
    @IBOutlet weak var totalCustomTip: UILabel!
    @IBOutlet weak var basicTip: UILabel!
    // initialization
    var amount: Float = 0.0
    let basicTipPercentage: Float = 0.15
    
    @IBAction func amountOnTextField(_ sender: UITextField) {
        // assign defalut value when textfield is empty
        amount = Float(sender.text ?? "") ?? 0.0
        // display tip and total amount calculated by basic tip percentage
        tipFifteen.text = String(format: "$%.2f", amount * basicTipPercentage)
        totalFifteen.text = String(format: "$%.2f", amount * (1 + basicTipPercentage))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // look for single or multiple taps
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        // add gesture
        view.addGestureRecognizer(tap)
        // assign default values when the screen is loaded
        customTipTop.text = String(format: "%d%%", Int(tipSlider.value))
        basicTip.text = String(format: "%d%%", Int(basicTipPercentage * 100))
        customTipBottom.text = String(format: "%d%%", Int(tipSlider.value))
    }
    
    @IBAction func tipSliderValue(_ sender: UISlider) {
        // assign value to each type of variables
        let senderInt = Int(sender.value)
        let senderFloat = Float(senderInt)
        let tipPercentage = senderFloat/100
        // display tip percentages on the labels
        customTipTop.text = String(format: "%d%%", senderInt) // Tip %: 'percentage'
        customTipBottom.text = String(format: "%d%%", senderInt) // Custom Tip column
        // display calculated tip and total amount
        customTip.text = String(format: "$%.2f", amount * tipPercentage)
        totalCustomTip.text = String(format: "$%.2f", amount * (1+tipPercentage))
    }
    // call this function when tap is recognized
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


