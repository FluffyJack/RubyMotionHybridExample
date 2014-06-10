class HybridWebViewDelegate
  def webView(web_view, shouldStartLoadWithRequest: request, navigationType: nav_type)
    url = request.URL.absoluteString.stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
    if url.include? 'hybridapp://'
      key, value, *rest = url.gsub('hybridapp://', '').split(':')
      if key == 'message'
        puts "The value from the web view is: #{value}; And the other params are: #{rest}"
      end
      return false
    end
    return true
  end
end
