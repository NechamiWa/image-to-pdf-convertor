# Image to PDF Convertor

This Python application converts images to a PDF file. It takes image files or folders containing images as input and generates a PDF file with all the images printed in it.

### Build 
replace the IMAGE_NAME with your image name
    
    docker build -t IMAGE_NAME .

### Run
replace the CONTAINER_NAME, YOUR_PDF with your own names
    
    docker run --name CONTAINER_NAME -v $PWD/images:/app/images -v $PWD/output:/app/output -e PDF_NAME=YOUR_PDF IMAGE_NAME images