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

  test "#created_by? true using stub" do
    event = FactoryBot.create :event
    user = User.new
    user.stub(:id, event.owner_id) do
      assert event.created_by? user
    end
  end

  test "#created_by? true using mock" do
    event = FactoryBot.create :event
    user = Minitest::Mock.new.expect(:id, event.owner_id)
    assert event.created_by? user
    user.verify
  end

  test "'start_at should be before end_at' validation pass" do
    start_at = rand(1 ..30).days.from_now
    end_at = start_at + rand(1 ..30).hours
    event = FactoryBot.build :event, start_at: start_at, end_at: end_at
    assert event.valid?
    assert_empty event.errors[:start_at]
  end

  test "'start_at should be before end_at' validation doesn't pass" do
    start_at = rand(1 ..30).days.from_now
    end_at = start_at - rand(1 ..30).hours
    event = FactoryBot.build :event, start_at: start_at, end_at: end_at
    assert_not event.valid?
    assert_not_empty event.errors[:start_at]
  end
end
