import UIKit

let name = "Steven"
var lastName: String? = "Jobs"

// No exemplo abaixo usei o if e else para desembrulhar a constante opcional lastName passando um valor default caso á mesma fosse nula.

if let lasNameUnwrapped = lastName {
    print("Olá me chamo \(name) \(lasNameUnwrapped)")
} else {
    print("Olá me chamo \(name) \(lastName ?? "Wozniak")")
}

// Já neste outro exemplo abaixo criei uma função para ser usada toda vez que precisasse iniciar uma mensagem de saudação e dentro do escopo da mesma fiz o desenpacotamento da constante lastName também.

func greeting(name: String, lastName: String?) {
    guard let lasNameUnwrapped = lastName else {
        print("Olá \(name) \(lastName ?? "Wozniak")")
        return
    }
    print("Olá \(name) \(lasNameUnwrapped)")
}

greeting(name: "Tatiane", lastName: nil)
