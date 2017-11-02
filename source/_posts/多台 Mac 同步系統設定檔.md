---
title: 多台 Mac 同步系統設定檔
tags:
- sync
- dropbox
- mac
- osx
categories:
- system
---

## 背景

通常都是這樣吧，不知何時開始，早就已經習慣使用 Mac 作為主要的開發、使用機，使用 Linux 做為 server 或是次級桌面系統，漸漸也不習慣使用 Windows 的環境了；不過這一點也沒關係，反正有 command line interface (cli) 一點也沒問題，用起來倒是很順手。

唯一擔心的，就是多台電腦間，設定檔的同步問題，像是常會遇到的 browser, application setting 等問題，不過有些項目設定起來有點麻煩，所以至少，先同步一些常用的設定檔案

<!-- more -->

## 目的

這次目的也算是很簡單，至少我要先同步 `.zshrc` (oh-my-zsh), `.vimrc` (vim) 以及 `.ssh` (ssh - folder) 等幾個項目，當然方法有幾個，例如，使用 git 之類的服務，或是使用同步檔案的服務，如 dropbox 之類的

經過懶人病作祟以及科技始終來自於惰性的座右銘，我決定使用 [Dropbox] 來同步我的設定檔

## 操作

其實與 git 比較起來，操作非常簡單，步驟如下：

1. 先在 [Dropbox] 的同步資料夾中，建立一個準備同步的資料夾；我們先暫稱它為 dotfiles 好了
2. 將要準備同步的檔案 / 資料夾先複製到這個要同步的資料夾中 (dotfiles)
3. 刪除要同步的檔案 / 資料夾 (必先確定項目已經完成複製，並且已經同步完成)
4. 重新把原本的項目 link 回原本項目應該在的位置

![screen 2017-11-02 11.54.19](https://i.imgur.com/nLkiwYl.png)


*要注意的部分，為了要避免 unix-like 的系統中，檔案 / 資料夾前面有個 . ，代表是隱藏檔案 / 資料夾，為了確保在不同環境中，都可以看到這些檔案或是資料夾，複製過去 [Dropbox] 時，還是最好把它另外命名為沒有前面有個 . 的一般正常檔案 / 資料夾*

例如：

```shell
cp -rf ~/.ssh /Users/kimhsiao/Dropbox/dotfiles/ssh
rm -rf ~/.ssh
ln -sf /Users/kimhsiao/Dropbox/dotfiles/ssh ~/.ssh
```

新電腦操作步驟：
```shell
rm -rf ~/.ssh
ln -sf /Users/kimhsiao/Dropbox/dotfiles/ssh ~/.ssh
```

如此一來，就可以開心的在不同電腦中同步你的設定檔了

[dropbox]: https://www.dropbox.com "Dropbox"

