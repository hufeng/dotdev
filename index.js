const { MultiSelect } = require('enquirer');
const shell = require('shelljs');

const map = {
  'Oh-my-zsh':
    'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"',
  Homebrew:
    '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"',
  Chrome: 'brew cask install google-chrome',
  Firefox: 'brew cask install firefox',
  Brave: 'brew cask install brave-browser',
  Java: 'brew cask install java',
  Clojure: 'brew install clojure',
  Go: 'brew install go',
  Erlang: 'brew install erlang',
  Elixir: 'brew install elixir',
  Rust: 'curl https://sh.rustup.rs -sSf | sh',
  VsCode: 'brew install visual-studio-code',
  NeoVim: 'brew install neovim',
  Ack: 'brew install ack',
  Cloc: 'brew install cloc',
  Tree: 'brew install tree',
  Docker: 'brew install docker',
  FishShell: 'brew install fish',
  VirtualBox: 'brew install virtualbox',
  Dash: 'brew cask install dash',
  Github: 'brew cask install github'
};

const prompt = new MultiSelect({
  name: 'value',
  message: '请选择需要安装的软件',
  limit: 10,
  choices: [
    { name: 'Chrome' },
    { name: 'Firefox' },
    { name: 'Brave' },
    { name: 'Java' },
    { name: 'Clojure' },
    { name: 'Go' },
    { name: 'Erlang' },
    { name: 'Elixir' },
    { name: 'Rust' },
    { name: 'Nvm' },
    { name: 'VsCode' },
    { name: 'NeoVim' },
    { name: 'Ack' },
    { name: 'Cloc' },
    { name: 'Tree' },
    { name: 'Docker' },
    { name: 'FishShell' },
    { name: 'VirtualBox' },
    { name: 'Dash' },
    { name: 'Github' }
  ]
});

prompt
  .run()
  .then(answer => {
    // install basic software
    if (shell.exec(map['Oh-my-zsh']).code !== 0) {
      console.error('安装oh-my-zsh失败');
      return;
    }
    if (shell.exec(map['Homebrew']).code !== 0) {
      console.log('安装homebrew失败');
      return;
    }

    for (let software of answer) {
      console.log(`正在安装${software}`);
      const code = shell.exec(map[software]);
      console.log(`安装${code === 0 ? '成功' : '失败'}`);
    }
  })
  .catch(console.error);
