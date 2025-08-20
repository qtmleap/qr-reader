//
//  Main.swift
//  QRReader
//
//  Created by devonly on 2025/07/07.
//  Copyright © 2025 QuantumLeap. All rights reserved.
//

import QuantumLeap
import SwiftUI
import Firebase
import FirebaseAppCheck

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
#if DEBUG || targetEnvironment(simulator)
        AppCheck.setAppCheckProviderFactory(AppCheckDebugProviderFactory())
#endif
        FirebaseApp.configure()
        return true
    }
}

@main
struct Main: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentIsFirstLaunch()
        }
    }
}
