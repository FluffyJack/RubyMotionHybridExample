# class HybridWebViewDelegate
#   def webView(web_view, shouldStartLoadWithRequest: request, navigationType: nav_type)
#     if escaped_url_string(request).include? 'hybridapp://'
#       key, value, *rest = escaped_url_string(request).gsub('hybridapp://', '').split(':')
#       if key == 'message'
#         puts "Message from web view: #{value}; Extra details: #{rest}"
#         return false
#       end
#     end
#     return true
#   end
# 
#   def escaped_url_string(request)
#     request.URL.absoluteString.stringByReplacingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
#   end
# end
