//
//  ViewController.swift
//  Exercise01
//
//  Created by Andrew Ok on 2022-07-11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // look for single or multiple taps
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        // Add gesture recognizer to background view
        view.addGestureRecognizer(tap)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cpv = segue.destination as! ClientPageViewController
        //assign username into the array to hold the value until the submit button is pressed
        cpv.textviewArray.append(username.text!)
    }
    
    // dismiss keyboard
    @objc func handleTap() {
        username.resignFirstResponder()
        password.resignFirstResponder()
    }
}

