ActiveSupport::Notifications.subscribe('todoz.destroy') do |name, start, finish, id, payload|
  Rails.logger.info "Received notification: #{name} with payload: #{payload.inspect}"
end



# For Data Sync:

# ActiveSupport::Notifications.subscribe('data.sync') do |name, start, finish, id, payload|
#     handle_data_sync(payload)

#     end
# end

# private

# def self.handle_data_sync(payload)
# todoz_id = payload[:todoz_id]
# timestamp = payload[:timestamp]

# Rails.logger.info "Syncing data for Todoz ID: #{todoz_id}, Action: #{action}, Timestamp: #{timestamp}"
  
  # # Perform the data sync operation here as required
# # For example
# sync_data_with_external_service(todoz_id timestamp)
# end