//
//  Extensions.swift
//  memoSimple
//
//  Created by leedonggi on 14/12/2018.
//  Copyright © 2018 leedonggi. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func showToast(msg: String, fun: (() -> Void)? = nil){
        let toast = UILabel(frame: CGRect(x: 32, y: 128, width: view.frame.size.width - 64, height: 42))
        toast.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        toast.textColor = UIColor.white
        toast.text = msg
        toast.textAlignment = .center
        toast.layer.cornerRadius = 8
        toast.clipsToBounds = true
        toast.autoresizingMask = [.flexibleTopMargin, .flexibleHeight, .flexibleWidth]
        view.addSubview(toast)
        UIView.animate(withDuration: 0.2, delay: 0.8, options: .curveEaseOut, animations: {
            toast.alpha = 0.5
        }, completion: { _ in
            toast.removeFromSuperview()
            fun?()
        })
    }
    
    func showError(_ code: Int){
        showToast(msg: "오류 : \(code)")
    }
    
    func goBack(){
        self.navigationController?.popViewController(animated: true)
    }
}
