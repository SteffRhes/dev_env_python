#!/bin/bash

python -m build
twine upload dist/*
rm -rf dist
rm -rf ./*.egg-info

