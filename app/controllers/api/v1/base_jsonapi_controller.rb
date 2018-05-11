class Api::V1::BaseJSONAPIController < Api::V1::BaseController
  include JSONAPI::ActsAsResourceController

end
