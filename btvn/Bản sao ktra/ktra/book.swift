//Bài 4: Xây dựng giao diện in ra thông tin của một cuốn sách (mã, tên, tác giả, thể loại, số trang, giá tiền, số lượng). Sử dụng model class hoặc struct. UI tuỳ ý.
import Foundation
class book {
    var maSach:String = ""
    var tenSach: String = ""
    var tacGia:String = ""
    var theLoai:String = ""
    var soTrang:Int = 0
    var gia: Float = 0
    var soLuong: Int = 0
    init(){
        
    }
    init(ms:String, ts:String, tg: String, tl: String, so: Int, gia:Float, sl:Int){
        self.maSach = ms
        self.tenSach = ts
        self.theLoai = tl
        self.soTrang = so
        self.gia = gia
        self.soLuong = sl
    }
}
