ActiveSupport::Notifications.subscribe('todoz.destroy') do |name, start, finish, id, payload|
  Rails.logger.info "Received notification: #{name} with payload: #{payload.inspect}"
end