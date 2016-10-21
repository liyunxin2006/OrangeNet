//
//  ONHomeViewController.swift
//  OrangeNet
//
//  Created by li yunxin on 2016/10/20.
//  Copyright © 2016年 li yunxin. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Result
import SnapKit

class ONHomeViewController: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        title = "首页"
        
        let textField = UITextField()
        textField.backgroundColor = UIColor.lightGray
        self.view .addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.center.equalTo(self.view)
        }
        
        testReactiveCocoa()
        
    }
    
    public func scopedExample(_ exampleDescription: String, _ action: () -> Void) {
        print("\n--- \(exampleDescription) ---\n")
        action()
    }
    
    func testReactiveCocoa() {
        /*scopedExample("Subscription") {
            // Signal.pipe is a way to manually control a signal. the returned observer can be used to send values to the signal
            let (signal, observer) = Signal<Int, NoError>.pipe()
            
            let subscriber1 = Observer<Int, NoError>(value: { print("Subscriber 1 received \($0)") })
            let subscriber2 = Observer<Int, NoError>(value: { print("Subscriber 2 received \($0)") })
            
            print("Subscriber 1 subscribes to the signal")
            print("\(observer)")
            signal.observe(subscriber1)
            
            print("Send value `10` on the signal")
            // subscriber1 will receive the value
            observer.send(value: 10)
            
            print("Subscriber 2 subscribes to the signal")
            // Notice how nothing happens at this moment, i.e. subscriber2 does not receive the previously sent value
            signal.observe(subscriber2)
            
            print("Send value `20` on the signal")
            // Notice that now, subscriber1 and subscriber2 will receive the value
            observer.send(value: 20)
        }*/
        
        /*scopedExample("`empty`") {
            let emptySignal = Signal<Int, NoError>.empty
            
            let observer = Observer<Int, NoError>(value: { _ in print("next not called") },
                                                   failed: { _ in print("error not called") },
                                                   completed: { print("completed not called") },
                                                   interrupted: { print("interrupted called") })
            
            emptySignal.observe(observer)
        }*/
        
        /*scopedExample("'never'") {
            let neverSignal = Signal<Int, NoError>.never
            
            let observer = Observer<Int, NoError>(value: { _ in print("next not called") },
                                                  failed: { _ in print("error not called") },
                                                  completed: { print("completed not called") },
                                                  interrupted: { print("interrupted not called") })
            
            neverSignal.observe(observer)
        }*/
        
        /*scopedExample("`uniqueValues`") {
            let (signal, observer) = Signal<Int, NoError>.pipe()
            let subscriber = Observer<Int, NoError>(value: { print("Subscriber received \($0)") })
            let uniqueSignal = signal.uniqueValues()
            
            uniqueSignal.observe(subscriber)
            observer.send(value: 1)
            observer.send(value: 2)
            observer.send(value: 3)
            observer.send(value: 4)
            observer.send(value: 3)
            observer.send(value: 3)
            observer.send(value: 5)
        }*/
        
        /*scopedExample("'map'") {
            let (signal, observer) = Signal<Int, NoError>.pipe()
            let subscriber = Observer<Int, NoError>(value: { print("Subscriber received \($0)") })
            let mappedSignal = signal.map { $0*2 }
            
            mappedSignal.observe(subscriber)
            observer.send(value: 10)
        }*/
        
        /*scopedExample("`mapError`") {
            let userInfo = [NSLocalizedDescriptionKey: "🔥"]
            let mappedError = NSError(domain: "com.reactivecocoa.errordomain", code: 5184, userInfo: userInfo)
            let (signal, observer) = Signal<Int, NSError>.pipe()
            let subscriber = Observer<Int, NSError>(failed: { print("Subscriber received error: \($0)") } )
            let mappedErrorSignal = signal.mapError({ error -> NSError in
                return mappedError
            })
            
            mappedErrorSignal.observe(subscriber)
            print("Send error `NSError(domain: \"com.reactivecocoa.errordomain\", code: 4815, userInfo: nil)` on the signal")
            observer.send(error: NSError(domain: "com.reactivecocoa.errordomain", code: 4815, userInfo: nil))
        }*/
        
        /*scopedExample("`filter`") {
            let (signal, observer) = Signal<Int, NoError>.pipe()
            let subscriber = Observer<Int, NoError>(value: { print("Subscriber received \($0)") } )
            // subscriber will only receive events with values greater than 12
            let filteredSignal = signal.filter { $0 > 12 ? true : false }
            
            filteredSignal.observe(subscriber)
            observer.send(value: 10)
            observer.send(value: 11)
            observer.send(value: 12)
            observer.send(value: 13)
            observer.send(value: 14)
        }*/
        
        /*scopedExample("`ignoreNil`") {
            let (signal, observer) = Signal<Int?, NoError>.pipe()
            // note that the signal is of type `Int?` and observer is of type `Int`, given we're unwrapping
            // non-`nil` values
            let subscriber = Observer<Int, NoError>(value: { print("Subscriber received \($0)") } )
            let ignoreNilSignal = signal.skipNil()
            
            ignoreNilSignal.observe(subscriber)
            observer.send(value: 1)
            observer.send(value: nil)
            observer.send(value: 3)
        }*/
        
        /*scopedExample("`take`") {
            let (signal, observer) = Signal<Int, NoError>.pipe()
            let subscriber = Observer<Int, NoError>(value: { print("Subscriber received \($0)") } )
//            let takeSignal = signal.take(first: 2)
            let takeSignal = signal.take(last: 2)
            
            takeSignal.observe(subscriber)
            observer.send(value: 1)
            observer.send(value: 2)
            observer.send(value: 3)
            observer.send(value: 4)
            observer.sendCompleted()
        }*/
        
        /*scopedExample("`collect`") {
            let (signal, observer) = Signal<Int, NoError>.pipe()
            // note that the signal is of type `Int` and observer is of type `[Int]` given we're "collecting"
            // `Int` values for the lifetime of the signal
            let subscriber = Observer<[Int], NoError>(value: { print("Subscriber received \($0)") } )
            let collectSignal = signal.collect()
            
            collectSignal.observe(subscriber)
            observer.send(value: 1)
            observer.send(value: 2)
            observer.send(value: 3)
            observer.send(value: 4)
            observer.sendCompleted()
        }*/
        
        
        /*
         *********************SignalProducer********************
        */
        
        /*scopedExample("Subscription") {
            let producer = SignalProducer<Int, NoError>({ observer, _ in
                print("New subscription, starting operation")
                observer.send(value: 1)
                observer.send(value: 2)
            })
            
            let subscriber1 = Observer<Int, NoError>(value: { print("Subscriber 1 received \($0)") })
            let subscriber2 = Observer<Int, NoError>(value: { print("Subscriber 2 received \($0)") })
            
            print("Subscriber 1 subscribes to producer")
            producer.start(subscriber1)
            
            print("Subscriber 2 subscribes to producer")
            // Notice, how the producer will start the work again
            producer.start(subscriber2)
        }*/
        
        /*scopedExample("`empty`") {
            let emptyProducer = SignalProducer<Int, NoError>.empty
            
            let observer = Observer<Int, NoError>(value: { _ in print("next not called") },
                                                  failed: { _ in print("error not called") },
                                                  completed: { print("completed called") },
                                                  interrupted: { print("interrupted not called") })
            
            emptyProducer.start(observer)
        }*/
        
        /*scopedExample("`never`") {
            let neverProducer = SignalProducer<Int, NoError>.never
            
            let observer = Observer<Int, NoError>(value: { _ in print("next not called") },
                                                  failed: { _ in print("error not called") },
                                                  completed: { print("completed not called") },
                                                  interrupted: { print("interrupted not called") })
            
            neverProducer.start(observer)
        }*/
        
        /*scopedExample("`startWithSignal`") {
//            var started = false
            var value: Int?
            
            SignalProducer<Int, NoError>(values: 11, 12, 13, 14, 15)
//            SignalProducer<Int, NoError>(value: 42)
                .on(value: {
                    value = $0
                })
                .startWithSignal { signal, disposable in
                    print(signal)
                    print("a:\(value)")
                }
            
            print("b:\(value)")
        }*/
        
        /*scopedExample("'startWithNext'") {
            SignalProducer<Int, NoError>(value: 42).startWithValues {
                print($0)
            }
        }*/
        
        /*scopedExample("`startWithCompleted`") {
            SignalProducer<Int, NoError>(value: 42)
                .startWithCompleted {
                    print("completed called")
            }
        }*/
        
        /*scopedExample("`startWithFailed`") {
            SignalProducer<Int, NSError>(error: NSError(domain: "example", code: 42, userInfo: nil))
                .startWithFailed { error in
                    print(error)
            }
        }*/
        
        scopedExample("`startWithInterrupted`") {
            let disposable = SignalProducer<Int, NoError>.never
                .startWithInterrupted {
                    print("interrupted called")
            }
            
            disposable.dispose()
        }
        
    }

}
