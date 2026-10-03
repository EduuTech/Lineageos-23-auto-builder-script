WELCOME="Welcome to my auto builder"
ASK_EMAIL="What's your Email(its for repo)"
ASK_BLOB="What's marked on \"Extract Proparytery blobls\""
WRITE="Write Here:"
QUES="[Y/N]"
ASK_NAME="What's your name (You can put anything)"
ASK_CODE="What is written the code block on \"Prepare the device-specific code\""
WARN_CODE="Write everything thats after breakfeast"
EX_CODE="Ex:rosemary"
ASK_ZIP="Please download the .zip installer for your device"
ZIP_EX="Ex:/home/myuser/Lineage_devjce23.zip"
ASK_SIGN="You want signed build? $QUES"
ASK_KSU="Voce vai querer colocar KernelSU $QUES"
ERROR_CODE="Error:You typed the wrong codename or download failed"
ERROR_FILE="Error:Important file not found!!"
ERROR_ZIP="File not found"
ERROR_BLOB="Wrong path"
WAIT_CODE="Drink coffe or do something,becuse it will take long"
THINK_CODE="I think you meaned non-signed"


export GKI WELCOME ASK_EMAIL ASK_BLOB WRITE QUES ASK_NAME WARN_CODE EX_CODE ASK_ZIP ZIP_EX ASK_SIGN ERROR_CODE ERROR_FILE ERROR_ZIP ERROR_BLOB THINK_CODE

exec ../build.sh