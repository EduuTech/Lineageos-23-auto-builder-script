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


QUES="N/W"
ASK_COUNTRY="Whats your country that you live (You can put anything here)"
WARN_COUNTRY="Write the initialism,not the the name"
ASK_STATE="Estado (Pode ser qualquer um)"
WARN_STATE="This and the next one dont put initialism"
WRITE="Write here:"
ASK_CITY="City (Can put anything)"
ASK_PASS="You Non-password or with $QUES"
NON_PASS="Spam enter"
WITH_PASS= "Type your password how many times the script will need(Normaly is \"Type your password\")"

export QUES ASK_COUNTRY ASK_CITY ASK_STATE WARN_COUNTRY WARN_COUNTRY WARN_STATE WRITE ASK_PASS NON_PASS WITH_PASS

exec ../sign.sh