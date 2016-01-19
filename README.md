# docker-wget-lua

compile [wget with lua hooks](https://github.com/alard/wget-lua/wiki/Wget-with-Lua-hooks) in a minimal docker image

	~ docker build -t wget-lua .
	~ docker run --rm -i -t wget-lua
	
	/ # wget --help |grep lua
	GNU Wget 1.14.lua.20130523-9a5c, a non-interactive network retriever.
       --lua-script=FILE   load the Lua script from FILE.
  