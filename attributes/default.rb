case node["platform"]
when "ubuntu"
  node.set["growthforecast"]["install_pkgs"] = %w{build-dep rrdtool}

when "centos", "redhat"
  execute "slapadd" do
    command "yum groupinstall 'Development Tools'"
    action :run
  end
  node.set["growthforecast"]["install_pkgs"] = %w{pkgconfig glib2-devel gettext libxml2-devel pango-devel cairo-devel}

when "mac_os_x"
  node.set["growthforecast"]["install_pkgs"] = %w{pkgconfig gettext glib libxml2 pango cairo}
end
