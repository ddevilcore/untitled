//
//  AdvantagesViewModel.swift
//  untitled
//
//  Created by Artem on 07.05.2021.
//

import SwiftUI
import Combine


class AdvantagesViewModel: ObservableObject {
    @Published var advantages: [Advantage] = [
        Advantage(title: "Diamond", subTitle: "Jewelry", timestamp: Date()),
        Advantage(title: "Shoes", subTitle: "Shoes", timestamp: Date()),
        Advantage(title: "Car", subTitle: "Cars", timestamp: Date()),
        Advantage(title: "House", subTitle: "Houses", timestamp: Date())
    ]
        
    func addAdvantage(advantage: Advantage) {
        advantages.append(advantage)
    }
    
    func removeAdvantageByProperty(advantageProperty: String) {
        advantages = advantages.filter { $0.title != advantageProperty }
    }
}
