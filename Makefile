IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS
ERLC_OPTS += +'{parse_transform, lager_transform}'

DEPS += lorawan_server_api
dep_lorawan_server_api = git https://github.com/gotthardp/lorawan-server-api.git v0.4.9
DEPS += lager
dep_lager = git https://github.com/erlang-lager/lager.git 3.5.1
DEPS += syn
dep_syn = git https://github.com/ostinelli/syn.git 1.6.1
DEPS += worker_pool
dep_worker_pool = git https://github.com/inaka/worker_pool.git 3.1.0
DEPS += jsx
dep_jsx = git https://github.com/talentdeficit/jsx.git 2.8.2
DEPS += cowlib
dep_cowlib = git https://github.com/ninenines/cowlib 2.0.0-rc.1
DEPS += cowboy
dep_cowboy = git https://github.com/ninenines/cowboy 2.0.0-rc.1
DEPS += gun
dep_gun = git https://github.com/ninenines/gun.git 1.0.0-pre.4
DEPS += iso8601
dep_iso8601 = git https://github.com/erlsci/iso8601.git 1.2.3
DEPS += emqttc
dep_emqttc = git https://github.com/emqtt/emqttc.git d4cbc38808fec0bda30be245268e876283c0e49f


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include ../../erlang.mk