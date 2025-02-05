control 'nginx-1.0' do
    impact 1.0
    title 'Ensure NGINX is installed and running'
    desc 'The NGINX package should be installed, and the service should be enabled and running to ensure proper web server functionality.'
  
    describe package('nginx') do
      it { should be_installed }
    end
  
    describe service('nginx') do
      it { should be_enabled }
      it { should be_running }
    end
  end