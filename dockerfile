# Step 1: Download the website template archive
wget https://templatemo.com/download/templatemo_591_villa_agency

# Step 2: Rename the downloaded file to a ZIP archive
mv templatemo_591_villa_agency templatemo_591_villa_agency.zip

# Step 3: Unzip the archive
unzip templatemo_591_villa_agency.zip

# Step 4: Navigate into the extracted folder
cd templatemo_591_villa_agency/

# Step 5: Create a tar archive of the website files
tar -czvf web.tar .

# Step 6: Move the tar archive to the parent directory
mv web.tar ..

# Step 7: Return to the parent directory
cd ..

# Step 8: Clean up unnecessary files and folders
rm -rf templatemo_591_villa_agency
rm -rf templatemo_591_villa_agency.zip

# Step 9: Create or edit a Dockerfile
vi Dockerfile

# Step 10: Build the Docker image
docker build -t webapp:v2 .

# Step 11: Verify the Docker image exists
docker images

# Step 12: Run a container from the image and expose it on port 8081
docker run -d --name app2 -p 8081:80 webapp:v2

# Step 13: Check running containers
docker ps
