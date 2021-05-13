//
//  Store.swift
//  untitled
//
//  Created by Artem on 11.05.2021.
//

import Foundation

final class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    
    private let mainReducer: Reducer<State, Action>
    
    init(initialState: State, mainReducer: @escaping Reducer<State, Action>) {
        self.state = initialState
        self.mainReducer = mainReducer
    }
    
    func send(_ action: Action) {
        mainReducer(&state, action)
    }
}
