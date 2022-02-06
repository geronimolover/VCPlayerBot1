echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/geronimolover/VCPlayerBot1 /VCPlayerBot1
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/geronimolover/VCPlayerBot1 -b $BRANCH /VCPlayerBot1
fi
cd /VCPlayerBot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
