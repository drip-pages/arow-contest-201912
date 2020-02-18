# arow-contest-dev


# デプロイ手順

## clone と remote の設定

origin に gitlab のリポジトリ、production に github のリポジトリとなるように対応します。

```
# gitlab のリポジトリを clone
git clone {gitlabのリポジトリ}
cd arow-contest-dev-lab

# production に github のリポジトリを設定
git remote add production git@github.com:drip-pages/arow-contest-201912.git
```


## update

gitlab のリポジトリの内容を github に push します。

```
git fetch origin
git fetch production
git checkout production/master
git merge origin/master
git diff production/master
make push
```
