//
//  AppConstants.swift
//  Abdurrahmansapplication1

import Foundation

struct AppConstants {
    static let serverURL: String = "https://nodedemo.dhiwise.co"

    enum URL {
        static let login: String = "/device/auth/login"
        static let register: String = "/device/auth/register"
        static let me: String = "/device/api/v1/user/me"
    }
}
