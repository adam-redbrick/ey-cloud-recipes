#
# Cookbook Name:: packages
# Recipe:: default
#

node[:packages].each do |package|

  ey_cloud_report "package-install" do
    message "Installing #{package[:name]}-#{package[:version]}"
  end
  
  enable_package package[:name] do
    version package[:version]
  end
    
  package package[:name] do 
    version package[:version]
    action :install 
  end

end

enable_package "dev-libs/openssl" do
  version "1.0.1i"
  unmask true
  override_hardmask
end

package "dev-libs/openssl" do
  version "1.0.1i"
  action :install
end

