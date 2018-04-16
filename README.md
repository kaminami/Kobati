# Kobati
A tiny Object-relational mapping(ORM) library inspired by MyBatis

## Supported Smalltalk Version

Pharo Smalltalk 5.0, 6.0

## Installation

```smalltalk
Metacello new
    baseline: 'Kobati';
    repository: 'github://kaminami/Kobati/repository';
    load.
```

Local Reporsitory

```smalltalk
| pathToPackageDirectory |
"edit to match the path to your chosen package directory"
pathToPackageDirectory := './repository/' asFileReference asAbsolute fullName.
Metacello new
  baseline: 'Kobati';
  repository: 'filetree://', pathToPackageDirectory;
  load.
```

## Presentations
- SQLマッピングフレームワーク「Kobati」のはなし (2015/2/27 )
  - https://www.slideshare.net/kazukiminamitani/sqlkobati
- SQLマッピングフレームワーク「Kobati」の実戦投入 (2017/12/26)
  - https://www.slideshare.net/kazukiminamitani/sqlkobati-84977840