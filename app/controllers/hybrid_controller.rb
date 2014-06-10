class HybridController < UIViewController
  def loadView
    self.view = UIWebView.new
    view.delegate = web_view_delegate
  end

  def viewDidAppear(anitmated)
    super
    view.loadRequest(NSURLRequest.requestWithURL(NSURL.URLWithString('http://hybridapp.dev/')))
  end

  private

  def web_view_delegate
    @web_view_delegate ||= HybridWebViewDelegate.new
  end
end
