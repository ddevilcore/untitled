//
//  MainReducer.swift
//  untitled
//
//  Created by Artem on 13.05.2021.
//

import Foundation

func mainReducer(state: inout AppState, action: MainActions) {
    switch action {
    case let .advantages(action):
        return advantagesReducer(&state.advantages, action)
            .map(MainActions.advantages)
    }
}
