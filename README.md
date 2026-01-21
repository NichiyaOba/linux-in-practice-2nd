# linux-in-practice-2nd

「Linuxのしくみ 増補改訂版」の実験コードです

# 実験プログラム実行環境の作成

お手元のUbuntu 20.04環境で本書の実験プログラムを実行する際は、以下のコマンドを実行して必要パッケージのインストールおよびユーザ設定をしてください。

```console
$ sudo apt update && sudo apt install binutils build-essential golang sysstat python3-matplotlib python3-pil fonts-takao fio qemu-kvm virt-manager libvirt-clients virtinst jq docker.io containerd libvirt-daemon-system
$ sudo adduser `id -un` libvirt
$ sudo adduser `id -un` libvirt-qemu
$ sudo adduser `id -un` kvm
```

# macOSでの実験環境（Docker）

macOS環境では、Dockerを使用してUbuntu 20.04の実験環境を構築できます。

## セットアップ

```console
$ docker compose build
$ docker compose up -d
```

## 使い方

コンテナに入る（インタラクティブシェル）:
```console
$ docker exec -it linux-practice bash
```

外部からコマンドを実行:
```console
$ docker exec linux-practice python3 /workspace/01-operating-system-overview/hello.py
```

コンテナの停止・起動:
```console
$ docker compose stop    # 停止
$ docker compose start   # 再開
$ docker compose down    # 完全削除
```

## 注意事項

- KVM仮想化関連の実験（qemu-kvm, virt-manager）はDockerコンテナ内では制限があります
- これらの実験が必要な場合は、UTMやVirtualBoxでフルVMを用意することをお勧めします
