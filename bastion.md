# Azure Bastion で SSH 接続

* VM のページから **接続** > **Bastion を介した接続**
* まだ Bastion を設定していない場合は手動で構成
* SSH での接続では、以下の認証の種類がある
  1. VM パスワード
  2. Azure Key Vault からのパスワード
  3. ローカルファイルからの SSH 秘密キー
  4. Azure Key Vault からの SSH 秘密キー
* 1 が一番簡単そう
* パスワードの設定方法
  1. VM を起動
  2. 左ペインの **ヘルプ** から **パスワードのリセット** を選択
  3. 新しいパスワードを設定

:warning: Azure Bastion はコストがかさむので、使わない場合は削除する
