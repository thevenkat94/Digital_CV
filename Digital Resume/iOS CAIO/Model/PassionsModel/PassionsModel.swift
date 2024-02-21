//
//  PassionsModel.swift
//  IOS CAIO
//
//  Created by Venkata Prabhu on 23.01.2024.
//

import Foundation
/**
 `PassionsModel` Enum
  
 An enum representing different passions or interests along with associated information such as a description, picture filenames, and their order in a sequence.
 
 */
enum PassionsModel: String {
    
    //MARK: Properties
    /// An array containing filenames of pictures corresponding to each passion.
    static let pictures: [String] = ["Coding", "Explore", "MyBest", "ScubaDiving", "think"]
    
    //MARK: Cases
    /// Cases representing the filenames of pictures
    case coding = "Coding"
    case explore = "Explore"
    case best = "MyBest"
    case scuba = "ScubaDiving"
    case thinkDiff = "think"
    
    //MARK: Computed properties
    /// A descriptive phrase associated with each passion.
    var phrase: String {
        switch self {
        case .coding:
            return "I'm a coding enthusiast with a penchant for nature, turning bugs into features while surrounded by bugs at the park! 😎🌳"
        case .explore:
            return "I'm a self-proclaimed model of mirth and pixels, striking a pose in the art of selfie-glamour and filter finesse! 📸🕺🏽"
        case .best:
            return "I'm like a GPS with a sense of humor—always taking detours and turning wrong ways into the scenic route of adventure! 🚤🤣"
        case .scuba:
            return "I'm the snap-happy sidekick, turning everyday moments into Instagram-worthy scenes, one friend at a time! 📸❤️"
        case .thinkDiff:
            return "I'm like a camera with a 'first impression' filter—snapping the perfect shot on my virgin visit to every place, leaving a trail of rookie brilliance! 🏞️🤳🏽"
        }
    }
    /// The sequence number of the picture associated with each passion.
    var picNumber: String {
        switch self {
        case .coding:
            return "1/5"
        case .explore:
            return "2/5"
        case .best:
            return "3/5"
        case .scuba:
            return "4/5"
        case .thinkDiff:
            return "5/5"
        }
    }
    
}
