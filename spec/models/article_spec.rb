require 'spec_helper'

describe Article do
  let(:url) { 'http://google.com/i_hate_bananas'}
  subject { create(:article, url: url) }

  it 'should have a valid article' do
    expect(subject.url).to eq(url)
  end

  it 'should not allow an invalid' do
    expect{ Article.create!(title: 'my article', url: 'one')}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'should have a submission valid article' do
    expect(subject.submitted_at.class.name).to eq("Time")
  end

end
