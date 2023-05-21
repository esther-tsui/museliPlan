import Cocoa

// test
for _ in 1...3 {
    print("please steal some more museli.")
}

print("-----------------------------1")

var jkAtWork = true

if jkAtWork {
    print("please steal some more museli.")
} else {
    print("just keep working then.")
}

print("-----------------------------2")

func action(_ name: String, breakfast: String) {
    print("\(name), please steal some more \(breakfast).")
}

action("JK", breakfast: "museli")

print("-----------------------------3")


//how does jk steal museli if not at work?

enum StealingPlan {
    case jkAtWork(String)
    case jkNotAtWork(String)
}

var action1: StealingPlan = .jkAtWork("please steal some more museli.")
var action2: StealingPlan = .jkNotAtWork("remember to steal museli on the next working day.")

print(action1)
print(action2)

print("-----------------------------4")


var action = { (jkAtWork: Bool) -> Bool in
    if jkAtWork {
        print("please steal some more museli.")
        return true
    }
    print("remember to steal museli on the next working day")
    return false
}

action(true)

print("-----------------------------5")


enum JkRefusedStealing: Error {
    case alreadyGotTwoBags
    case jkGotHome
}
    
    func action(_ jkAtWork: Bool) throws -> String {
    if jkAtWork {
        throw JkRefusedStealing.alreadyGotTwoBags}
    if jkAtWork == false {
        throw JkRefusedStealing.jkGotHome
    }

    if jkAtWork == true {
        return "please steal some more museli."
    } else {
        return "OK then"
    }
}

do {
    let result = try action(true)
    print("result")
} catch JkRefusedStealing.alreadyGotTwoBags {
    print("JK already got 2 bags of museli and refuses to steal more!")
} catch JkRefusedStealing.jkGotHome {
    print("JK got home and cannot steal museli.")
} catch {
    print("Error...!")
}
action(true)

print("-----------------------------6")



