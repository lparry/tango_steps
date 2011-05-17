class Zsh < Tango::Runner
  step :install do
    met? { shell('/usr/local/bin/zsh --version').succeeded? }
    meet do
      shell('brew install zsh')
      shell('`echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells` ')
      shell('chsh -s /usr/local/bin/zsh')
    end
  end
end
