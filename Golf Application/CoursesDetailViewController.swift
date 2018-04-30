//
//  CoursesDetailViewController.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/24/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import UIKit

class CoursesDetailViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editBarButton: UIBarButtonItem!
    @IBOutlet weak var addCourseButton: UIBarButtonItem!
    
    var defaultsData = UserDefaults.standard
    var golfCourses: [GolfCourse] = [GolfCourse]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCourses()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.saveCourses()
    }

    func saveCourses () {
        print("saved")
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(golfCourses) {
            UserDefaults.standard.set(encoded, forKey: "golfCourses")
        } else {
            print("ERROR: Saving encoded did not work")
        }
    }
    
    func loadCourses() {
        guard let locationsEncoded = UserDefaults.standard.value(forKey: "golfCourses") as? Data else{
            print("Cound not load coursesArray data from UserDefaults.")
            return
        }
        let decoder = JSONDecoder()
        if let golfCourses = try? decoder.decode(Array.self, from: locationsEncoded) as [GolfCourse] {
            self.golfCourses = golfCourses
        }
    }
    
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "courseInfoSegue" {
            let destination = segue.destination as! CourseDataViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.golfCourse = golfCourses[selectedIndexPath.row]
            
        } else {
            if let selectedIndex = tableView.indexPathForSelectedRow {
                tableView.deselectRow(at: selectedIndex, animated: true)
            }
        }
    }
    
    
    @IBAction func unwindFromNameLocationInput(segue: UIStoryboardSegue) {
        
            let source = segue.source as! NameLocationInputViewController
            let newIndexPath = IndexPath(row: golfCourses.count, section: 0)
            golfCourses.append(source.golfCourse)
        
            tableView.insertRows(at: [newIndexPath], with: .automatic)
            tableView.scrollToRow(at: newIndexPath, at: .bottom, animated: true)
            tableView.deselectRow(at: newIndexPath, animated: true)
            saveCourses()
        
    }
    
    @IBAction func editButtonPressed(_ sender: UIBarButtonItem) {
        if tableView.isEditing == true {
            tableView.setEditing(false, animated: true)
            editBarButton.title = "Edit"
            addCourseButton.isEnabled = true
        } else {
            tableView.setEditing(true, animated: true)
            editBarButton.title = "Done"
            addCourseButton.isEnabled = false
            
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is CourseDataViewController
        if isPresentingInAddMode{
              navigationController?.popViewController(animated: true)
        } else {
             dismiss(animated: true, completion: nil)
        }
    }
}

extension CoursesDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return golfCourses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = golfCourses[indexPath.row].name
        cell.detailTextLabel?.text = golfCourses[indexPath.row].location
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            golfCourses.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            saveCourses()
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let itemToMove = golfCourses[sourceIndexPath.row]
        golfCourses.remove(at: sourceIndexPath.row)
        golfCourses.insert(itemToMove, at: destinationIndexPath.row)
        saveCourses()
    }
}
