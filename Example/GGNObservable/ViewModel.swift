//
//  ViewModel.swift
//  Observable
//
//  Created by Garric Nahapetian on 10/14/16.
//  Copyright © 2016 Garric Nahapetian. All rights reserved.
//

import GGNObservable

protocol AlertOutputing {
    var alertOutput: Observable<UIAlertController> { get }
}

protocol AddButtonHandling {
    func addButtonTapped()
}

protocol ViewModeling: AlertOutputing, AddButtonHandling {}

class ViewModel: ViewModeling {
    let alertOutput = Observable<UIAlertController>()

    func addButtonTapped() {
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alert = UIAlertController(title: "Hello, World!", message: nil, preferredStyle: .alert)
        alert.addAction(ok)
        alertOutput.emit(alert)
    }
}
