//
//  AppDelegate.swift
//  Dependency Injection
//
//  Created by Javier Cueto on 10/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
//    private let dependency1: Dependency1 = Dependency1Imp()
//    private let dependency2: Dependency2 = Dependency2Imp()
//    private let dependency3: Dependency3 = Dependency3Imp()
//    private let dependency4: Dependency4 = Dependency4Imp()
//    private let dependency5: Dependency5 = Dependency5Imp()
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

