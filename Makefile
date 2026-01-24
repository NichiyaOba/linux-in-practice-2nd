.PHONY: shell exec up down build logs restart ps run

# コンテナに入る
shell:
	docker exec -it linux-practice bash

# shell のエイリアス
exec: shell

# コンテナを起動（バックグラウンド）
up:
	docker compose up -d

# コンテナを停止・削除
down:
	docker compose down

# イメージをビルド
build:
	docker compose build

# イメージをビルドして起動
build-up:
	docker compose up -d --build

# コンテナのログを表示
logs:
	docker compose logs -f

# コンテナを再起動
restart:
	docker compose restart

# コンテナの状態を確認
ps:
	docker compose ps

# コンテナ内でコマンドを実行（例: make run CMD="python3 01-operating-system-overview/hello.py"）
run:
	docker exec -it linux-practice $(CMD)
