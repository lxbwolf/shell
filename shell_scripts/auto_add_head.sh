#!/bin/bash

if ! grep "^#!" $1 &>/dev/null; then
cat >> $1 << EOF
#!/bin/bash
#Author:
#Date & Time: `date +"%F %T"`
#Description:
EOF
fi
#vim +5 $1
