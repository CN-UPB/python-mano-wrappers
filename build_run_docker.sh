sudo docker stop pwm-wrapper
sudo docker rm pwm-wrapper
sudo docker build -t pwm-wrapper -f Dockerfile-dev .
sudo docker run -d --name pwm-wrapper -v $(pwd):/src pwm-wrapper
