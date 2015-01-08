apt_repository "php-ondrej" do
  uri "http://ppa.launchpad.net/ondrej/php5-5.6/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "E5267A6C"
  action :add
end
