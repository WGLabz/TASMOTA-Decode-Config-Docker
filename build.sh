# Remove existing files.
rm ./requirements.txt ./decode-config.py
# Pull the latest decode config from git. Only the latest branch is downloaded.
git clone --depth 1 https://github.com/tasmota/decode-config ./decodec

#Copy the required files and remove else.
cp ./decodec/requirements.txt .
cp ./decodec/decode-config.py .
# cp watch_and_process.py ./e
# cp ./decodec/decode-config.py ./data
# cp watch_and_process.py ./data
sudo rm -R ./decodec
echo -e '\nwatchdog' >> requirements.txt

# mkdir ./date/source
# mkdir ./data/output
# docker build . --tag bikash/tasmota-decode-config
# echo "Running the container"
# docker run -v ./data:/usr/src/app bikash/tasmota-decode-config #-s Config_pir1_1255_13.0.0.dmp -o Config.json

docker-compose up --build --detach