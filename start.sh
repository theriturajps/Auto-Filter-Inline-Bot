if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/theriturajps/Auto-Filter-Inline-Bot.git /Auto-Filter-Inline-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-Inline-Bot
fi
cd /Auto-Filter-Inline-Bot
pip3 install -U -r requirements.txt
echo "Starting Auto Filter Inline Bot...."
python3 bot.py
