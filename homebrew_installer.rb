class HomebrewInstaller < Tango::Runner
 step :install do
    met? { shell("brew help", :echo => false).succeeded? }
    meet do
      shell('ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"')
      shell('brew install git')
      shell('brew update')
      shell('cd /usr/local && git reset --hard') #when I wrote this, homebrew seemed to be a bit fucked
      shell('brew update')
    end
  end
end
