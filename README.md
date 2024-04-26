# Installing and Running Mojo on Azure VM

## VM の作成・VS Code で SSH 接続

参考：[Remote development over SSH](https://code.visualstudio.com/docs/remote/ssh-tutorial)

1. `ssh-keygen -t rsa`
2. [Azure portal](https://portal.azure.com/#home) で Virtual Machines と検索
3. [作成] から [手順](https://code.visualstudio.com/docs/remote/ssh-tutorial#_create-a-virtual-machine) に従って VM を作成
4. 作成途中で [手順](https://code.visualstudio.com/docs/remote/ssh-tutorial#_add-ssh-key-to-your-vm) に従って公開鍵を登録 (`cat id_rsa.pub` で確認)
5. [手順](https://code.visualstudio.com/docs/remote/ssh-tutorial#_connect-using-ssh) に従って VS Code で SSH 接続

## Mojo

参考：[公式サイト](https://www.modular.com/max/mojo)

1. [公式サイト](https://www.modular.com/max/mojo) よりアカウント作成
2. 下記コマンドを実行しインストール
    ```bash
    curl -s https://get.modular.com | sh -
    modular auth  # 認証
    modular install mojo

    MOJO_PATH=$(modular config mojo.path) \
    && BASHRC=$( [ -f "$HOME/.bash_profile" ] && echo "$HOME/.bash_profile" || echo "$HOME/.bashrc" ) \
    && echo 'export MODULAR_HOME="'$HOME'/.modular"' >> "$BASHRC" \
    && echo 'export PATH="'$MOJO_PATH'/bin:$PATH"' >> "$BASHRC" \
    && source "$BASHRC"
    ```
3. インストールの確認と更新
    ```
    mojo --version
    modular update mojo
    sudo apt update
    sudo apt install modular
    ```

## 実行

* Mojo (🔥) ファイル実行
  * `mojo hello.mojo`
  * `mojo hello.🔥`
* 実行バイナリ
  * `mojo build hello.mojo`
  * `./hello`
