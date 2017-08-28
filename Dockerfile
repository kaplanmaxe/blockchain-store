FROM php:7.0-cli
RUN apt-get update
RUN apt-get -y install git
RUN ls
RUN git clone https://github.com/kaplanmaxe/php-OP_RETURN op_return
RUN cp ./op_return/retrieve-OP_RETURN.php /usr/local/bin/btc-retrieve
RUN cp ./op_return/send-OP_RETURN.php /usr/local/bin/btc-send
RUN cp ./op_return/store-OP_RETURN.php /usr/local/bin/btc-store
RUN chmod +x /usr/local/bin/btc-retrieve
RUN chmod +x /usr/local/bin/btc-send
RUN chmod +x /usr/local/bin/btc-store
WORKDIR ./op_return
