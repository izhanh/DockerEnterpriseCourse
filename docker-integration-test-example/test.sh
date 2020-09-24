#!/bin/bash

sleep 3
if curl web:5000 | grep -q 'Hola'; then
  echo "Tests passed!"
else
  echo "Tests failed!"
  exit 1
fi

if curl web:5000 | grep -q 'Pinguino'; then
  echo "Tests passed!"
else
  echo "Tests failed!"
  exit 1
fi
