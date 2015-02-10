require 'spec_helper'

describe 'ping' do
    it 'returns pong' do
        response = get("/ping")

        expect(response.body).to eq('pong')
        expect(response.code).to eq(200)
    end
end