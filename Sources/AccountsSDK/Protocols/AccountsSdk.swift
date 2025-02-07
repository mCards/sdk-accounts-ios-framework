//
//  AccountsSDK.swift
//  AccountsSDK
//
//  Created by Yaro on 2/7/25.
//

import Foundation
import CoreSDK

public protocol AccountsSdk {
    
    func configure(
        accessToken: String,
        debugMode: Bool,
        tokenRefreshCallback: ASDKTokenRefreshCallback,
        loggingCallback: LoggingCallback?)
    
    func configure(accessToken: String, tokenRefreshCallback: ASDKTokenRefreshCallback)
        
    func getAccounts(completion: @escaping ((_ result: Result<[Account], Error>) -> Void))
    
    func getPaymentGateways(completion: @escaping ((_ result: Result<[PaymentGateway], Error>) -> Void))
    
    func addAccount(
        token: String?, name: String?,
        type: String, corporate: Bool,
        data: AccountData?,
        completion: @escaping ((_ result: Result<Account, Error>) -> Void))
    
    func updateAccount(
        uuid: String, status: String,
        completion: @escaping ((_ result: Result<Account, Error>) -> Void))
    
    func reorderAccounts(
        accountIds: [String],
        completion: @escaping ((_ result: Result<[Account], Error>) -> Void))
    
    func updateAccountName(renameMap: [String : String], completion: @escaping ((_ result: Result<[Account], Error>) -> Void))
    
    func addPlaidAccount(
        token: String,
        completion: @escaping ((_ result: Result<[Account], Error>) -> Void))
    
    func getNewPlaidToken(appId: String, completion: @escaping ((_ result: Result<PlaidLinkToken, Error>) -> Void))
    
    func getExistingPlaidToken(appId: String, accountId: String, completion: @escaping ((_ result: Result<PlaidLinkToken, Error>) -> Void))
        
    func deactivateAccount(accountId: String, name: String, completion: @escaping ((_ result: Result<Bool, Error>) -> Void))

    func logout()
}
