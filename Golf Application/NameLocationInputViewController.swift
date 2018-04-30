//
//  NameLocationInputViewController.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/24/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import UIKit

class NameLocationInputViewController: UIViewController {

    var golfCourse = GolfCourse()
    
    
    @IBOutlet weak var courseLocation: UITextField!
    @IBOutlet weak var courseName: UITextField!
    @IBOutlet weak var coursePar: UITextField!
    @IBOutlet weak var yardage1: UITextField!
    @IBOutlet weak var yardage2: UITextField!
    @IBOutlet weak var yardage3: UITextField!
    @IBOutlet weak var yardage4: UITextField!
    @IBOutlet weak var yardage5: UITextField!
    @IBOutlet weak var yardage6: UITextField!
    @IBOutlet weak var yardage7: UITextField!
    @IBOutlet weak var yardage8: UITextField!
    @IBOutlet weak var yardage9: UITextField!
    @IBOutlet weak var yardage10: UITextField!
    @IBOutlet weak var yardage11: UITextField!
    @IBOutlet weak var yardage12: UITextField!
    @IBOutlet weak var yardage13: UITextField!
    @IBOutlet weak var yardage14: UITextField!
    @IBOutlet weak var yardage15: UITextField!
    @IBOutlet weak var yardage16: UITextField!
    @IBOutlet weak var yardage17: UITextField!
    @IBOutlet weak var yardage18: UITextField!
    
    
    @IBOutlet weak var par1: UITextField!
    @IBOutlet weak var par2: UITextField!
    @IBOutlet weak var par3: UITextField!
    @IBOutlet weak var par4: UITextField!
    @IBOutlet weak var par5: UITextField!
    @IBOutlet weak var par6: UITextField!
    @IBOutlet weak var par7: UITextField!
    @IBOutlet weak var par8: UITextField!
    @IBOutlet weak var par9: UITextField!
    @IBOutlet weak var par10: UITextField!
    @IBOutlet weak var par11: UITextField!
    @IBOutlet weak var par12: UITextField!
    @IBOutlet weak var par13: UITextField!
    @IBOutlet weak var par14: UITextField!
    @IBOutlet weak var par15: UITextField!
    @IBOutlet weak var par16: UITextField!
    @IBOutlet weak var par17: UITextField!
    @IBOutlet weak var par18: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        courseName.text = golfCourse.name
        courseLocation.text = golfCourse.location
        coursePar.text = String(golfCourse.coursePar)
        

        yardage1.text = String(golfCourse.yardages.yardage1)
        yardage2.text = String(golfCourse.yardages.yardage2)
        yardage3.text = String(golfCourse.yardages.yardage3)
        yardage4.text = String(golfCourse.yardages.yardage4)
        yardage5.text = String(golfCourse.yardages.yardage5)
        yardage6.text = String(golfCourse.yardages.yardage6)
        yardage7.text = String(golfCourse.yardages.yardage7)
        yardage8.text = String(golfCourse.yardages.yardage8)
        yardage9.text = String(golfCourse.yardages.yardage9)
        yardage10.text = String(golfCourse.yardages.yardage10)
        yardage11.text = String(golfCourse.yardages.yardage11)
        yardage12.text = String(golfCourse.yardages.yardage12)
        yardage13.text = String(golfCourse.yardages.yardage13)
        yardage14.text = String(golfCourse.yardages.yardage14)
        yardage15.text = String(golfCourse.yardages.yardage15)
        yardage16.text = String(golfCourse.yardages.yardage16)
        yardage17.text = String(golfCourse.yardages.yardage17)
        yardage18.text = String(golfCourse.yardages.yardage18)
        
