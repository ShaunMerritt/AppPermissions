//
// AppPermissions
// Created by Shaun Merritt on 8/12/18.
// Copyright © 2018 ImagineSwift. All rights reserved.
// 

import Foundation

public enum PermissionGuardedAPIType {
  case contact
  
  func getClass() -> PermissionGuardedAPI {
    switch self {
    case .contact:
      return PermissionGuardedContactsAPI()
    }
  }
}
