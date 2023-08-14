1.FZF：
.fzf.bash是安装linux fzf命令自动生成的，不是关于vim的，里面主要有fo，fd，fif三个函数。
"fo函数:搜索当前目录下文件, ctrl-o 用 open 打开, ctrl-e 用 vim 打开
"fd函数:搜索当前路径下目录
"fif函数：fif+"xxx"搜索当前路径下包含"xxx"的文件并预览。
另外安装fzf完还会更新.bashrc.

再vim里安装fzf只需要执行下面两条命令即可再~/.fzf里和.vim/plugged安装相关文件。
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  },
Plug 'junegunn/fzf.vim',