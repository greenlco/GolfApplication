//
//  HoleListViewController.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/26/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import UIKit

class HoleListViewController: UIViewController {

    @IBOutlet weak var holeScore1: UITextField!
    @IBOutlet weak var holeScore2: UITextField!
    @IBOutlet weak var holeScore3: UITextField!
    @IBOutlet weak var holeScore4: UITextField!
    @IBOutlet weak var holeScore5: UITextField!
    @IBOutlet weak var holeScore6: UITextField!
    @IBOutlet weak var holeScore7: UITextField!
    @IBOutlet weak var holeScore8: UITextField!
    @IBOutlet weak var holeScore9: UITextField!
    @IBOutlet weak var holeScore10: UITextField!
    @IBOutlet weak var holeScore11: UITextField!
    @IBOutlet weak var holeScore12: UITextField!
    @IBOutlet weak var holeScore13: UITextField!
    @IBOutlet weak var holeScore14: UITextField!
    @IBOutlet weak var holeScore15: UITextField!
    @IBOutlet weak var holeScore16: UITextField!
    @IBOutlet weak var holeScore17: UITextField!
    @IBOutlet weak var holeScore18: UITextField!
    @IBOutlet weak var courseDate: UITextField!

    var golfCourse = GolfCourse()
    var roundNumber = 0
    var round = Round()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        round = golfCourse.rounds[roundNumber]

        courseDate.text = round.roundDate
        holeScore1.text = String(round.hole1)
        holeScore2.text = String(round.hole2)
        holeScore3.text = String(round.hole3)
        holeScore4.text = String(round.hole4)
        holeScore5.text = String(round.hole5)
        holeScore6.text = String(round.hole6)
        holeScore7.text = String(round.hole7)
        holeScore8.text = String(round.hole8)
        holeScore9.text = String(round.hole9)
        holeScore10.text = String(round.hole10)
        holeScore11.text = String(round.hole11)
        holeScore12.text = String(round.hole12)
        holeScore13.text = String(round.hole13)
        holeScore14.text = String(round.hole14)
        holeScore15.text = String(round.hole15)
        holeScore16.text = String(round.hole16)
        holeScore17.text = String(round.hole17)
        holeScore18.text = String(round.hole18)
        
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        round.roundDate  = courseDate.text!
        round.hole1 = Int(holeScore1.text!) ?? 0
        round.hole2 = Int(holeScore2.text!) ?? 0
        round.hole3 = Int(holeScore3.text!) ?? 0
        round.hole4 = Int(holeScore4.text!) ?? 0
        round.hole5 = Int(holeScore5.text!) ?? 0
        round.hole6 = Int(holeScore6.text!) ?? 0
        round.hole7 = Int(holeScore7.text!) ?? 0
        round.hole8 = Int(holeScore8.text!) ?? 0
        round.hole9 = Int(holeScore9.text!) ?? 0
        round.hole10 = Int(holeScore10.text!) ?? 0
        round.hole11 = Int(holeScore11.text!) ?? 0
        round.hole12 = Int(holeScore12.text!) ?? 0
        round.hole13 = Int(holeScore13.text!) ?? 0
        round.hole14 = Int(holeScore14.text!) ?? 0
        round.hole15 = Int(holeScore15.text!) ?? 0
        round.hole16 = Int(holeScore16.text!) ?? 0
        round.hole17 = Int(holeScore17.text!) ?? 0
        round.hole18 = Int(holeScore18.text!) ?? 0
        
        self.golfCourse.rounds[roundNumber] = round
        
        }
    

}
