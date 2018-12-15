import UIKit

let url = URL(string: "http://www.weather.com.cn/data/sk/101110101.html")!
let data = try Data(contentsOf: url)
let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
if let dic = json as? [String: Any] {
    if let weather = dic["weatherinfo"] as? [String: Any] {
        let city = weather["city"]!
        let temp = weather["temp"]!
        let wd = weather["WD"]!
        let ws = weather["WS"]!
        print("城市: \(city), 温度: \(temp), 风向: \(wd), 风力: \(ws)")
    }
}
