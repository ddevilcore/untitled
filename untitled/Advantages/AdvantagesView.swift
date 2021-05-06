//
//  AdvantagesView.swift
//  untitled
//
//  Created by Artem on 06.05.2021.
//

import SwiftUI

struct AdvantagesView: View {
    @Binding var selectedTab: tabs
    var body: some View {
        
        Button(action: { selectedTab = tabs.profile }, label: { Text("To Profile") })
    }
}
