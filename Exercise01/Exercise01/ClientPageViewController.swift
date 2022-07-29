//
//  ClientPageViewController.swift
//  Exercise01
//
//  Created by Andrew Ok on 2022-07-11.
//

import UIKit

class ClientPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var projectName: UITextField!
    @IBOutlet weak var projectDuration: UITextField!
    @IBOutlet weak var projectLocation: UITextField!
    @IBOutlet weak var textview: UITextView!
    // array for holding username and other textfields values
    var textviewArray: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // look for taps
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        // Add gesture recognizer to background view
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func submit(_ sender: UIButton) {
        // assign textfields' values into array
        textviewArray.append(projectName.text!)
        textviewArray.append(projectDuration.text!)
        textviewArray.append(projectLocation.text!)
        //print out array values
        textview.text = "-\(textviewArray[0])\n-\(textviewArray[1])\n-\(textviewArray[2])\n-\(textviewArray[3])"
    }
    
    //dismiss keyboard
    @objc func handleTap() {
        projectName.resignFirstResponder()
        projectDuration.resignFirstResponder()
        projectLocation.resignFirstResponder()
    }
}
