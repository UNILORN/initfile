docker run -d --name cios_agent --restart=always --privileged -v //sys/fs/cgroup://sys/fs/cgroup:ro jrei/systemd-ubuntu:18.04
docker exec cios_agent apt update
docker exec cios_agent apt install -y wget unzip curl openssh-client sudo
docker exec cios_agent wget https://cios-agent.optim.cloud/scripts/scripts_x64.zip
docker exec cios_agent unzip scripts_x64.zip
docker exec -it cios_agent sh cios_agent_inner_docker.sh

