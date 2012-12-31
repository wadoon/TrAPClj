#!/bin/bash -x

libs=$(echo lib/*.jar | tr ' ' ':')

rlwrap java -Xmx4G -cp $libs clojure.main \
	-e '(load-file "src/trapclj/core.clj") 
            (load-file "src/trapclj/pers.clj") 
            (ns trapclj.core)' -r
