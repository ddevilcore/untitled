//
//  AdvantagesView.swift
//  untitled
//
//  Created by Artem on 06.05.2021.
//

import SwiftUI

struct AdvantagesView: View {
    @Binding var selectedTab: tabs
    @EnvironmentObject var advantagesViewModel: AdvantagesViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical) {
                    ForEach(advantagesViewModel.advantages) { advantage in
                        VStack {
                            NavigationLink(
                                destination: AdvantageDetailView(advantage: advantage),
                                label: {
                                    AdvantageCard(title: advantage.title, subTitle: advantage.subTitle, timestamp: advantage.timestamp, removeAdvantage: advantagesViewModel.removeAdvantageByProperty)
                                }
                            )
                        }
                        Spacer(minLength: 30)
                    }
                    .frame(maxWidth: .infinity)
                }
                
                Button(
                    action: {
                        advantagesViewModel.addAdvantage(advantage: Advantage(
                            title: "New",
                            subTitle: "Test",
                            timestamp: Date()
                        ))
                    },
                    label: {
                        Text("Tap to add ADVANTAGE")
                        
                    }
                )
                .padding(.top, 30)
                .padding(.bottom, 30)
                
            }
            .navigationBarHidden(true)
        }
    }
}
