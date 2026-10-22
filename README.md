# Homebrew tap for Shard

[Shard](https://manyeya.github.io/shard/) is a download manager that fetches every file in parallel parts and resumes after anything.

```sh
brew install --cask manyeya/tap/shard
```

Shard keeps itself up to date (each update is signed and checked), so `brew upgrade` usually has nothing to do. To remove it, including its history and settings:

```sh
brew uninstall --zap --cask shard
```

`Casks/shard.rb` is written by the [release workflow](https://github.com/manyeya/shard/blob/main/.github/workflows/release.yml) in manyeya/shard for every release, so changes made here are overwritten. Report problems in [manyeya/shard](https://github.com/manyeya/shard/issues).
