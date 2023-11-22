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

  test "no one can delete event another user created" do
    sign_in_user = FactoryBot.create :user
    event_owner  = FactoryBot.create :user
    event = FactoryBot.create :event, owner: event_owner

    sign_in_as sign_in_user
    assert_no_difference 'Event.count' do
      assert_raises ActiveRecord::RecordNotFound do
        delete event_path(event)
      end
    end
  end
end
