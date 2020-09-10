//
//  ViewController.swift
//  ArrayPractice
//
//  Created by Haruko Okada on 9/2/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

//copied version
import UIKit
import Foundation

let saveData:UserDefaults = UserDefaults.standard


class ViewController: UIViewController {
    

    var whenArray: [String] = ["昨日", "1月14日", "あのね", "5000年前"]
    
    //saveData.object(forKey: "when") as? [String] ?? []
    //["昨日", "1月14日", "あのね", "5000年前"]
    var whereArray: [String] = ["家で", "火星で", "オーストラリアで", "ここで"]

    //saveData.object(forKey: "where") as? [String] ?? []
    //["家で", "火星で", "オーストラリアで", "ここで"]
    var whoArray: [String] = ["私が", "ドラえもんが", "トムが", "宇宙人が"]
    
    //saveData.object(forKey: "who") as? [String] ?? []
    //["私が", "ドラえもんが", "トムが", "宇宙人が"]
    var whatArray: [String] = ["すべった", "倍返しした", "拒絶した", "納得した"]
    
    //saveData.object(forKey: "what") as? [String] ?? []
    //["すべった", "倍返しした", "拒絶した", "納得した"]
       
    var numOfWhenElements: Int = 0
    var numOfWhereElements: Int = 0
    var numOfWhoElements: Int = 0
    var numOfWhatElements: Int = 0

    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var whoLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    
    var i: Int = 0
    
    @IBAction func randomBtn(_ sender: Any) {
        var updatedWhenArray = saveData.array(forKey: "when") as! [String]
        var updatedWhereArray = saveData.array(forKey: "where") as! [String]
        var updatedWhoArray = saveData.array(forKey: "who") as! [String]
        var updatedWhatArray = saveData.array(forKey: "what") as! [String]
        
        numOfWhenElements = updatedWhenArray.count
        numOfWhereElements = updatedWhereArray.count
        numOfWhoElements = updatedWhoArray.count
        numOfWhatElements = updatedWhatArray.count
        
       // print(numOfWhenElements)
       print(updatedWhenArray)
        
       let wheni = Int.random(in: 0 ...  numOfWhenElements - 1)
       let wherei = Int.random(in: 0 ... numOfWhereElements - 1)
       let whoi = Int.random(in: 0 ...  numOfWhoElements - 1)
       let whati = Int.random(in: 0 ... numOfWhatElements - 1)
        
       whenLabel.text = updatedWhenArray[wheni]
        print(String(wheni))
       whereLabel.text = updatedWhereArray[wherei]
       whoLabel.text = updatedWhoArray[whoi]
       whatLabel.text = updatedWhatArray[whati]
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        whenLabel.text = "___"
        whereLabel.text =  "___"
        whoLabel.text =  "___"
        whatLabel.text =  "___"
        i = 0;
        
    }
    
    func saveArray(){
        saveData.set(whenArray, forKey: "when")
        saveData.set(whereArray, forKey: "where")
        saveData.set(whoArray, forKey: "who")
        saveData.set(whatArray, forKey: "what")
    }
    
    @IBAction func addWords(_ sender: Any) {
        performSegue(withIdentifier: "addWordsSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveArray()
        print(whenArray)
    }
}

