//
//  NewAddHoleViewController.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/29/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import UIKit

class NewAddHoleViewController: UIViewController {

    var golfCoursessssss = GolfCourses()
    var holes = GolfCourses.HoleNumber()
    var parsss = GolfCourses.Pars()
    var yardages = GolfCourses.Yardages()
    var roundssss = GolfCourses.Round()
    var scores = GolfCourses.Round.HoleScore()
    
    @IBOutlet weak var addScore: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        scores.roundScores.append(String(Int(addScore.text!) ?? 0))
    }


    

}
