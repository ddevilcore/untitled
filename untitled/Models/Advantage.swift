//
//  Advantage.swift
//  untitled
//
//  Created by Artem on 07.05.2021.
//

import Foundation

struct Advantage: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var subTitle: String
    var timestamp: Date
    
    init(title: String, subTitle: String, timestamp: Date) {
        self.title = title
        self.subTitle = subTitle
        self.timestamp = timestamp
    }
}

//let firstAdvantage = Advantage(title: "Diamond", subTitle: "Jewelry", timestamp: Date())
//let secondAdvantage = Advantage(title: "Shoe", subTitle: "Shoes", timestamp: Date())
//let thirdAdvantage = Advantage(title: "Car", subTitle: "Auto", timestamp: Date())
//let fourthAdvantage = Advantage(title: "House", subTitle: "Houses", timestamp: Date())
//let advantagesList: [Advantage] = [firstAdvantage, secondAdvantage, thirdAdvantage, fourthAdvantage]
