mkdir -p ~/pkg
cd ~/pkg
wget https://objects.githubusercontent.com/github-production-release-asset-2e65be/172953845/219eb040-6181-417d-98e6-338a327892ad?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20221202%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221202T032611Z&X-Amz-Expires=300&X-Amz-Signature=c4c22a7991f9a6fc3283a0034555cfe72aa9df6e07bf17f53cfcc7bb7b489530&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=172953845&response-content-disposition=attachment%3B%20filename%3Dcode-server_4.8.3_amd64.deb&response-content-type=application%2Foctet-stream

dpkg -i code-server_4.8.3_amd64.deb
mkdir -p ~/.config/code-server

# 端口密码配置
echo "
bind-addr: 0.0.0.0:8002
auth: password
password: 123456
cert: false
" >> ~/.config/code-server/config.yaml

systemctl enable rc-local # 允许开机自启
systemctl start code-server # 开启服务
systemctl stop code-server # 停止服务

