# Include hook code here
require 'adcopy'

class ActionView::Base
  include AdCopy::ViewMethods
end

class ActionController::Base
  include AdCopy::ControllerMethods
end