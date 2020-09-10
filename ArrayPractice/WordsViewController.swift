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
        saveData.set(recieveWhenArray, forKey: "when")
        dismiss(animated: true, completion: nil);
        print(recieveWhenArray)
    }
    
    @IBAction func undoWhen(_ sender: Any) {
        recieveWhenArray.removeLast()
        saveData.set(recieveWhenArray, forKey: "when")
        print(recieveWhenArray)
    }
    
    @IBAction func chooseWhere(_ sender: Any) {
       recieveWhereArray.append(wordTextField.text!)
       saveData.set(recieveWhereArray, forKey: "where")
       dismiss(animated: true, completion: nil);
       print(recieveWhereArray)
    }
    
    @IBAction func undoWhere(_ sender: Any) {
        recieveWhenArray.removeLast()
        saveData.set(recieveWhereArray, forKey: "where")
    }
    
    @IBAction func chooseWho(_ sender: Any) {
        recieveWhoArray.append(wordTextField.text!)
        saveData.set(recieveWhoArray, forKey: "who")
        dismiss(animated: true, completion: nil);
        print(recieveWhoArray)
    }
    
    @IBAction func undoWho(_ sender: Any) {
        recieveWhoArray.removeLast()
        saveData.set(recieveWhoArray, forKey: "who")
    }
    
    @IBAction func chooseWhat(_ sender: Any) {
        recieveWhatArray.append(wordTextField.text!)
        saveData.set(recieveWhatArray, forKey: "what")
        dismiss(animated: true, completion: nil);
        print(recieveWhatArray)
    }
    
    @IBAction func undoWhat(_ sender: Any) {
        recieveWhatArray.removeLast()
        saveData.set(recieveWhatArray, forKey: "what")
    }
    
    
    func saveArray(){
        saveData.set(recieveWhenArray, forKey: "when")
        saveData.set(recieveWhereArray, forKey: "where")
        saveData.set(recieveWhoArray, forKey: "who")
        saveData.set(recieveWhatArray, forKey: "what")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveArray()
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
