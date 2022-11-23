import SwiftUI

let aDegree = CGFloat.pi / 180

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let containerView = UIView()
        containerView.layer.addSublayer(blueHead())
        containerView.layer.addSublayer(blueHand())
        containerView.layer.addSublayer(blueHandDown())
        containerView.layer.addSublayer(blueLegdown())
        containerView.layer.addSublayer(blueLegUp())
        containerView.layer.addSublayer(blueTriangle())
        containerView.layer.addSublayer(redHead())
        containerView.layer.addSublayer(redLeftHand())
        containerView.layer.addSublayer(redHandDown())
        containerView.layer.addSublayer(redRightHand())
        containerView.layer.addSublayer(redRightLegUp())
        containerView.layer.addSublayer(redRightLegDown())
        containerView.layer.addSublayer(redLeftLegUp())
        containerView.layer.addSublayer(redLeftLegDown())
        view.addSubview(containerView)
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func blueHead() -> CAShapeLayer {
    let path = UIBezierPath()
    path.addArc(withCenter: CGPoint(x: 107, y: 296), radius: 26.5, startAngle: aDegree * 0, endAngle: aDegree * (270+360), clockwise: true)
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    return layer
}

func blueHand() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 66, y: 320))
    path.addLine(to: CGPoint(x: 15, y: 349))
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    layer.strokeColor = UIColor.blue.cgColor
    layer.lineWidth = 10
    return layer
}

func blueHandDown() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 15, y: 349))
    path.addLine(to: CGPoint(x: 21, y: 408))
    path.addLine(to: CGPoint(x: 30, y: 406))
    path.addLine(to: CGPoint(x: 30, y: 345))
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    layer.strokeColor = UIColor.blue.cgColor
    layer.lineWidth = 1
    return layer
}

func blueLegdown() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 18, y: 410))
    path.addLine(to: CGPoint(x: 31, y: 632))
    path.addLine(to: CGPoint(x: 45, y: 632))
    path.addLine(to: CGPoint(x: 65, y: 398))

    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    layer.strokeColor = UIColor.blue.cgColor
    layer.lineWidth = 1
    return layer
}

func blueLegUp() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 65, y: 398))
    path.addLine(to: CGPoint(x: 150, y: 422))
    path.addLine(to: CGPoint(x: 218, y: 470))
    path.addLine(to: CGPoint(x: 206, y: 480))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    layer.strokeColor = UIColor.blue.cgColor
    layer.lineWidth = 1
    return layer
}

func blueTriangle() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 65, y: 398))
    path.addLine(to: CGPoint(x: 130, y: 435))
    path.addLine(to: CGPoint(x: 60, y: 440))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.blue.cgColor
    layer.strokeColor = UIColor.blue.cgColor
    layer.lineWidth = 1
    return layer
}

func redHead() -> CAShapeLayer {
    let path = UIBezierPath()
    path.addArc(withCenter: CGPoint(x: 255, y: 155), radius: 21, startAngle: aDegree * 0, endAngle: aDegree * (270+360), clockwise: true)
let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    return layer
}

func redLeftHand() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 330, y: 165))
    path.addLine(to: CGPoint(x: 373, y: 235))
    path.addLine(to: CGPoint(x: 360, y: 235))
    path.addLine(to: CGPoint(x: 315, y: 169))

    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}

func redHandDown() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 365, y: 233))
    path.addLine(to: CGPoint(x: 365, y: 298))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 15
    return layer
}

func redRightHand() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 293, y: 227))
    path.addLine(to: CGPoint(x: 300, y: 292))
    path.addLine(to: CGPoint(x: 304, y: 287))
    path.addLine(to: CGPoint(x: 308, y: 250))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}

func redRightLegUp() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 305, y: 300))
    path.addLine(to: CGPoint(x: 182, y: 372))
    path.addLine(to: CGPoint(x: 205, y: 376))
    path.addLine(to: CGPoint(x: 315, y: 330))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}

func redRightLegDown() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 182, y: 372))
    path.addLine(to: CGPoint(x: 230, y:500))
    path.addLine(to: CGPoint(x: 240, y: 490))
    path.addLine(to: CGPoint(x: 208, y: 372))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}

func redLeftLegUp() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 310, y: 285))
    path.addLine(to: CGPoint(x: 370, y:285))
    path.addLine(to: CGPoint(x: 376, y: 430))
    path.addLine(to: CGPoint(x: 345, y: 420))
    path.addLine(to: CGPoint(x: 305, y: 300))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}

func redLeftLegDown() -> CAShapeLayer {
    let path = UIBezierPath()
    path.move(to: CGPoint(x: 376, y: 430))
    path.addLine(to: CGPoint(x: 387, y:620))
    path.addLine(to: CGPoint(x: 375, y: 620))
    path.addLine(to: CGPoint(x: 344, y: 410))
    
    let layer = CAShapeLayer()
    layer.path = path.cgPath
    layer.fillColor = UIColor.red.cgColor
    layer.strokeColor = UIColor.red.cgColor
    layer.lineWidth = 1
    return layer
}
