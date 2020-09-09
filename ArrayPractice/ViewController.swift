//
//  ViewController.swift
//  ArrayPractice
//
//  Created by Haruko Okada on 9/2/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit
import Foundation

let saveData:UserDefaults = UserDefaults.standard


class ViewController: UIViewController {
    

    var whenArray: [String] = ["昨日", "1月14日", "あのね", "5000年前"]
    var whereArray: [String] = ["家で", "火星で", "オーストラリアで", "ここで"]
    var whoArray: [String] = ["私が", "ドラえもんが", "トムが", "宇宙人が"]
    var whatArray: [String] = ["すべった", "倍返しした", "拒絶した", "納得した"]
    
    var numOfWhenElements: Int = 0
    var numOfWhereElements: Int = 0
    var numOfWhoElements: Int = 0
    var numOfWhatElements: Int = 0

    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var whoLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    
    var i: Int = 0
    
    @IBAction func switchBtn(_ sender: Any) {
        whenLabel.text = whenArray[i]
        whereLabel.text = whereArray[i]
        whoLabel.text = whoArray[i]
        whatLabel.text = whatArray[i]
        
        i = i + 1
        
        if (i > numOfWhenElements - 1){
            i = 0
        }
    }
    
    @IBAction func randomBtn(_ sender: Any) {
        let wheni = Int.random(in: 0 ...  numOfWhenElements - 1)
        let wherei = Int.random(in: 0 ... numOfWhereElements - 1)
        let whoi = Int.random(in: 0 ...  numOfWhoElements - 1)
        let whati = Int.random(in: 0 ... numOfWhatElements - 1)
        whenLabel.text = whenArray[wheni]
        whereLabel.text = whereArray[wherei]
        whoLabel.text = whoArray[whoi]
        whatLabel.text = whatArray[whati]
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        whenLabel.text = "___"
        whereLabel.text =  "___"
        whoLabel.text =  "___"
        whatLabel.text =  "___"
        i = 0;
    }
    
    @IBAction func addWords(_ sender: Any) {
        performSegue(withIdentifier: "addWordsSegue", sender: self)
        saveData.set(whenArray, forKey: "when")
        saveData.set(whereArray, forKey: "where")
        saveData.set(whoArray, forKey: "who")
        saveData.set(whatArray, forKey: "what")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
}

