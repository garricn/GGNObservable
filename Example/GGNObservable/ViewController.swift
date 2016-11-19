//
//  ViewController.swift
//  Observable
//
//  Created by Garric Nahapetian on 10/14/16.
//  Copyright © 2016 Garric Nahapetian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewModel: ViewModeling

    init(viewModel: ViewModeling) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.viewModel = resolvedVM()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()

        viewModel.alertOutput.onNext { [weak self] alert in
            self?.present(alert, animated: true, completion: nil)
        }

        viewModel.alertOutput.onNext {
            print($0)
        }
    }

    func setupButton() {
        let button = UIButton(type: .contactAdd)
        button.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        button.center = view.center
        view.addSubview(button)
    }

    func addButtonTapped() {
        viewModel.addButtonTapped()
    }
}
