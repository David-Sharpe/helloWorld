require 'rails_helper'

describe GreetingsService do

  describe '#get_greeting' do
    subject(:service) { described_class.new() }
    context 'when a greeting with an id' do
      let(:greeting) { double(Greeting) }
      let(:id) { 12 }
      it 'calls the greeting model' do
        greeting_spy = class_spy('Greeting', find: greeting).as_stubbed_const
        expect(service.get_greeting id).to be greeting
        expect(greeting_spy).to have_received(:find).with(id).at_most(1).times
        expect(greeting_spy).to have_received(:find).at_most(1).times
      end
    end
  end

  describe '#set_greeting' do

    let(:greeting_instance_spy) { instance_spy(Greeting) }
    subject(:service) { described_class.new() }
    it 'calls save on the greeting model' do
      greeting_class_spy = class_spy('Greeting', new: greeting_instance_spy).as_stubbed_const
      service.set_greeting(country: 'USA', phrase: 'Hello test')
      expect(greeting_class_spy).to have_received(:new)
    end
  end
end

