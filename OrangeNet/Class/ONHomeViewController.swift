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
        
        let textField: UITextField = {
            $0.backgroundColor = UIColor.lightGray
            return $0
        }(UITextField())
        self.view .addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.center.equalTo(self.view)
        }
        
//        let signalProducer = SignalProducer<Int, NoError> { observer, disposable in
//            
//            QueueScheduler.main.schedule(after: Date.init(timeInterval: 5, since: Date.init()), action: {
//                observer.send(value: 1)
//            })
//            
//            QueueScheduler.main.schedule(after: Date.init(timeInterval: 10, since: Date.init()), action: {
//                observer.send(value: 2)
//            })
//            
//            print("------------**********------------")
//        }
//        
//        signalProducer.startWithSignal { (signal, disposable) in
//            signal.observeValues {
//                print($0)
//            }
//            
//            QueueScheduler.main.schedule(after: Date.init(timeInterval: 7, since: Date.init()), action: {
//                signal.observeValues {
//                    print("aaa\($0)")
//                }
//            })
//        }
        
//        signalProducer.startWithValues {
//            print($0)
//        }
//        
//        signalProducer.startWithValues {
//            print($0)
//        }
        
//        let searchStrings = textField.reactive.continuousTextValues.map({ (text) -> String in
//            text!
//        }).observeValues {
//            print($0)
//        }
        
