//
//  NotificationManager.swift
//  NotificationManager
//
//  File created by Tim Bodeit on 08/12/14.
//  Based on code from http://moreindirection.blogspot.de/2014/08/nsnotificationcenter-swift-and-blocks.html?showComment=1418043102722
//

import Foundation

/** 
A class that can be used to sign up as an NSNotificationCenter observer by
passing a Swift closure.

Every object, that listens to Notifications should have its own NotificationManager.
All observers are automatically deregistered when the object is deallocated.
*/
open class NotificationManager {
  private var observerTokens: [AnyObject] = []
  
  // MARK: - Lifecycle
  
  public init() {}
    
  deinit {
    deregisterAll()
  }
  
  // MARK: - Observer handling
  
  open func registerObserver(_ name: NSNotification.Name?, forObject object: AnyObject? = nil, block: @escaping ((Notification!) -> Void)) {
    let newToken = NotificationCenter.default.addObserver(forName: name, object: object, queue: nil, using: block)
    observerTokens.append(newToken)
  }
  
  open func deregisterAll() {
    for token in observerTokens {
      NotificationCenter.default.removeObserver(token)
    }
    
    observerTokens = []
  }
}

public typealias TBNotificationManager = NotificationManager
