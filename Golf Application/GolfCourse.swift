//
//  Information Struct.swift
//  Golf Application
//
//  Created by Connor Greenleaf on 4/24/18.
//  Copyright © 2018 Connor Greenleaf. All rights reserved.
//

import Foundation


class GolfCourse: Codable {
    
    var name = ""
    var location = ""
    var coursePar = 0
    
    var pars = Pars()
    var holes = Holes()
    var yardages = Yardages()
    var rounds = [Round]()
    
    
   

    init(name: String, location: String, coursePar: Int) {

        self.name = name
        self.location = location
        self.coursePar = coursePar
//        if let name = decoder.decodeObject(forKey: "name") as? String{
//            self.name = name
//        }
//        if let location = decoder.decodeObject(forKey: "location") as? String{
//            self.location = location
//        }
//        if let coursePar = decoder.decodeObject(forKey: "coursePar") as? Int{
//            self.coursePar = coursePar
//        }
//        if let pars = decoder.decodeObject(forKey: "pars") as? Pars {
//            self.pars = pars
//        }
//        if let holes = decoder.decodeObject(forKey: "holes") as? Holes {
//            self.holes = holes
//        }
//        if let yardages = decoder.decodeObject(forKey: "yardages") as? Yardages {
//            self.yardages = yardages
//        }
//        if let rounds = decoder.decodeObject(forKey: "rounds") as? [Round]{
//            self.rounds = rounds
//        }
    }
    
    init() {
        self.name = ""
        self.location = ""
        self.coursePar = 0
    }

    func getCourseDataFromDict(courseDict:[String:AnyObject]) -> GolfCourse {

        if let name = courseDict["name"] {
            self.name = name as? String ?? ""
        }

        return self
    }

    
}


class Holes: Codable {
    var hole1 = 1
    var hole2 = 2
    var hole3 = 3
    var hole4 = 4
    var hole5 = 5
    var hole6 = 6
    var hole7 = 7
    var hole8 = 8
    var hole9 = 9
    var hole10 = 10
    var hole11 = 11
    var hole12 = 12
    var hole13 = 13
    var hole14 = 14
    var hole15 = 15
    var hole16 = 16
    var hole17 = 17
    var hole18 = 18
}


class Yardages: Codable {
    var yardage1 = 0
    var yardage2 = 0
    var yardage3 = 0
    var yardage4 = 0
    var yardage5 = 0
    var yardage6 = 0
    var yardage7 = 0
    var yardage8 = 0
    var yardage9 = 0
    var yardage10 = 0
    var yardage11 = 0
    var yardage12 = 0
    var yardage13 = 0
    var yardage14 = 0
    var yardage15 = 0
    var yardage16 = 0
    var yardage17 = 0
    var yardage18 = 0
}


class Pars: Codable {
    var par1 = 0
    var par2 = 0
    var par3 = 0
    var par4 = 0
    var par5 = 0
    var par6 = 0
    var par7 = 0
    var par8 = 0
    var par9 = 0
    var par10 = 0
    var par11 = 0
    var par12 = 0
    var par13 = 0
    var par14 = 0
    var par15 = 0
    var par16 = 0
    var par17 = 0
    var par18 = 0
}


class Round: Codable {
    
    var roundDate = ""
    
    var hole1 = 0
    var hole2 = 0
    var hole3 = 0
    var hole4 = 0
    var hole5 = 0
    var hole6 = 0
    var hole7 = 0
    var hole8 = 0
    var hole9 = 0
    var hole10 = 0
    var hole11 = 0
    var hole12 = 0
    var hole13 = 0
    var hole14 = 0
    var hole15 = 0
    var hole16 = 0
    var hole17 = 0
    var hole18 = 0
    
}




