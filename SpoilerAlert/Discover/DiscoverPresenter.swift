//
//  DiscoverPresenter.swift
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

protocol DiscoverPresentationLogic
{
  func presentSomething(response: Discover.Something.Response)
}

class DiscoverPresenter: DiscoverPresentationLogic
{
  weak var viewController: DiscoverDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Discover.Something.Response)
  {
    let viewModel = Discover.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}