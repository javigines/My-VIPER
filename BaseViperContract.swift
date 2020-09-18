//
//  BaseViperContract.swift
//  Webel
//
//  Created by Javier Gines on 18/09/2020.
//  Copyright © 2020 Javier Gines All rights reserved.
//

import Foundation

protocol BaseViperViewController : class
{
    
    associatedtype P: BaseViperPresenter
    var presenter: P? { get }
    
}

protocol BaseViperPresenter : class
{
    associatedtype V: BaseViperViewController
    var view: V? { get }
    
    associatedtype I: BaseViperInteractor
    var interactor: I { get }
    
    associatedtype R: BaseViperRouter
    var router: R { get }
    
}

protocol BaseViperInteractor : class
{
    
    associatedtype P: BaseViperPresenter
    var presenter: P? { get }
    
}

protocol BaseViperRouter : class
{}
