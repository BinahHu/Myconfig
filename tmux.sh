wget https://github.com/tmux/tmux/releases/download/2.9a/tmux-2.9a.tar.gz
wget https://github.com/libevent/libevent/releases/download/release-2.1.10-stable/libevent-2.1.10-stable.tar.gz
wget http://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz

tar -xvf tmux-2.9a.tar.gz
rm tmux-2.9a.tar.gz
tar -xvf libevent-2.1.10-stable.tar.gz 
rm libevent-2.1.10-stable.tar.gz 
tar -xvf ncurses-6.1.tar.gz
rm ncurses-6.1.tar.gz

cd libevent-2.1.10-stable
./configure --prefix=$HOME/.local --disable-shared
make
make install
cd ..

cd ncurses-6.1
./configure --prefix=$HOME/.local
make
make install
cd ..

cd tmux-2.9a
./configure CFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-L$HOME/.local/lib -L$HOME/.local/include/ncurses -L$HOME/.local/include" CPPFLAGS="-I$HOME/.local/include -I$HOME/.local/include/ncurses" LDFLAGS="-static -L$HOME/.local/include -L$HOME/.local/include/ncurses -L$HOME/.local/lib"
make
cp tmux $HOME/.local/bin
cd ..

source .bash_profile
