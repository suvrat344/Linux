#!/bin/bash

# Create a file named `<your_roll_number>.txt` and write a script to upload the file `<your_roll_number>.txt` to [http://local.server/upload/<your_roll_number>.txt](http://local.server/upload/<your_roll_number>.txt).
# Hint:
# - Use can verify the uploaded the file kept temporarily in the location `/tmp/local_uploads`
# - Use PUT request for while sending the file

touch 23f1002147.txt
curl -X PUT -T 23f1002147.txt http://local.server/upload/23f1002147.txt
