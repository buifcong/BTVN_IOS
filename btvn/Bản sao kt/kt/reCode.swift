//Bài 5: Viết chương trình command line tool random 1 số tự nhiên từ 1 đến 100. Yêu cầu người dùng nhập vào cho đến khi người dùng nhập đúng số đã random đó.
//Nếu lớn hơn số random thì thông báo lớn quá và cho nhập lại
//Nếu bé hơn thì thông báo bé quá và cho nhập lại
//Nếu đúng số rồi thì thông báo chúc mừng và dừng chương trình.
//
//Bài 6: Viết chương trình tính tiền taxi theo thang số, với số km đi được nhập từ bàn phím. UI tuỳ ý.
//Thang số:
//0 - 10km đầu: 11000/km
//11-25km: 9500/km
//25-50km: 8500/km
//50-100km: 7900/km
//Từ 101 trở lên: 7700/km.
import Foundation
func randomNum(){
    for _ in 1...100 {
        let kqsxmb = Int.random(in: 1...100)
        print("moi nhap so bat ki")
        let a = Int(readLine() ?? "") ?? 0
        if a == kqsxmb {
            break
        }
        else
        {
            print("chuc banj mm lan sau")
        }

    }
    print("ban da trung de")

}
func tinhtien(){
    print("moi nhap so km:")
    let km = Int(readLine() ?? "") ?? 0
    if km < 0 {
        return
    }
    else if km <= 10  {
        print("tien: \(11000*km)")
    }
    else if km <= 25 {
        let tien = 110000 + (km-10)*9500
        print("tien: \(tien)")
    }
    else if km <= 50 {
        let tien = 110000 + 15*9500 + (km-25)*8500
        print("tien: \(tien)")
    }
    else if km <= 100 {
        let tien = 110000 + 15*9500 + 25*8500 + (km-50)*7900
        print("tien: \(tien)")
    }
    else {
        let tien = 110000 + 15*9500 + 25*8500 + 50*7900 + (km-100)*7700
        print("tien: \(tien)")
    }
}
