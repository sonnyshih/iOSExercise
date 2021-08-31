/**
Dispatch queues (參考: https://waynestalk.com/dispatch-queue-tutorial/)
 1. Grand Central Dispatch（GCD）的其中一個工具。
 2. 可以以非同步（asynchronously）或同步（synchronously）的方式執行一段程式碼。這也就是所謂的並行（concurrency）處理。
 3. GCD 就是用來幫助我們管理執行緒的 framework
 4. GCD 提供三種工具，分別是 Dispatch Queues、Dispatch Sources、和 Operation Queues
 5. GCD 就是在管理多執行緒（multi-threading）
*/

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

// 1. Serial Dispatch Queues
//serialQueueAsyncTest();
//serialQueueSyncTest();

// 2. Concurrent Dispatch Queues
concurrentQueuesAsyncTest();
//concurrentQueuesSyncTest()


/* ===================== */
/** 使用 Dispatch Queues  */
/* ===================== */

// 1. Serial Dispatch Queues
//  * 同一個時間只會執行一個任務
func serialQueueAsyncTest(){
    let serialQueue = DispatchQueue(label: "com.waynestalk.serial")
    print("start")
    
    serialQueue.async {
        for i in 0...5 {
            print("\(i) Serial Dispatch Queues 非同步 Task 1")
            sleep(1)
        }
    }
    
    serialQueue.async {
        for i in 0...5 {
            print("\(i) Serial Dispatch Queues 非同步 Task 2")
            sleep(1)
        }
    }
    
    print("End")
}


//  * 同步的方式來執行任務
func serialQueueSyncTest(){
    let serialQueue = DispatchQueue(label: "com.waynestalk.serial")
    print("start")
    serialQueue.sync {
        for i in 0...5 {
            print("\(i) Serial Dispatch Queues 同步Task 1")
            sleep(1)
        }
    }
    serialQueue.sync {
        for i in 0...5 {
            print("\(i) Serial Dispatch Queues 同步 Task 2")
            sleep(1)
        }
    }
    
    print("end")  // 要等到 DispatchQueue裡所有的Task 都行完才執行這行print
}

// 2. Concurrent Dispatch Queues
//  * 可以在一個時間同時執行數個任務
//  * 執行task的順序也是先進先出。不過它開始執行一個task後，不需要等待任務完成，就馬上執行下一個task

//  * 同一個時間只會執行一個任務
func concurrentQueuesAsyncTest(){
    let concurrentQueue = DispatchQueue(label: "com.waynestalk.concurrent", attributes: .concurrent)
    print("start")
    
    concurrentQueue.async {
        for i in 0...5 {
            print("\(i) Concurrent Dispatch Queues 非同步 Task 1")
            sleep(1)
        }
    }
    
    concurrentQueue.async {
        for i in 0...5 {
            print("\(i) Concurrent Dispatch Queues 非同步 Task 2")
            sleep(2)
        }
    }
    print("end")
}

//  * 同步的方式來執行任務
func concurrentQueuesSyncTest(){
    let concurrentQueue = DispatchQueue(label: "com.waynestalk.concurrent", attributes: .concurrent)
    print("start")
    concurrentQueue.sync {
        for i in 0...5 {
            print("\(i) Concurrent Dispatch Queues 同步 Task 1")
            sleep(1)
        }
    }
    concurrentQueue.sync {
        for i in 0...5 {
            print("\(i) Concurrent Dispatch Queues 同步 Task 2")
            sleep(1)
        }
    }
    print("end")    // 要等到 DispatchQueue裡所有的Task 都行完才執行這行print
}


/* ==================================== */
/* ##### Quality-of-Service (QoS) #####
    1. 當創建多個 dispatch queues 時，可以透過 QoS 來決定 哪一個 dispatch queues 要先執行
    2. DispatchQoS.QoSClass 定義了六個優先權
        * .userInteractive
        * .userInitiated
        * .default
        * .utility
        * .background
        * .unspecified
    3. Ex:
        let concurrentQueue = DispatchQueue(label: "com.waynestalk.concurrent", qos: .userInitiated, attributes: .concurrent)
        let serialQueue = DispatchQueue(label: "com.waynestalk.serial", qos: .background)
====================================== */

/* ================================== */
/* ##### Global Dispatch Queues #####
    1. 系統為每個應用程式預設建立了全域的（global）concurrent queues
    2. 應當先考慮使用這些 global concurrent queues
    3. Ex:
        let defaultConcurrentQueue = DispatchQueue.global()
        let backgroundConcurrentQueue = DispatchQueue.global(qos: .background)
 =================================== */

/* ================================================= */
/* ##### Main Dispatch Queue (更新畫面的 thread) #####
    1. 唯一能更新畫面的 Thread
    2. Ex:
        DispatchQueue.main.async {
            print("Task 1")
        }
 
    3. 取得API資料後，更新UI 
       Ex:
        DispatchQueue.global.async {
            // in a background thread
            // get data from internet
            ....
            DispatchQueue.main.async {
                // in main thread
                // update user interface
                ...
            }
        }
=================================================== */
