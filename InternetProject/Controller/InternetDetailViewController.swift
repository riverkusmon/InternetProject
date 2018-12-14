

import UIKit
import WebKit
public class InternetDetailViewController: UIViewController
{
    
    @IBOutlet weak var webViewer: WKWebView!
    @IBOutlet weak var screenTitle: UILabel!
    
    var detailTitle : String?
    {
        didSet
        {
            updateView()
        }
    }
    var detailAddress : String?
    {
        didSet
        {
            updateView()
        }
    }
    private func updateView() -> Void
    {
        if(detailTitle != nil && screenTitle != nil && webViewer != nil)
        {
            if (detailTitle?.range(of: "Definitions", options: .caseInsensitive) != nil)
            {
                loadPDF()
            }
            else
            {
                if (detailAddress != nil)
                {
                    loadURL(webAddress: detailAddress!)
                }
            }
            screenTitle?.text = detailTitle
        }
    }
    
    public override func viewDidLoad() -> Void
    {
        
    }
    
    private func loadURL(webAddress: String) -> Void
    {
        
    }
    
    public func loadPDF() -> Void
    {
        
    }
}
