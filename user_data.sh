
#!/bin/bash
set -euo pipefail

# Amazon Linux 2: enable nginx from Extras, then install
sudo yum update -y
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

sudo systemctl enable nginx
sudo systemctl start nginx

# Write your custom page
cat <<'HTML' | sudo tee /usr/share/nginx/html/index.html
<h1>Deployed via Terraform + CodePipeline!</h1>
HTML
