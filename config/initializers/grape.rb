module Grape
  class Request
    def remote_ip
      env['REMOTE_ADDR']
    end
  end
end
