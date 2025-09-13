local _M = {}

function _M.header_filter()
  local ngx = ngx
  if ngx.status == ngx.HTTP_NOT_FOUND then
    ngx.header["Location"] = "https://www.google.com"
    ngx.status = ngx.HTTP_MOVED_TEMPORARILY
    ngx.header["Content-Length"] = "0"
    return ngx.exit(ngx.HTTP_MOVED_TEMPORARILY)
  end
end

return _M
