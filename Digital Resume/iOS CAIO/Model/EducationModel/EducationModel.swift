//
//  EducationModel.swift
//  IOS CAIO
//
//  Created by Venkata Prabhu on 18.01.2024.
//

import Foundation


/**
 `MyEducationModel` is an enum representing education experiences at different instituitions. It includes informations about the school's name, graduation status, and descriptions of the certificates obtained.
 
 #Example usage:
 ```
 let myEducation = MyEducationModel.londonAppBrewery
 
 print("School: \(myEducation.rawValue)")
 print("Graduation: \(myEducation.graduation)")
 print("Description: \(myEducation.description)")
 ```
 */
enum MyEducationModel: String {
    
    //MARK: Properties
    /// An array containing the names of education instituitions
    static let education: [String] = ["Undergraduate", "Intermediate", "HighSchool"]
    
    //MARK: Cases
    
    /// Represents education at London App Brewery.
    case graduate = "Undergraduate"
    
    /// Represents education at Zero To Mastery.
    case intermediate = "Intermediate"
    
    /// Represents education at Proflight Escola de Aviação.
    case school = "HighSchool"
    
    //MARK: Computed properties
    
    /// Returns a string indicating the graduation status. All cases return "Certificate Graduated".
    var graduate: String {
        switch self {
        case .graduate, .intermediate, .school:
            return "Certificate Graduated"
        }
    }
    
    /// Returns a string providing a brief description of the certificate obtained at each educational institution.
    var description: String {
        switch self {
        case .graduate:
            return "Received upon finishing an undergraduate program at VITAM College"
        case .intermediate:
            return "Awarded upon completing a secondary education at Sri Chaitanya"
        case .school:
            return "SSC Certification received after finishing the secondary level of education at Bhashyam"
        }
    }
}

/// `MyCertificateModel` is an enum representing various courses certificates.
enum MyCertificateModel: String {
    // MARK: Certificate Names
        
    /// Certificate names for different courses.
    static let cetificateName: [String] = ["Learn Swift with Bob: The Intermediate to Advanced Swift", "iOS Push Notifications: Beginner to Advanced"]
    
    //MARK: Cases
    
    /// Certificate case for the "Level Up in Swift" course.
    case levelUpinSwift = "Level Up in Swift"
    
    /// Certificate case for the "Level Up in Auto Layout - Swift" course.
    case levelUpinNotifications = "Level Up in Notifications - Swift"
    
    
    // MARK: Certificate Properties
        
    /// URL link for each certificate.
    var linkURL: String {
        switch self {
        case .levelUpinSwift:
            return "https://www.udemy.com/course/learn-swift-with-bob/"
        case .levelUpinNotifications:
            return "https://www.udemy.com/course/ios-push-notifications/"
        }
    }
    
    /// Issue dates for each certificate.
    var dates: String {
        switch self {
        case .levelUpinSwift:
            return "Apr 2023"
        case .levelUpinNotifications:
            return "May 2022"
        }
    }
    
    /// School or platform where the courses were taken.
    var school: String {
        switch self {
        case .levelUpinSwift, .levelUpinNotifications:
            return "Udemy"
        }
    }
}

/// `MySkillsModel` is an enum representing a model containing all the owner's skills related to iOS App Development
enum MySkillsModel: String {
    
    //MARK: Properties
    
    /// An array containing all available skills.
    static let skills: [String] = ["APIs", "CocoaPods", "CoreData", "Firebase", "GitHub", "iOS Animations", "JSON", "MVC", "MVVM", "Swift", "SwiftUI", "UIKit", "UI/UX Designer"]
    
    //MARK: Cases
    
    /// Cases representing individual skills.
    case api = "APIs"
    case autoLayout = "Auto Layout"
    case cocoaPods = "CocoaPods"
    case coreData = "CoreData"
    case firebase = "Firebase"
    case gitHub = "GitHub"
    case iOSAnimation = "iOS Animations"
    case JSON = "JSON"
    case MVC = "MVC"
    case MVVM = "MVVM"
    case swift = "Swift"
    case swiftUI = "SwiftUI"
    case uikit = "UIKit"
    case uiuxDesign = "UI/UX Designer"
    
    //MARK: Computed properties
    
    /// Computed property representing the skill level based on the skill category.
    var level: String {
        switch self {
            
        case .swiftUI:
            return "Basic"
        case .coreData, .gitHub, .iOSAnimation:
            return "Elementary"
        case .api, .cocoaPods, .firebase, .JSON, .uiuxDesign:
            return "Intermediate"
        case .uikit, .autoLayout, .MVC, .MVVM, .swift:
            return "Advanced"
        }
    }
 
}

