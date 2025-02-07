//
//  AccountApi.swift
//  AccountsSDK
//
//  Created by Yaro on 2/7/25.
//

import Foundation

class AccountApi {
    
    func getAccounts(completion: @escaping ((_ result: Result<[Account], Error>) -> Void)) {
        //TODO: - ...
    }
    
    func getAccountsGateways(completion: @escaping ((_ result: Result<[PaymentGateway], Error>) -> Void)) {
        //TODO: - ...
    }
    
    func addAccount(
        token: String?, name: String?,
        type: String, corporate: Bool,
        data: AccountData?,
        completion: @escaping ((_ result: Result<Account, Error>) -> Void)) {
            //TODO: - ...
        }
    
    func updateAccount(
        uuid: String, status: String,
        completion: @escaping ((_ result: Result<Account, Error>) -> Void)) {
            //TODO: - ...
        }
    
    func reorderAccounts(
        body: ReorderAccountRequest,
        completion: @escaping ((_ result: Result<[Account], Error>) -> Void)) {
            //TODO: - ...
        }
    
    func updateAccountName(
        body: RenameFundingRequest,
        completion: @escaping ((_ result: Result<[Account], Error>) -> Void)) {
            //TODO: - ...
        }
    
    func createPlaidLinkToken(
        body: PlaidLinkTokenRequest,
        completion: @escaping ((_ result: Result<PlaidLinkToken, Error>) -> Void)) {
            //TODO: - ...
        }
    
    func addPlaidAccount(
        token: String,
        completion: @escaping ((_ result: Result<[Account], Error>) -> Void)) {
            //TODO: - ...
        }
    
    func getNewPlaidToken(appId: String, completion: @escaping ((_ result: Result<PlaidLinkToken, Error>) -> Void)) {
        //TODO: - ...
    }
}
 
public class Account: Codable {}
public class PaymentGateway: Codable {}
public class AccountData: Codable {}
class ReorderAccountRequest: Codable {}
class RenameFundingRequest: Codable {}
class PlaidLinkTokenRequest: Codable {}
public class PlaidLinkToken: Codable {}
