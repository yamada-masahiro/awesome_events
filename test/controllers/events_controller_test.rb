require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "user can delete event he created" do
    event_owner = FactoryBot.create :user
    event = FactoryBot.create :event, owner: event_owner
    sign_in_as event_owner
    assert_difference 'Event.count', -1 do
      delete event_path(event)
    end
  end
end
