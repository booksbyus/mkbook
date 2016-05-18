FROM ubuntu:16.04
RUN apt-get update -y 
RUN apt-get install -y libbatik-java libxmlgraphics-commons-java python-pygments
RUN apt-get install -y build-essential && cpan Tree::Trie
ADD . /tmp/mkbook 
RUN cd /tmp/mkbook/bin && ./install && cd / && rm -rf /tmp/mkbook
