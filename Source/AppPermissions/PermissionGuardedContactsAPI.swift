//
// AppPermissions
// Created by Shaun Merritt on 8/12/18.
// Copyright © 2018 ImagineSwift. All rights reserved.
// 

import Foundation
import Contacts

class PermissionGuardedContactsAPI: PermissionGuardedAPI {
  
  func checkPermissionStatus(completion: @escaping (PermissionStatus) -> Void) {
    let permissionStatus = CNContactStore.authorizationStatus(for: .contacts)
    switch permissionStatus {
    case .authorized:
      completion(PermissionStatus.authorized)
    case .denied:
      completion(PermissionStatus.denied)
    case .notDetermined:
      completion(PermissionStatus.notDetermined)
    case .restricted:
      completion(PermissionStatus.disabled)
    }
  }
  
  func requestAuthorization(completion: @escaping (PermissionStatus) -> Void) {
    let contactStore = CNContactStore()
    contactStore.requestAccess(for: .contacts) { (allowed, error) in
      guard allowed else {
        completion(PermissionStatus.denied)
        return
      }
      completion(PermissionStatus.authorized)
    }
  }
  
}
