//
//  ASDKTokenRefreshCallback.swift
//  AccountsSDK
//
//  Created by Yaro on 2/7/25.
//

import Foundation
import CoreSDK


public protocol ASDKTokenRefreshCallback {
   
    func refreshJWTs(completion: @escaping (JWTs) -> Void)
}
