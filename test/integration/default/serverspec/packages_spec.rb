require '/tmp/kitchen/spec/spec_helper.rb'

describe 'c & c++ dev tools' do

  describe package('gcc') do

    it "is installed" do
      expect(subject).to be_installed
    end
  end

  describe package('gcc-c++'), :if  => os[:family] == 'redhat' do

    it "is installed" do
      expect(subject).to be_installed
    end
  end

  describe package('ccache'), :if  => os[:family] == 'redhat' do

    it "is installed" do
      expect(subject).to be_installed
    end
  end

  describe package('g++'), :if  => os[:family] == 'ubuntu' do

    it "is installed" do
      expect(subject).to be_installed
    end
  end
end
