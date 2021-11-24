//
//  ViewController.swift
//  SimpleHTMLParser
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
       
        let label = UILabel()
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        self.view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        label.textAlignment = .center

        let element = SimpleHTMLParser()
            .parse(html: "<p style='color: #00ffff; font-size: 30 '>正常文字。</p><em>13123<h1 style='color: #00ff00;'>sdfasfa</h1></em><br/>#E-s01温馨提示：<br/><font color=\"#ff0000\">订单一旦取消/退货无法重新开始配送</font><br/>若订单被拆分为多个包裹，取消/退货后同时下单的其他包裹也可能被取消不再配送哦~<br/>正常文字。<strong style='font-size: 50'>加粗。</strong><em style='font-size:12;'>斜体。</em><a href=\"jd.com\" rel=\"noopener noreferrer\" target=\"_blank\"><em>链接</em></a>。<span style=\"color: rgb(242, 39, 12);\">颜色。</span>￼#E-s02￼<br/>您好，<img class='sku-img' src=\"https://img12.360buyimg.com/mobilecms/s100x100_jfs/t1/179960/15/20006/135473/611dc08cE58b08bfb/591003368336a1bf.jpg\" alt=\"红火箭儿童英语分级阅读（初阶全辑共174册）小达人点读绘本附中文指导手册（麦芽童书）\">这个和原版蓝盒的内容是一样的<br/><img class=\"sku-img\" src=\"https://img14.360buyimg.com/mobilecms/s100x100_jfs/t1/197014/28/3365/134240/6119de61Ea0d96322/ba93a2fb7ebd25e6.jpg\" alt=\"红火箭儿童英语分级阅读（进阶全辑144册）小达人点读绘本附中文指导手册（麦芽童书）\">这个和原版黄盒的内容是一样")
        DispatchQueue.global().async {
            let attributedText = element?.render()
            DispatchQueue.main.async {
                label.attributedText = attributedText
            }
        }
        
        

    }


}

