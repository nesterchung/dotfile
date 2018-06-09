LanguageClient_serverCommands = {
            \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
            \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
            \ 'python3': ["$HOME/pyenv/nvim3/bin/pyls"],
            \ 'python': ["$HOME/pyenv/nvim3/bin/pyls"],
            \ }

let g:LanguageClient_autoStart = 1
