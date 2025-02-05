control 'sample-1.0' do
    impact 1.0
    title 'Sample control'
    desc 'This control is a sample for testing InSpec compliance.'
  
    # This example checks if the /etc/passwd file exists on Unix systems.
    # Adjust or add additional tests as needed.
    describe file('/etc/passwd') do
      it { should exist }
    end
  end
  