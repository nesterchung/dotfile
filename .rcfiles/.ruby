GEM_PATH=$(gem environment gempath | tr ":" "\n" | tail -1)
path_add $GEM_PATH
