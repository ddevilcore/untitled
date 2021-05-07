//
//  ContentView.swift
//  untitled
//
//  Created by Artem on 06.05.2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var selectedTab: tabs = tabs.dataList
    @StateObject var advantagesViewModel = AdvantagesViewModel()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            AdvantagesView(selectedTab: $selectedTab)
                .tag(tabs.dataList)
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                }
            
            SearchView()
                .tag(tabs.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            ProfileView()
                .tag(tabs.profile)
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .environmentObject(advantagesViewModel)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
