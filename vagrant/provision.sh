if [ -f "/var/vagrant_provision" ]; then
  # This script will run only if it is the first `vagrant up`
  # Or if there was a `vagrant destroy` and the VM was destroyed
  exit 0
fi

echo "Updating apt-get..."
apt-get update

echo "Installing the software..."
apt-get install -y build-essential git curl libsqlite3-dev

echo 'chruby not yet installed, installing now...'
wget -O chruby-0.3.2.tar.gz https://github.com/postmodern/chruby/archive/v0.3.2.tar.gz
tar -xzvf chruby-0.3.2.tar.gz
cd chruby-0.3.2/
make install

# Add to global profile (enabling chruby for all bash users)
echo '[ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ] || return' >> /etc/profile.d/chruby.sh
echo "source /usr/local/share/chruby/chruby.sh" >> /etc/profile.d/chruby.sh
echo "source /usr/local/share/chruby/auto.sh" >> /etc/profile.d/chruby.sh

cd

wget -O ruby-install-0.2.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.2.1.tar.gz
tar -xzvf ruby-install-0.2.1.tar.gz
cd ruby-install-0.2.1/
make install

su vagrant -c "ruby-install ruby 2.0.0"
echo 2.0.0 > /home/vagrant/.ruby-version
echo 'gem: --no-ri --no-rdoc' > /home/vagrant/.gemrc

cd
source /etc/profile.d/chruby.sh

ruby -v

touch /var/vagrant_provision
