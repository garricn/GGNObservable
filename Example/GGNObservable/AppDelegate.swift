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

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let rootVC = resolvedVC()
        let frame = UIScreen.mainScreen().bounds
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
