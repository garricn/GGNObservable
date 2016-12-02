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
        view.backgroundColor = .whiteColor()
        setupButton()

        viewModel.alertOutput.onNext { [weak self] alert in
            self?.presentViewController(alert, animated: true, completion: nil)
        }

        viewModel.alertOutput.onNext { [weak self] in
            print($0)
            print("Last event = \(self?.viewModel.alertOutput.lastEvent)")
        }
    }

    func setupButton() {
        let button = UIButton(type: .ContactAdd)
        button.addTarget(self, action: #selector(addButtonTapped), forControlEvents: .TouchUpInside)
        button.center = view.center
        view.addSubview(button)
    }

    func addButtonTapped() {
        viewModel.addButtonTapped()
    }
}
