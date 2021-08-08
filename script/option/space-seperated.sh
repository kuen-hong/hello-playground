#!/bin/bash
# usage: ./space-seperated.sh -n nick --greeting --email abc@gmail.com --word here --default

POSITIONAL=()
while [[ $# -gt 0 ]]; do
  key=$1

  case $key in
    -n|--name)
      NAME=$2
      shift # past argument
      shift # past value
      ;;
    -e|--email)
      EMAIL=$2
      shift
      shift
      ;;
    --default) # without value
      TRIGGER=1
      shift
      ;;
    *) # unknown options
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done

# set -- "${POSITIONAL[@]}" # restore positional parameters

echo "name: $NAME"
echo "email: $EMAIL"
if [[ $TRIGGER == 1 ]]; then
  echo "triggered"
fi
echo "unknown options: ${POSITIONAL[@]}"
