class ApplicationRecord < ActiveRecord::Base
  protect_from_forgery with: :exception, unless: -> {request.format.json?}
  primary_abstract_class
end
