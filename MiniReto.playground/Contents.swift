

import UIKit

var nombres = 0...100

var c = 1

for n in nombres {
    
    if c == n / 5 {
    
    print ("\(c))\t\(n)\tBINGO")
    c = c + 1
        
    }
}

var d = 1

for n in nombres {
        
        if d == n / 2 {
            
        print ("\(d))\t\(n)\tPAR")
        d = d + 1
            
        }
    }

var e = 1

for n in nombres {
    
    if e == n {
        
        print ("\(e))\t\(n)\tIMPAR")
        e = e + 2
        
    }
}

var f = 1

for n in nombres {
    
    if n > 19 && n < 31 {
        
        print ("\(f))\t\(n)\tVIVA SWIFT")
        f = f + 1
        
    }
}

