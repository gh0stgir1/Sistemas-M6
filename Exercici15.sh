#Helena - 7/2/24
#!/bin/bash
if [ "$USER" = "root" ]; then
    echo "El superusuari root està executant el guió de shell."
else
    echo "El superusuari root no està executant el guió de shell."
fi
