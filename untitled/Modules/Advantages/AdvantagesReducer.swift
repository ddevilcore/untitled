//
//  AdvantagesReducer.swift
//  untitled
//
//  Created by Artem on 13.05.2021.
//

import Foundation

typealias Reducer<State, Action> = (inout State, Action) -> Void
    
func advantagesReducer(state: inout AppState, action: AdvantagesActions) -> Void {
    switch action {
    case let .setAdvantage(advantage):
        state.advantages.append(advantage)
    case let .removeAdvantageByProperty(advantage):
        state.advantages.filter { $0 != advantage }
    default:
        break
    }
}
