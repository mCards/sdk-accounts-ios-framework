//
//  AccountsSdkImp.swift
//  AccountsSDK
//
//  Created by Yaro on 2/7/25.
//

import Foundation
import CoreSDK

class AccountsSdkImpl {
    
    let accountsApi = AccountApi()
    
}

extension AccountsSdkImpl: AccountsSdk {
    
    func getExistingPlaidToken(appId: String, accountId: String, completion: @escaping ((Result<PlaidLinkToken, any Error>) -> Void)) {
        //TODO: - Implement it
    }
    

    func configure(accessToken: String, tokenRefreshCallback: any ASDKTokenRefreshCallback) {
        //TODO: - Implement it

    }
        
    func configure(
        accessToken: String,
        debugMode: Bool,
        tokenRefreshCallback: ASDKTokenRefreshCallback,
        loggingCallback: LoggingCallback?) {
            //TODO: - Implement it
        }
    
    func getAccounts(completion: @escaping ((Result<[Account], any Error>) -> Void)) {
        accountsApi.getAccounts(completion: completion)
    }
    
    func getPaymentGateways(completion: @escaping ((Result<[PaymentGateway], any Error>) -> Void)) {
        accountsApi.getAccountsGateways(completion: completion)
    }
    
    func addAccount(token: String?, name: String?, type: String, corporate: Bool, data: AccountData?, completion: @escaping ((Result<Account, any Error>) -> Void)) {
        accountsApi.addAccount(token: token, name: name, type: type, corporate: corporate, data: data, completion: completion)
    }
    
    func updateAccount(uuid: String, status: String, completion: @escaping ((Result<Account, any Error>) -> Void)) {
        
        accountsApi.updateAccount(uuid: uuid, status: status, completion: completion)
    }
    
    func reorderAccounts(body: ReorderAccountRequest, completion: @escaping ((Result<[Account], any Error>) -> Void)) {
        
        accountsApi.reorderAccounts(body: body, completion: completion)
    }
    
    func updateAccountName(body: RenameFundingRequest, completion: @escaping ((Result<[Account], any Error>) -> Void)) {
        
        accountsApi.updateAccountName(body: body, completion: completion)
    }
    
    func createPlaidLinkToken(body: PlaidLinkTokenRequest, completion: @escaping ((Result<PlaidLinkToken, any Error>) -> Void)) {
        accountsApi.createPlaidLinkToken(body: body, completion: completion)
    }
    
    func addPlaidAccount(token: String, completion: @escaping ((Result<[Account], any Error>) -> Void)) {
        accountsApi.addPlaidAccount(token: token, completion: completion)
    }
    
    func getNewPlaidToken(appId: String, completion: @escaping ((Result<PlaidLinkToken, any Error>) -> Void)) {
    }
    
    func logout() {
        //TODO: - Add impl
    }
}
