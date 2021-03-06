# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github 'boxen', '3.4.2'

# Support for default hiera data in modules

github 'module-data', '0.0.3', :repo => 'ripienaar/puppet-module-data'

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github 'chrome',      '1.1.2'
github 'flowdock',    '1.0.0'
github 'foreman',     '1.2.0'
github 'gcc',         '2.0.100'
github 'git',         '2.3.0'
github 'go',          '1.1.0'
github 'homebrew',    '1.6.1'
github 'hub',         '1.3.0'
github 'inifile',     '1.0.3', :repo => 'puppetlabs/puppetlabs-inifile'
github 'iterm2',      '1.0.4'
github 'nginx',       '1.4.3'
github 'nodejs',      '3.7.0'
github 'openssl',     '1.0.0'
github 'osx',         '2.2.2'
github 'phantomjs',   '2.1.0'
github 'pkgconfig',   '1.0.0'
github 'repository',  '2.3.0'
github 'stdlib',      '4.1.0', :repo => 'puppetlabs/puppetlabs-stdlib'
github 'sudo',        '1.0.0'
github 'vagrant',     '3.0.7'
github 'virtualbox',  '1.0.11'
github 'xquartz',     '1.1.1'
github 'zsh',         '1.0.0'
