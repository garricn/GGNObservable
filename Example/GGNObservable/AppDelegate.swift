//
//  AppDelegate.swift
//  GGNObservable
//
//  Created by Garric Nahapetian on 10/14/16.
//  Copyright © 2016 Garric Nahapetian. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let rootVC = resolvedVC()
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
}

func resolvedVC() -> ViewController {
    return ViewController(viewModel: resolvedVM())
}

func resolvedVM() -> ViewModeling {
    return ViewModel()
}
