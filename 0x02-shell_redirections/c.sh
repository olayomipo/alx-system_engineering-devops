#!/bin/bash

echo "Enter file which you wanna create fr:"
read file

touch $file
echo "#!/bin/bash" >> $file

chmod u+x $file
echo "Done"
