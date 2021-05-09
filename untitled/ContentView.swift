//
//  ContentView.swift
//  untitled
//
//  Created by Artem on 06.05.2021.
//

import SwiftUI
import CoreData
import Combine

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject private var authorizationViewModel: AuthorizationViewModel = AuthorizationViewModel()
    
    @State private var selectedTab: Tabs = Tabs.dataList
    
    var body: some View {
        TabView(selection: $selectedTab) {
            AdvantagesView(selectedTab: $selectedTab)
                .tag(Tabs.dataList)
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                }
            
            SearchView()
                .tag(Tabs.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            ProfileView()
                .tag(Tabs.profile)
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .sheet(isPresented: $authorizationViewModel.notAuthorized) {
            AuthorizationView()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
