//
//  Abdurrahmansapplication1App.swift
//  Abdurrahmansapplication1

import SwiftUI

@main
struct Abdurrahmansapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
