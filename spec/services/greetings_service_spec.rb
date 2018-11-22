require 'rails_helper'

describe GreetingsService do

  describe '#get_greeting' do
    subject(:service) { described_class.new() }
    subject(:id) { 12 }

    it 'calls the greeting model' do
      GreetingSpy = class_spy('Greeting').as_stubbed_const
      service.get_greeting id
      expect(GreetingSpy).to have_received(:find).with(id).at_most(1).times
      expect(GreetingSpy).to have_received(:find).at_most(1).times
    end
  end

  describe '#set_greeting' do
    it 'calls save on the greeting model' do
    end
  end
end

