# vscode snippet

- code >> Prefenecs >> user snippets

## ベーススニペット

```
"Print to console": {
  "prefix": "",
  "body": [
    ""
  ],
  "description": ""
},
```

## golang

```
"Print to console": {
  "prefix": "fff",
  "body": [
    "fmt.Printf(\"==========%#v\\n\", $1)"
  ],
  "description": "動きを確認するためのlog"
},
"func": {
  "prefix": "fun",
  "body": [
    "func ($1) $2($3)($4){",
    "\t$0",
    "}"
  ]
},
```

## sql

```
	"create table": {
		"prefix": "create",
		"body": [
			"CREATE TABLE $1 (",
			"id bigint(20) AUTO_INCREMENT PRIMARY KEY,",
			"name varchar(255) UNIQUE,",
			"content text,",
			"user_id bigint(20),",
			"is_accept tinyint(1) DEFAULT 0 NOT NULL,",
			"created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,",
			"updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,",
			"FOREIGN KEY (user_id) REFERENCES Users(id),",
			"INDEX index_user_id (user_id)",
			");"
		],
		"description": "create table"
	},

	"drop table": {
		"prefix": "drop",
		"body": [
			"DROP TABLE $1"
		],
		"description": "create table"
	}
```

## javascript

```
"Print to console": {
  "prefix": "con",
  "body": [
    "console.log('===========')",
	"console.log($1)"
  ],
  "description": "デバッグ用console.log"
},
```
