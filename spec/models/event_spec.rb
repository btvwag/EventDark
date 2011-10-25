require 'spec_helper'

describe Event do
  subject do
    Event.new(name: 'Rspec Event',
              start: Time.now,
              location: 'Unit Tests',
              max_attendees: 20
             )
  end

  context 'without a name' do
    before { subject.name = nil }
    it { should_not be_valid }
    it { should have(1).error_on(:name) }
  end

  context 'without a start time' do
    before { subject.start = nil }
    it { should_not be_valid }
    it { should have(1).error_on(:start) }
  end

  context 'without a location' do
    before { subject.location = nil }
    it { should_not be_valid }
    it { should have(1).error_on(:location) }
  end

  context 'without max attendees' do
    before { subject.max_attendees = nil }
    it { should_not be_valid }
    it { should have(1).error_on(:max_attendees) }
  end
end