//        let request = URLRequest(url: URL(string: "https://www.baidu.com")!)
//        
//        let searchResults = URLSession.shared.reactive.data(with: request).map { (data, response) in
//            String(data: data, encoding: .utf8)!
//        }
//        .observe(on: UIScheduler())
//        
//        searchResults.startWithResult { result in
//            print("Search results: \(result.value)")
//        }
        
        testReactiveCocoa()
        
    }
    
    public func scopedExample(_ exampleDescription: String, _ action: () -> Void) {
        print("\n--- \(exampleDescription) ---\n")
        action()
    }
    
    public enum ONError: Error {
        case Example(String)
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
        
        /*scopedExample("`startWithInterrupted`") {
            let disposable = SignalProducer<Int, NoError>.never
                .startWithInterrupted {
                    print("interrupted called")
            }
            
            disposable.dispose()
        }*/
        
        /*scopedExample("`lift`") {
            var counter = 0
            let transform: (Signal<Int, NoError>) -> Signal<Int, NoError> = { signal in
                counter = 42
                return signal
            }
            
            SignalProducer<Int, NoError>(value: 0)
                .lift(transform)
                .startWithValues { _ in
                    print(counter)
            }
            
        }*/
        
        /*scopedExample("`map`") {
            SignalProducer<Int, NoError>(value: 1)
                .map { $0 + 41 }
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`mapError`") {
            SignalProducer<Int, NSError>(error: NSError(domain: "mapError", code: 42, userInfo: nil))
                .mapError { ONError.Example($0.description) }
                .startWithFailed { error in
                    print(error)
            }
        }*/
        
        /*scopedExample("`filter`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .filter { $0 > 3}
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`take`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .take(first: 2)
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`observeOn`") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let completion = { print("is main thread? \(Thread.current.isMainThread)") }
            
            if #available(OSX 10.10, *) {
                baseProducer
                    .observe(on: QueueScheduler(qos: DispatchQoS.default, name: "test"))
                    .startWithCompleted(completion)
            }
            
            baseProducer
                .startWithCompleted(completion)
        }*/
        
        /*scopedExample("'collect()'") {
            SignalProducer<Int, NoError> { observer, disposable in
                observer.send(value: 1)
                observer.send(value: 2)
                observer.send(value: 3)
                observer.send(value: 4)
                observer.sendCompleted()
            }
            .collect()
            .startWithValues { value in
                print(value)
            }
        }*/
        
        /*scopedExample("'collect(count:)'") {
            SignalProducer<Int, NoError> { observer, disposable in
                observer.send(value: 1)
                observer.send(value: 2)
                observer.send(value: 3)
                observer.send(value: 4)
                observer.send(value: 5)
            }
            .collect(count: 2)
            .startWithValues { value in
                        print(value)
            }
        }*/
        
        /*scopedExample("`collect(predicate:)` matching values inclusively") {
            SignalProducer<Int, NoError> { observer, disposable in
                observer.send(value: 1)
                observer.send(value: 1)
                observer.send(value: 1)
                observer.send(value: 2)
                observer.send(value: 3)
                observer.send(value: 4)
                observer.sendCompleted()
                }
//                .collect { values in values.reduce(0, +) == 3 }
                .collect { values in values.reduce(0, { a, b in a + b }) == 3 }
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`collect(predicate:)` matching values exclusively") {
            SignalProducer<Int, NoError> { observer, disposable in
                observer.send(value: 1)
                observer.send(value: 2)
                observer.send(value: 3)
                observer.send(value: 4)
                observer.send(value: 5)
                observer.sendCompleted()
                }
                .collect { values, next in next == 3 || next == 5 }
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`combineLatestWith`") {
            let producer1 = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let producer2 = SignalProducer<Int, NoError>(values: [ 1, 2 ])
            
            producer1
                .combineLatest(with: producer2)
                .startWithValues { value in
                    print("\(value)")
            }
        }*/
        
        /*scopedExample("`skip`") {
            let producer1 = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            
            producer1
                .skip(first: 2)
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`materialize`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .materialize()
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("'sampleOn'") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let sampledOnProducer = SignalProducer<Int, NoError>(values: [ 1, 2 ]).map{ _ in () }
            
            let newProduce = baseProducer.sample(on: sampledOnProducer)
            
            newProduce.startWithValues { value in
                print(value)
            }
        }*/
        
        /*scopedExample("`combinePrevious`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .combinePrevious(42)
                .startWithValues { value in
                    print("\(value)")
            }
        }*/
        
        /*scopedExample("`scan`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .scan(0, +)
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`reduce`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .reduce(0, +)
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`skipWhile`") {
            SignalProducer<Int, NoError>(values: [ 3, 3, 3, 3, 1, 2, 3, 4 ])
//                .skipRepeats({ (a, b) -> Bool in
//                    print("a:\(a)----b:\(b)")
//                    return a != b
//                })
                .skipRepeats { a, b in a != b }
//                .skipRepeats { _, _ in true }
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`skipWhile`") {
            SignalProducer<Int, NoError>(values: [ 3, 3, 3, 3, 1, 2, 3, 4 ])
                .skip(while: { $0 > 2 })
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`takeUntilReplacement`") {
            let (replacementSignal, incomingReplacementObserver) = Signal<Int, NoError>.pipe()
            
            let baseProducer = SignalProducer<Int, NoError> { incomingObserver, _ in
                incomingObserver.send(value: 1)
                incomingObserver.send(value: 2)
                incomingObserver.send(value: 3)
                // 下面被替换的信号生成器发送了事件，之后就不再发送baseProducer的事件了
                // 相当于被替换了
                incomingReplacementObserver.send(value: 42)
                
                incomingObserver.send(value: 4)
                
                incomingReplacementObserver.send(value: 42)
            }
            
            let producer = baseProducer.take(untilReplacement: replacementSignal)
            
            producer.startWithValues { value in
                print(value)
            }
        }*/
        
        /*scopedExample("`takeLast`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .take(last: 2)
                .producer.startWithValues { value in
                    print(value)
            }
        }*/

        /*scopedExample("`ignoreNil`") {
            SignalProducer<Int?, NoError>(values: [ nil, 1, 2, nil, 3, 4, nil ])
                .skipNil()
                .producer.startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`zipWith`") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let zippedProducer = SignalProducer<Int, NoError>(values: [ 42, 43 ])
            
            baseProducer
                .zip(with: zippedProducer)
                .producer.startWithValues { value in
                    print("\(value)")
            }
        }*/
        
        /*scopedExample("`times`") {
            var counter = 0
            
            SignalProducer<(), NoError> { observer, disposable in
                counter += 1
                observer.sendCompleted()
                }
                .times(42)
                .start()
            
            print(counter)
        }*/
        
        /*scopedExample("`retry`") {
            var tries = 0
            
            SignalProducer<Int, NSError> { observer, disposable in
                    if tries == 0 {
                        tries += 1
                        observer.send(error: NSError(domain: "retry", code: 0, userInfo: nil))
                    } else {
                        observer.send(value: 42)
                        observer.sendCompleted()
                    }
                }
                .retry(upTo: 1)
                .startWithResult { result in
                    print(result)
                }
        }*/

        /*scopedExample("`then`") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let thenProducer = SignalProducer<Int, NoError>(value: 42)
            
            baseProducer
                .then(thenProducer)
                .producer.startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`replayLazily`") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4, 42 ])
                .replayLazily(upTo: 2)
            
            baseProducer.startWithValues { value in
                print(value)
            }
            
            baseProducer.startWithValues { value in
                print(value)
            }
            
            baseProducer.startWithValues { value in
                print(value)
            }
        }*/
        
        /*scopedExample("`flatMap(.Latest)`") {
            SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
                .flatMap(.latest, transform: { SignalProducer(value: $0 + 3) })
                .startWithValues { value in
                    print(value)
                }
        }*/
        
        /*scopedExample("`flatMapError`") {
            SignalProducer<Int, NSError>(error: NSError(domain: "flatMapError", code: 42, userInfo: nil))
                .flatMapError { SignalProducer<Int, NoError>(value: $0.code) }
                .startWithValues { value in
                    print(value)
            }
        }*/
        
        /*scopedExample("`sampleWith`") {
            let producer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4 ])
            let sampler = SignalProducer<String, NoError>(values: [ "a", "b" ])
            
            let result = producer.sample(with: sampler)

            result.startWithValues { left, right in
                print("\(left) \(right)")
            }
        }*/
        
        /*scopedExample("`log events`") {
            let baseProducer = SignalProducer<Int, NoError>(values: [ 1, 2, 3, 4, 42 ])
            
            baseProducer
                .logEvents(identifier: "Playground is fun!")
                .start()
        }*/
        
    }

}
