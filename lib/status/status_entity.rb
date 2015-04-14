module Entities
  class Status < Grape::Entity
    expose :text, :checked_at
  end
end
