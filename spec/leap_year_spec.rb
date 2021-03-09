require './lib/leap_year.rb'

describe "LeapCalculator" do
  it 'leap_year?' do
    expect(subject).to respond_to(:leap_year?).with(1).argument
  end

  it 'recognises numbers divisible by 400 as leap years' do
    expect(subject.leap_year?(400)).to eq true
  end

  it 'recognises years divisible by 100 but not 400 are NOT leap years' do
    expect(subject.leap_year?(1900)).to eq false
  end

  it 'recognises years divisible by 4 but NOT 100 are leap years' do
    expect(subject.leap_year?(2004)).to eq true
  end

  it 'recognises years not divisible by 4 are not leap years' do
    expect(subject.leap_year?(2009)).to eq false
  end
end