        par1.text = String(golfCourse.pars.par1)
        par2.text = String(golfCourse.pars.par2)
        par3.text = String(golfCourse.pars.par3)
        par4.text = String(golfCourse.pars.par4)
        par5.text = String(golfCourse.pars.par5)
        par6.text = String(golfCourse.pars.par6)
        par7.text = String(golfCourse.pars.par7)
        par8.text = String(golfCourse.pars.par8)
        par9.text = String(golfCourse.pars.par9)
        par10.text = String(golfCourse.pars.par10)
        par11.text = String(golfCourse.pars.par11)
        par12.text = String(golfCourse.pars.par12)
        par13.text = String(golfCourse.pars.par13)
        par14.text = String(golfCourse.pars.par14)
        par15.text = String(golfCourse.pars.par15)
        par16.text = String(golfCourse.pars.par16)
        par17.text = String(golfCourse.pars.par17)
        par18.text = String(golfCourse.pars.par18)
        
    }

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        golfCourse.location = courseLocation.text!
        golfCourse.name = courseName.text!
        golfCourse.coursePar = Int(coursePar.text!) ?? 0
        
        golfCourse.yardages.yardage1 = Int(yardage1.text!) ?? 0
        golfCourse.yardages.yardage2 = Int(yardage2.text!) ?? 0
        golfCourse.yardages.yardage3 = Int(yardage3.text!) ?? 0
        golfCourse.yardages.yardage4 = Int(yardage4.text!) ?? 0
        golfCourse.yardages.yardage5 = Int(yardage5.text!) ?? 0
        golfCourse.yardages.yardage6 = Int(yardage6.text!) ?? 0
        golfCourse.yardages.yardage7 = Int(yardage7.text!) ?? 0
        golfCourse.yardages.yardage8 = Int(yardage8.text!) ?? 0
        golfCourse.yardages.yardage9 = Int(yardage9.text!) ?? 0
        golfCourse.yardages.yardage10 = Int(yardage10.text!) ?? 0
        golfCourse.yardages.yardage11 = Int(yardage11.text!) ?? 0
        golfCourse.yardages.yardage12 = Int(yardage12.text!) ?? 0
        golfCourse.yardages.yardage13 = Int(yardage13.text!) ?? 0
        golfCourse.yardages.yardage14 = Int(yardage14.text!) ?? 0
        golfCourse.yardages.yardage15 = Int(yardage15.text!) ?? 0
        golfCourse.yardages.yardage16 = Int(yardage16.text!) ?? 0
        golfCourse.yardages.yardage17 = Int(yardage17.text!) ?? 0
        golfCourse.yardages.yardage18 = Int(yardage18.text!) ?? 0
        
        golfCourse.pars.par1 = Int(par1.text!) ?? 0
        golfCourse.pars.par2 = Int(par2.text!) ?? 0
        golfCourse.pars.par3 = Int(par3.text!) ?? 0
        golfCourse.pars.par4 = Int(par4.text!) ?? 0
        golfCourse.pars.par5 = Int(par5.text!) ?? 0
        golfCourse.pars.par6 = Int(par6.text!) ?? 0
        golfCourse.pars.par7 = Int(par7.text!) ?? 0
        golfCourse.pars.par8 = Int(par8.text!) ?? 0
        golfCourse.pars.par9 = Int(par9.text!) ?? 0
        golfCourse.pars.par10 = Int(par10.text!) ?? 0
        golfCourse.pars.par11 = Int(par11.text!) ?? 0
        golfCourse.pars.par12 = Int(par12.text!) ?? 0
        golfCourse.pars.par13 = Int(par13.text!) ?? 0
        golfCourse.pars.par14 = Int(par14.text!) ?? 0
        golfCourse.pars.par15 = Int(par15.text!) ?? 0
        golfCourse.pars.par16 = Int(par16.text!) ?? 0
        golfCourse.pars.par17 = Int(par17.text!) ?? 0
        golfCourse.pars.par18 = Int(par18.text!) ?? 0
    
        golfCourse.holes.hole1 = 1
        golfCourse.holes.hole2 = 2
        golfCourse.holes.hole3 = 3
        golfCourse.holes.hole4 = 4
        golfCourse.holes.hole5 = 5
        golfCourse.holes.hole6 = 6
        golfCourse.holes.hole7 = 7
        golfCourse.holes.hole8 = 8
        golfCourse.holes.hole9 = 9
        golfCourse.holes.hole10 = 10
        golfCourse.holes.hole11 = 11
        golfCourse.holes.hole12 = 12
        golfCourse.holes.hole13 = 13
        golfCourse.holes.hole14 = 14
        golfCourse.holes.hole15 = 15
        golfCourse.holes.hole16 = 16
        golfCourse.holes.hole17 = 17
        golfCourse.holes.hole18 = 18
    
   
    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode{
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}

