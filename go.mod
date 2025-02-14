module github.com/didi/nightingale/v4

go 1.12

require (
	github.com/Shopify/sarama v1.27.2
	github.com/alouca/gologger v0.0.0-20120904114645-7d4b7291de9c // indirect
	github.com/blang/semver v3.5.1+incompatible
	github.com/cespare/xxhash v1.1.0
	github.com/coreos/go-oidc v2.2.1+incompatible
	github.com/freedomkk-qfeng/go-fastping v0.0.0-20160109021039-d7bb493dee3e // indirect
	github.com/gaochao1/gosnmp v0.0.0-20150630013918-783a67a067fd // indirect
	github.com/gaochao1/sw v4.0.0+incompatible
	github.com/garyburd/redigo v1.6.2
	github.com/gin-contrib/pprof v1.3.0
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ping/ping v0.0.0-20201115131931-3300c582a663
	github.com/go-sql-driver/mysql v1.5.0
	github.com/google/uuid v1.1.2
	github.com/hashicorp/golang-lru v0.5.4
	github.com/hpcloud/tail v1.0.0
	github.com/influxdata/influxdb v1.8.0
	github.com/influxdata/telegraf v1.17.2
	github.com/jackc/pgx v3.6.0+incompatible
	github.com/lib/pq v1.6.0
	github.com/m3db/m3 v0.15.17
	github.com/mattn/go-isatty v0.0.12
	github.com/mattn/go-sqlite3 v1.14.0 // indirect
	github.com/mojocn/base64Captcha v1.3.1
	github.com/pquerna/cachecontrol v0.0.0-20200819021114-67c6ae64274f // indirect
	github.com/robfig/go-cache v0.0.0-20130306151617-9fc39e0dbf62 // indirect
	github.com/shirou/gopsutil v3.20.11+incompatible // indirect
	github.com/spaolacci/murmur3 v1.1.0
	github.com/sparrc/go-ping v0.0.0-20190613174326-4e5b6552494c
	github.com/spf13/viper v1.7.1
	github.com/streadway/amqp v1.0.0
	github.com/stretchr/testify v1.6.1
	github.com/toolkits/file v0.0.0-20160325033739-a5b3c5147e07
	github.com/toolkits/pkg v1.1.4
	github.com/toolkits/sys v0.0.0-20170615103026-1f33b217ffaf // indirect
	github.com/ugorji/go/codec v1.1.7
	go.uber.org/automaxprocs v1.3.0 // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d
	golang.org/x/text v0.3.3
	gopkg.in/alexcesaro/quotedprintable.v3 v3.0.0-20150716171945-2caba252f4dc // indirect
	gopkg.in/gomail.v2 v2.0.0-20160411212932-81ebce5c23df
	gopkg.in/ldap.v3 v3.1.0
	gopkg.in/square/go-jose.v2 v2.5.1 // indirect
	gopkg.in/yaml.v2 v2.3.0
	xorm.io/core v0.7.3
	xorm.io/xorm v0.8.1
)

replace github.com/satori/go.uuid => github.com/satori/go.uuid v1.2.0

// branch 0.9.3-pool-read-binary-3
replace github.com/apache/thrift => github.com/m3db/thrift v0.0.0-20190820191926-05b5a2227fe4

// NB(nate): upgrading to the latest msgpack is not backwards compatibile as msgpack will no longer attempt to automatically
// write an integer into the smallest number of bytes it will fit in. We rely on this behavior by having helper methods
// in at least two encoders (see below) take int64s and expect that msgpack will size them down accordingly. We'll have
// to make integer sizing explicit before attempting to upgrade.
//
// Encoders:
// src/metrics/encoding/msgpack/base_encoder.go
// src/dbnode/persist/fs/msgpack/encoder.go
replace gopkg.in/vmihailenco/msgpack.v2 => github.com/vmihailenco/msgpack v2.8.3+incompatible

replace github.com/stretchr/testify => github.com/stretchr/testify v1.1.4-0.20160305165446-6fe211e49392

replace github.com/prometheus/common => github.com/prometheus/common v0.9.1

// Fix legacy import path - https://github.com/uber-go/atomic/pull/60
replace github.com/uber-go/atomic => github.com/uber-go/atomic v1.4.0

// Pull in https://github.com/etcd-io/bbolt/pull/220, required for go 1.14 compatibility
//
// etcd 3.14.13 depends on v1.3.3, but everything before v1.3.5 has unsafe misuses, and fails hard on go 1.14
// TODO: remove after etcd pulls in the change to a new release on 3.4 branch
replace go.etcd.io/bbolt => go.etcd.io/bbolt v1.3.5

// https://github.com/ory/dockertest/issues/212
replace golang.org/x/sys => golang.org/x/sys v0.0.0-20200826173525-f9321e4c35a6

// for transfer
replace google.golang.org/grpc => google.golang.org/grpc v1.29.1
