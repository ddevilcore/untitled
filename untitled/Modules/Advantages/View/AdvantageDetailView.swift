//
//  AdvantageDetailView.swift
//  untitled
//
//  Created by Artem on 07.05.2021.
//

import SwiftUI

struct AdvantageDetailView: View {
    var advantage: Advantage
    
    var body: some View {
        NavigationView {
            Text(advantage.title)
        }
    }
}
