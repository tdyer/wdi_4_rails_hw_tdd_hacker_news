require 'spec_helper'

describe Article do
  let(:url) { 'http://mean_urls.com/i_hate_bananas'}
  subject { create(:article, url: url) }

  it 'should have a valid article' do
    expect(subject.url).to eq(url)
  end

  it 'should have a submission valid article' do
    expect(subject.submitted_at.class.name).to eq("Time")
  end

end
