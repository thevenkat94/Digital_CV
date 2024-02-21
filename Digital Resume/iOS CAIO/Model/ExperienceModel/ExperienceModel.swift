//
//  ExperienceModel.swift
//  iOS CAIO
//
//  Created by Venkata Prabhu on 20.10.2024.
//

import Foundation

/// `MyExperienceMode` is an enum representing diverse work experiences, each associated with a specific company.
enum MyExperienceModel: String {
    
    //MARK: Properties
    /// An array containing the names of all companies available in the enum.
    static let companies: [String] = ["Robosoft Technology","Mobile Programming LLC", "Advanced Millennium Technologies Pvt Ltd", "Henote Technologies"]
    
    //MARK: Cases
    /// Cases representing each company along with its corresponding name.
    case robosoftTech = "Robosoft Technology"
    case mobilePrgm = "Mobile Programming LLC"
    case amt = "Advanced Millennium Technologies Pvt Ltd"
    case ht = "Henote Technologies"
    
    //MARK: Computed properties
    /// Computed property returning the role or position associated with each company.
    var position: String {
        switch self {
        case .robosoftTech:
            return "Senior Software Engineer"
        case .mobilePrgm:
            return "Senior Software Developer"
        case .amt:
            return "Software Engineer"
        case .ht:
            return "iOS Developer"
        }
    }
    
    /// Computed property returning a formatted string containing company name, location, and employment duration.
    var companiesNameLocationDate: String {
        switch self {
        case .robosoftTech:
            return "Robosoft Technology, Bengaluru, Mar 2023 - Present"
        case .mobilePrgm:
            return "Mobile Programming LLC, Bengaluru, Nov 2021 - May 2022"
        case .amt:
            return "Advanced Millennium Technologies Pvt Ltd, Bengaluru, India, July 2019 - Nov 2021"
        case .ht:
            return "Henote Technologies, Hyderabad, Mar 2017 - July 2019"
        }
    }
    
    /// Computed property returning an array of tasks or responsibilities for each company.
    var tasks: [String] {
        switch self {
        case .robosoftTech:
            return ["Collaborated with teams regarding technical issues.", "Managed software lifecycle from concept to execution.","Verified and resolved bug reports and issues."]
        case .mobilePrgm:
            return ["software system design and maintenance.","Verified and resolved bug reports and issues.", "Improving existing iOS app."]
        case .amt:
            return ["Wrote clean, clear and well-tested code.", "Implemented code fixes and enhancements", "Debugged and modified software components to fix faults."]
        case .ht:
            return ["Adapted changes in Swift languages and technologies", "Understanding Project Requirements", "UI Design"]
        }
    }
}
