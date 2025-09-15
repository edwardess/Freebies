#!/bin/bash

# Build the project
npm run build

# Create a temporary directory for deployment
mkdir -p deploy

# Copy built files to deploy directory
cp -r dist/* deploy/

# Create a simple index.html redirect for GitHub Pages
echo '<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ka WFH PH - Freebies</title>
    <meta http-equiv="refresh" content="0; url=./index.html">
</head>
<body>
    <p>Redirecting to <a href="./index.html">Ka WFH PH Freebies</a>...</p>
</body>
</html>' > deploy/index.html

echo "Build complete! Files are ready in the 'deploy' directory."
echo "You can now push the 'deploy' directory contents to your GitHub Pages branch."

