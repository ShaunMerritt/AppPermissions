//
// AppPermissions
// Created by Shaun Merritt on 8/11/18.
// Copyright © 2018 ImagineSwift. All rights reserved.
// 

import Foundation

protocol PermissionGuardedAPI: class {
  
  func checkPermissionStatus(completion: @escaping (PermissionStatus) -> Void)
  func requestAuthorization(completion: @escaping (PermissionStatus) -> Void)
  
}
