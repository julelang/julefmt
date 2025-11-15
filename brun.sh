#!/bin/bash
# Copyright 2024 The Jule Authors. All rights reserved.
# Use of this source code is governed by a BSD 3-Clause
# license that can be found in the LICENSE file.

if [ -f ./src/main.jule ]; then
  julec build --opt-deadcode -o julefmt ./src
else
  echo "error: working directory is not root directory"
  exit
fi

if [ $? -eq 0 ]; then
  ./julefmt $@
else
  echo "-----------------------------------------------------------------------"
  echo "An unexpected error occurred while compiling JuleFmt. Check errors above."
fi
