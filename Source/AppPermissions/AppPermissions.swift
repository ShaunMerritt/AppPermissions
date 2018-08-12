//
// AppPermissions
// Created by Shaun Merritt on 8/11/18.
// Copyright © 2018 ImagineSwift. All rights reserved.
// 

import Foundation

public class AppPermissions: NSObject {
  
  public typealias Completion = (PermissionStatus) -> Void
  
  public func checkPermissionStatus(type: PermissionGuardedAPIType, completion: @escaping Completion) {
    type.getClass().checkPermissionStatus { (status) in
      completion(status)
    }
  }
  
  public func requestAuthorization(type: PermissionGuardedAPIType, completion: @escaping Completion) {
    type.getClass().requestAuthorization { (status) in
      completion(status)
    }
  }
  
}
