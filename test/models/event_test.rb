require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "#created_by? true" do
    event = FactoryBot.create :event
    assert event.created_by? event.owner
  end

  test "#created_by? false" do
    event = FactoryBot.create :event
    another_user = FactoryBot.create :event
    assert_not event.created_by? another_user
  end

  test "#created_by? arg is nil" do
    event = FactoryBot.create :event
    assert_not event.created_by? nil
  end
end
