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
{
	"Print to console": {
		"prefix": "fff",
		"body": [
			"fmt.Printf(\"==========%#v\\n\", $1)"
		],
		"description": "動きを確認するためのlog"
	},
	"func": {
		"prefix": "fc",
		"body": [
			"func ($1) $2($3)($4){",
			"\t$0",
			"}"
		]
	},
	"package": {
		"prefix": "pac",
		"body": "package"
	},
	"test func": {
		"prefix": "fct",
		"body": [
			"func Test$1(t *testing.T) {",
			"\tt.Parallel()",
			"\tasserts := assert.New(t)",
			"\ttests := []struct{",
			"\t\tname string",
			"\t\tinput string",
			"\t\toutput string",
			"\t}{",
			"\t\t{",
			"\t\t\tname: \"\",",
			"\t\t\tinput: \"\",",
			"\t\t\toutput: \"\",",
			"\t\t},",
			"\t}",
			"\tfor _, td := range tests {",
			"\t\ttd := td",
			"\t\tt.Run(td.name, func(t *testing.T) {",
			"\t\t})",
			"\t}",
			"}"
		]
	}
}
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
	"console.log(\"===========\")",
	"console.log($1)"
  ],
  "description": "デバッグ用console.log"
},
```
