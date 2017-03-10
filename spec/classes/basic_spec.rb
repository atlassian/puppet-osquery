require 'spec_helper'

describe 'osquery', :type => :class do

  describe "class on Redhat family with no parameters, basic test" do
    let :facts do
      {
        :operatingsystem => 'Redhat',
        :processorcount  => 1,
        :operatingsystemmajrelease => 1
      }
    end

    it {
      should contain_package('osquery')
      should contain_service('osqueryd')
    }
  end

  describe "class on CentOS family with no parameters, basic test" do
    let :facts do
      {
        :operatingsystem => 'CentOS',
        :processorcount  => 1,
        :operatingsystemmajrelease => 1
      }
    end

    it {
      should contain_package('osquery')
      should contain_service('osqueryd')
    }
  end

  describe "class on Scientific linux family with no parameters, basic test" do
    let :facts do
      {
        :operatingsystem => 'Scientific',
        :processorcount  => 1,
        :operatingsystemmajrelease => 1
      }
    end

    it {
      should contain_package('osquery')
      should contain_service('osqueryd')
    }
  end

  describe "class on Amazon linux family with no parameters, basic test" do
    let :facts do
      {
        :operatingsystem => 'Amazon',
        :processorcount  => 1,
        :operatingsystemmajrelease => 1
      }
    end

    it {
      should contain_package('osquery')
      should contain_service('osqueryd')
    }
  end

end
