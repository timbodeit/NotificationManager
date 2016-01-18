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
public class NotificationManager {
  private var observerTokens: [AnyObject] = []
  
  // MARK: - Lifecycle
  
  public init() {}
    
  deinit {
    deregisterAll()
  }
  
  // MARK: - Observer handling
  
  public func registerObserver(name: String!, block: (NSNotification! -> Void)) {
    let newToken = NSNotificationCenter.defaultCenter().addObserverForName(name, object: nil, queue: nil, usingBlock: block)
    
    observerTokens.append(newToken)
  }
  
  public func registerObserver(name: String!, forObject object: AnyObject!, block: (NSNotification! -> Void)) {
    let newToken = NSNotificationCenter.defaultCenter().addObserverForName(name, object: object, queue: nil, usingBlock: block)
    observerTokens.append(newToken)
  }
  
  public func deregisterAll() {
    for token in observerTokens {
      NSNotificationCenter.defaultCenter().removeObserver(token)
    }
    
    observerTokens = []
  }
}

typealias TBNotificationManager = NotificationManager
