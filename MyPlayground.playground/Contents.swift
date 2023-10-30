var password = "1234567"

if password == "123456" {
    print("Şifre doğru hoşgeldiniz")
} else if password == "123" {
    print("Şifreniz çok zayıf, lütfen yeni bir şifre belirleyin.")
}else {
    print("Şifreniz uyuşmuyor.")
}


enum PasswordOption {
    case zayif
    case dogru
    case uyusmuyor
    }

var passwordTwo: PasswordOption = .dogru

switch passwordTwo {
case .zayif:
    print("Şifreniz çok zayıf, lütfen yeni bir şifre belirleyin.")
case .dogru:
    print("Şifreniz yeterince güvenli, hoşgeldiniz.")
case .uyusmuyor:
    print("Şifreniz uyuşmuyor.")

}
