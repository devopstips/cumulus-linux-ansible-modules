require_relative '../spec_helper'

describe file('/etc/cumulus/.license.txt') do
  it { should be_file }
  its(:content) { should match(/Rocket Turtle!/) }
  its(:content) { should match(%r{/usr/cumulus/bin/cl-license -i file:///tmp/test.v1}) }
end
