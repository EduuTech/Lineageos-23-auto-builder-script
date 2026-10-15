#!/usr/bin/env bash

# MIT License
# 
# Copyright (c) 2026 Dudu-gsh
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


WELCOME="Welcome to my auto builder"
ASK_EMAIL="What's your Email(its for repo)"
ASK_BLOB="What's marked on \"Extract Proparytery blobls\""
WRITE="Write Here:"
QUES="[Y/N]"
ASK_NAME="What's your name (You can put anything)"
ASK_CODE="What is written the code block on \"Prepare the device-specific code\""
WARN_CODE="Write everything thats after breakfeast"
EX_CODE="Ex:rosemary"
ASK_SIGN="You want signed build? $QUES"
ERROR_CODE="Error:You typed the wrong codename or download failed"
ERROR_FILE="Error:Important file not found!!"
ERROR_ZIP="File not found"
ERROR_BLOB="Wrong path"
WAIT_CODE="Drink coffe or do something,becuse it will take long"
THINK_CODE="I think you meaned non-signed"
ERROR_DOWN="Download failed"


export GKI WELCOME ASK_EMAIL ASK_BLOB WRITE QUES ASK_NAME WARN_CODE EX_CODE ASK_SIGN ERROR_CODE ERROR_FILE ERROR_ZIP ERROR_BLOB WAIT_CODE THINK_CODE LANG

exec ../build.sh