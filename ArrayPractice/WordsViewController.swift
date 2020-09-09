//
//  WordsViewController.swift
//  ArrayPractice
//
//  Created by Haruko Okada on 9/9/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit

class WordsViewController: UIViewController {

    @IBOutlet weak var wordTextField: UITextField!
    
    var recieveWhenArray = saveData.array(forKey: "when") as! [String]
    var recieveWhereArray = saveData.array(forKey: "where") as! [String]
    var recieveWhoArray = saveData.array(forKey: "who") as! [String]
    var recieveWhatArray = saveData.array(forKey: "what") as! [String]
    
    @IBAction func chooseWhen(_ sender: Any) {
        recieveWhenArray.append(wordTextField.text!)
        dismiss(animated: true, completion: nil);
       //print(recieveWhenArray)
    }
    
    @IBAction func chooseWhere(_ sender: Any) {
       recieveWhereArray.append(wordTextField.text!)
       dismiss(animated: true, completion: nil);
       print(recieveWhereArray)
    }
    
    @IBAction func chooseWho(_ sender: Any) {
        recieveWhoArray.append(wordTextField.text!)
        dismiss(animated: true, completion: nil);
        //print(recieveWhoArray)
    }
    
    @IBAction func chooseWhat(_ sender: Any) {
        recieveWhatArray.append(wordTextField.text!)
        dismiss(animated: true, completion: nil);
        //print(recieveWhatArray)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
