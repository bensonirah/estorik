
#!/bin/bash

function pkg::ls {
    composer show -i | tail -n +2 # Print out only from the second line of the output
}