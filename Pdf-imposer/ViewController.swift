//
//  ViewController.swift
//  Pdf-imposer
//
//  Created by Weicheng Zhu on 3/21/16.
//  Copyright © 2016 Weicheng Zhu. All rights reserved.
//

import Cocoa
import Quartz


class ViewController: NSViewController {
    
    @IBOutlet weak var pdfViewer: PDFView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = NSBundle.mainBundle().URLForResource("something", withExtension: "pdf")!
        let pdf = PDFDocument(URL: url)
        
        pdf.allowsPrinting()
//        print(pdf.pageAtIndex(0).string())
        let firstPage = CGPDFDocumentCreateWithURL(url)
        print(url)
        self.pdfViewer.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

