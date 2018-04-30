//
//  CourseDataViewController.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/24/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import UIKit

class CourseDataViewController: UIViewController {

    var golfCourse = GolfCourse()


    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var coursePar: UILabel!
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

        tableView.delegate = self
        tableView.dataSource = self
        
        nameLabel.text = golfCourse.name
        locationLabel.text = golfCourse.location
        coursePar.text = String(golfCourse.coursePar)
        
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
        
        

    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! HoleListViewController
        destination.golfCourse = self.golfCourse
        
        if segue.identifier == "addRound" {
            self.golfCourse.rounds.append(Round())
            destination.roundNumber = self.golfCourse.rounds.count - 1

        } else {
            
            if let selectedIndex = tableView.indexPathForSelectedRow {
                tableView.deselectRow(at: selectedIndex, animated: true)
                destination.roundNumber = selectedIndex.row
            }
        }
    }

    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode{
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    @IBAction func unwindFromHoleListView(segue: UIStoryboardSegue) {
        
        let source = segue.source as! HoleListViewController
        golfCourse = source.golfCourse
        
        tableView.reloadData()
        

    }
    
}

extension CourseDataViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return golfCourse.rounds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = golfCourse.rounds[indexPath.row].roundDate
        return cell
    }
    
}
