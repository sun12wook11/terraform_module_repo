        #!/bin/bash
        # Miniconda 설치
        wget https://repo.anaconda.com/miniconda/Miniconda3-py310_24.7.1-0-Linux-x86_64.sh -O /tmp/Miniconda3.sh
        bash /tmp/Miniconda3.sh -b -p /home/ubuntu/miniconda3
        echo 'export PATH="/home/ubuntu/miniconda3/bin:$PATH"' >> /home/ubuntu/.bashrc
        source /home/ubuntu/.bashrc

        # FastAPI 및 Uvicorn 설치
        /home/ubuntu/miniconda3/bin/conda install -y python=3.10
        /home/ubuntu/miniconda3/bin/pip install fastapi uvicorn

        # FastAPI 애플리케이션 생성
        cat <<EOL > /home/ubuntu/main.py
        from fastapi import FastAPI

        app = FastAPI()

        @app.get('/')
        def index():
            return {'Hello':'World!!'}
        EOL

        # FastAPI 서비스 파일 생성
        cat <<EOL > /etc/systemd/system/fastapi.service
        [Unit]
        Description=FastAPI app
        After=network.target

        [Service]
        User=ubuntu
        ExecStart=/home/ubuntu/miniconda3/bin/uvicorn main:app --host 0.0.0.0 --port 8000
        WorkingDirectory=/home/ubuntu
        Restart=always

        [Install]
        WantedBy=multi-user.target
        EOL

        # 서비스 시작 및 자동 시작 설정
        systemctl daemon-reload
        systemctl start fastapi
        systemctl enable fastapi