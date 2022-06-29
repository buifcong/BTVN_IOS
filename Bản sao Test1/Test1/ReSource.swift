
import Foundation

func Bai1(n: Int){
    var arrNum :[Int] = []
    if n < 2 {
        print("khong co snt trong khoang nay")
    }
    else{
        for i in 3...n{
            var count = 0
            for j in 2...i-1 {
                if i%j == 0 {
                    count += 1
                }
            }
            if count == 0 {
                arrNum.append(i)
            }
            
        }
        print(arrNum,terminator: ",")
    }
}
func Bai2(amstrong:Int){
    if amstrong > 0 && amstrong < 10 {
        if amstrong == amstrong * amstrong {
           print(amstrong)
        }
        else{
            print("ko phai so amst")
        }
    }
    else if amstrong < 100 && amstrong > 10 {
        let dau = amstrong/10
        let cuoi = amstrong%10
        if amstrong == (dau*dau) + (cuoi*cuoi) {
            print(amstrong)
        }
        else{
            print("ko phai so amst")
        }
    }
    else if amstrong > 100 && amstrong < 1000 {
        let dau = amstrong/100
        let giua = (amstrong - dau*100)/10
        let cuoi = amstrong%10
        if amstrong == (dau*dau*dau) + (giua*giua*giua) + (cuoi*cuoi*cuoi) {
            print(amstrong)
        }
        else{
            print("ko phai so amst")
        }
    }
    else {
        print("ko phai so amst")
    }
}
func Bai3(ngay:Int, thang:Int, nam:Int){
    if thang > 12 || ngay > 31 || thang < 1 || ngay < 1  {
        print("loi")
    }
    else{
        if thang == 12 {
            if ngay == 31 {
                print("Ngay 1 thang 1 \(nam+1)")
            }
            else {
                print("ngay \(ngay+1) thang \(thang) nam \(nam)")
            }
        }
        else if thang == 2 {
            if ngay == 29 {
                print("ngay 1 thang \(thang+1) nam \(nam)")
            }
            else{
                print("ngay \(ngay+1) thang \(thang) nam \(nam)")
            }
        }
        else if thang == 2 || thang == 4 || thang == 6 || thang == 9 || thang == 11 {
            if ngay == 30 {
                print("ngay 1 thang \(thang+1) nam \(nam)")
            }
            else{
                print("ngay \(ngay+1) thang \(thang) nam \(nam)")
            }
        }
        else {
            if ngay == 31 {
                print("ngay 1 thang \(thang+1) nam \(nam)")
            }
            else{
                print("ngay \(ngay+1) thang \(thang) nam \(nam)")
            }
        }
    }
}
func Bai4(n:Int){
    var arrNum :[Int] = []
    if n < 2 {
        print("so da nhap ko hop le")
    }
    else {
        var f0 = 0
        var f1 = 1
        var fn = 1
        for _ in 2...n{
            f0 = f1
            f1 = fn
            fn = f0 + f1;
            arrNum.append(fn)
        }
        print(arrNum,terminator: ",")
    }
}
func Bai6(n:Int){
    for i in 1...n{
        let b = String(repeating: "1", count: i)
        print(b)
    }
}
func Bai5(n:Int){
    var tg = [[Int]]()
    for i in 0...n {
        for j in 0...n {
            tg[i][j] = tohop(k: i, n: j)
        }
    }
    print(tg)

}
func gt(n:Int)->Int{
    var t = 1
    for i in 1...n{
        t*=i
    }
    return t
}
func tohop(k:Int, n:Int) -> Int {
    var t2 = 1
    t2 = gt(n: n)/gt(n: k)*gt(n: n-k)
    return t2
}
