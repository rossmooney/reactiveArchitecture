//
//  MainViewModel.swift
//  ArchitectureTest
//
//  Created by Ross Mooney on 10/16/17.
//  Copyright © 2017 Comprendo. All rights reserved.
//

import Foundation

enum MainScreenError:Error {
    case noInternetConnection
    case unknownError
    case badData
}

enum MainState {
    case loading
    case complete
    case error(MainScreenError)
}

extension MainState: Equatable {}
func ==(lhs: MainState, rhs: MainState) -> Bool {
    switch (lhs, rhs) {
    case (.error(let error1), .error(let error2)): return error1 == error2
    case (.loading, .loading), (.complete,.complete): return true
    default:return false
    }
}

class MainViewModel {
    var state:MainState = .loading
    
    func changeState() {
        state = .complete
    }
}

