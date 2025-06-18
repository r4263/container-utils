#!/bin/sh

# While loop iterating trough each argument
while [[ $# -gt 0 ]]; do
    # Case statement, using $1 as the current argument being handled which changes everytime we call "shift"
    case "$1" in
        # Single flag with no value, good to activate/deactivate functions that don't need to be always turned on.
        --flag)
            # Place your code here!
            echo "FLAG DETECTED!"

            shift # Shifts to next argument
            ;;

        # Option-value case statement
        --option_value=*)
            # Place your code here!
            CONTENT_EQ="${1#*=}" # the "${1#*=}" extracts the content after the equal sign, placing at the CONTENT_EQ env variable.
            echo "Option-value pair received: $CONTENT_EQ"

            shift # Shifts to next argument
            ;;

        # Separated argument case statement, this one treats 2 arguments each time it's called.
        # This kind of flag declaration needs a space between the flag and it's value, the container engine
        # understands it as different arguments and use $2(the next value after $1) as the value for this flag
        --separate_argument)
            # Place your code here!
            CONTENT_SEP="$2" # Get the next argument as the value for the flag, as explained above
            echo "Separated argument received: $CONTENT_SEP"

            shift 2 # Shifts 2 positions at once, considering the next argument($2) is not a valid flag, but the $1's content itself, avoiding iterating $2.
            ;;
        
        # Guard clause, can be entirely removed.
        *)
            echo "Unrecognized flag: $1"

            # exit 1 # use it to break while loop execution if you want
            shift 1 # continue to the next argument even if unrecognized
            ;;
    esac
done