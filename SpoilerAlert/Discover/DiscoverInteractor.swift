//
//  DiscoverInteractor.swift
//  SpoilerAlert
//
//  Created by Guillermo Costa on 5/18/19.
//  Copyright (c) 2019 Usuario. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol DiscoverBusinessLogic
{
  func doSomething(request: Discover.Something.Request)
}

protocol DiscoverDataStore
{
  //var name: String { get set }
}

class DiscoverInteractor: DiscoverBusinessLogic, DiscoverDataStore
{
  var presenter: DiscoverPresentationLogic?
  var worker: DiscoverWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Discover.Something.Request)
  {
    worker = DiscoverWorker()
    worker?.doSomeWork()
    
    let response = Discover.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
