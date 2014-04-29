case node['platform']
when 'ubuntu'
    unless node['platform_version'].to_f >= 13.10
		apt_repository "php-mez" do
			uri "http://ppa.launchpad.net/mez/php/ubuntu"
			distribution node['lsb']['codename']
			components ["main"]
			keyserver "keyserver.ubuntu.com"
			key "B7AC0613"
			action :add
		end
    end
end