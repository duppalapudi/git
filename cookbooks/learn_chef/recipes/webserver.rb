package 'httpd' do
action :install
end
service 'httpd' do
action :start
start_command '/usr/sbin/httpd -k start'
end
file '/var/www/html/greeting.html' do
  content IO.read('/vagrant/greeting.html')
  action :create
end