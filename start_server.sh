#/bin/bash

gunicorn \
--bind 0.0.0.0:5000 \
-w 4 \
-t 8 \
--timeout 0 \
'run:create_app(stockfish_path="/usr/local/bin/stockfish")'
