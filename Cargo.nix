# Generated by carnix 0.10.0: carnix generate-nix --src .
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO // rec {
# hydra-cli-0.2.0

    crates.hydra_cli."0.2.0" = deps: { features?(features_.hydra_cli."0.2.0" deps {}) }: buildRustCrate {
      crateName = "hydra-cli";
      version = "0.2.0";
      authors = [ "Antoine Eiche <lewo@abesis.fr>" "Tobias Pflug <tobias.pflug@gmail.com>" ];
      edition = "2018";
      src = exclude [ ".git" "target" ] ./.;
      dependencies = mapFeatures features ([
        (cratesIO.crates."chrono"."${deps."hydra_cli"."0.2.0"."chrono"}" deps)
        (cratesIO.crates."clap"."${deps."hydra_cli"."0.2.0"."clap"}" deps)
        (cratesIO.crates."log"."${deps."hydra_cli"."0.2.0"."log"}" deps)
        (cratesIO.crates."mockito"."${deps."hydra_cli"."0.2.0"."mockito"}" deps)
        (cratesIO.crates."prettytable_rs"."${deps."hydra_cli"."0.2.0"."prettytable_rs"}" deps)
        (cratesIO.crates."rand"."${deps."hydra_cli"."0.2.0"."rand"}" deps)
        (cratesIO.crates."reqwest"."${deps."hydra_cli"."0.2.0"."reqwest"}" deps)
        (cratesIO.crates."serde"."${deps."hydra_cli"."0.2.0"."serde"}" deps)
        (cratesIO.crates."serde_derive"."${deps."hydra_cli"."0.2.0"."serde_derive"}" deps)
        (cratesIO.crates."serde_json"."${deps."hydra_cli"."0.2.0"."serde_json"}" deps)
      ]);
    };
    features_.hydra_cli."0.2.0" = deps: f: updateFeatures f (rec {
      chrono."${deps.hydra_cli."0.2.0".chrono}".default = true;
      clap."${deps.hydra_cli."0.2.0".clap}".default = true;
      hydra_cli."0.2.0".default = (f.hydra_cli."0.2.0".default or true);
      log."${deps.hydra_cli."0.2.0".log}".default = true;
      mockito."${deps.hydra_cli."0.2.0".mockito}".default = true;
      prettytable_rs."${deps.hydra_cli."0.2.0".prettytable_rs}".default = true;
      rand = fold recursiveUpdate {} [
        { "${deps.hydra_cli."0.2.0".rand}"."getrandom" = true; }
        { "${deps.hydra_cli."0.2.0".rand}"."getrandom_package" = true; }
        { "${deps.hydra_cli."0.2.0".rand}"."std" = true; }
        { "${deps.hydra_cli."0.2.0".rand}".default = true; }
      ];
      reqwest."${deps.hydra_cli."0.2.0".reqwest}".default = true;
      serde."${deps.hydra_cli."0.2.0".serde}".default = true;
      serde_derive."${deps.hydra_cli."0.2.0".serde_derive}".default = true;
      serde_json."${deps.hydra_cli."0.2.0".serde_json}".default = true;
    }) [
      (cratesIO.features_.chrono."${deps."hydra_cli"."0.2.0"."chrono"}" deps)
      (cratesIO.features_.clap."${deps."hydra_cli"."0.2.0"."clap"}" deps)
      (cratesIO.features_.log."${deps."hydra_cli"."0.2.0"."log"}" deps)
      (cratesIO.features_.mockito."${deps."hydra_cli"."0.2.0"."mockito"}" deps)
      (cratesIO.features_.prettytable_rs."${deps."hydra_cli"."0.2.0"."prettytable_rs"}" deps)
      (cratesIO.features_.rand."${deps."hydra_cli"."0.2.0"."rand"}" deps)
      (cratesIO.features_.reqwest."${deps."hydra_cli"."0.2.0"."reqwest"}" deps)
      (cratesIO.features_.serde."${deps."hydra_cli"."0.2.0"."serde"}" deps)
      (cratesIO.features_.serde_derive."${deps."hydra_cli"."0.2.0"."serde_derive"}" deps)
      (cratesIO.features_.serde_json."${deps."hydra_cli"."0.2.0"."serde_json"}" deps)
    ];


# end

  };

  hydra_cli = crates.crates.hydra_cli."0.2.0" deps;
  __all = [ (hydra_cli {}) ];
  deps.adler32."1.0.3" = {};
  deps.aho_corasick."0.7.6" = {
    memchr = "2.2.1";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.8";
  };
  deps.approx."0.1.1" = {};
  deps.arrayref."0.3.5" = {};
  deps.arrayvec."0.4.11" = {
    nodrop = "0.1.13";
  };
  deps.assert_json_diff."1.0.0" = {
    serde = "1.0.99";
    serde_json = "1.0.40";
  };
  deps.atty."0.2.13" = {
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.autocfg."0.1.6" = {};
  deps.backtrace."0.3.35" = {
    backtrace_sys = "0.1.31";
    cfg_if = "0.1.9";
    libc = "0.2.62";
    rustc_demangle = "0.1.16";
  };
  deps.backtrace_sys."0.1.31" = {
    libc = "0.2.62";
    cc = "1.0.41";
  };
  deps.base64."0.10.1" = {
    byteorder = "1.3.2";
  };
  deps.bitflags."1.1.0" = {};
  deps.blake2b_simd."0.5.7" = {
    arrayref = "0.3.5";
    arrayvec = "0.4.11";
    constant_time_eq = "0.1.4";
  };
  deps.bstr."0.2.7" = {
    lazy_static = "1.4.0";
    memchr = "2.2.1";
    regex_automata = "0.1.8";
    serde = "1.0.99";
  };
  deps.byteorder."1.3.2" = {};
  deps.bytes."0.4.12" = {
    byteorder = "1.3.2";
    either = "1.5.2";
    iovec = "0.1.2";
  };
  deps.c2_chacha."0.2.2" = {
    lazy_static = "1.4.0";
    ppv_lite86 = "0.2.5";
  };
  deps.cc."1.0.41" = {};
  deps.cfg_if."0.1.9" = {};
  deps.cgmath."0.16.1" = {
    approx = "0.1.1";
    num_traits = "0.1.43";
    rand = "0.4.6";
  };
  deps.chrono."0.4.7" = {
    libc = "0.2.62";
    num_integer = "0.1.41";
    num_traits = "0.2.8";
    time = "0.1.42";
  };
  deps.clap."2.33.0" = {
    atty = "0.2.13";
    bitflags = "1.1.0";
    strsim = "0.8.0";
    textwrap = "0.11.0";
    unicode_width = "0.1.6";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.1.0";
  };
  deps.colored."1.8.0" = {
    lazy_static = "1.4.0";
    winconsole = "0.10.0";
  };
  deps.constant_time_eq."0.1.4" = {};
  deps.cookie."0.12.0" = {
    time = "0.1.42";
    url = "1.7.2";
  };
  deps.cookie_store."0.7.0" = {
    cookie = "0.12.0";
    failure = "0.1.5";
    idna = "0.1.5";
    log = "0.4.8";
    publicsuffix = "1.5.3";
    serde = "1.0.99";
    serde_json = "1.0.40";
    time = "0.1.42";
    try_from = "0.3.2";
    url = "1.7.2";
  };
  deps.core_foundation."0.6.4" = {
    core_foundation_sys = "0.6.2";
    libc = "0.2.62";
  };
  deps.core_foundation_sys."0.6.2" = {};
  deps.crc32fast."1.2.0" = {
    cfg_if = "0.1.9";
  };
  deps.crossbeam_deque."0.7.1" = {
    crossbeam_epoch = "0.7.2";
    crossbeam_utils = "0.6.6";
  };
  deps.crossbeam_epoch."0.7.2" = {
    arrayvec = "0.4.11";
    cfg_if = "0.1.9";
    crossbeam_utils = "0.6.6";
    lazy_static = "1.4.0";
    memoffset = "0.5.1";
    scopeguard = "1.0.0";
  };
  deps.crossbeam_queue."0.1.2" = {
    crossbeam_utils = "0.6.6";
  };
  deps.crossbeam_utils."0.6.6" = {
    cfg_if = "0.1.9";
    lazy_static = "1.4.0";
  };
  deps.csv."1.1.1" = {
    bstr = "0.2.7";
    csv_core = "0.1.6";
    itoa = "0.4.4";
    ryu = "1.0.0";
    serde = "1.0.99";
  };
  deps.csv_core."0.1.6" = {
    memchr = "2.2.1";
  };
  deps.difference."2.0.0" = {};
  deps.dirs."1.0.5" = {
    redox_users = "0.3.1";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.dtoa."0.4.4" = {};
  deps.either."1.5.2" = {};
  deps.encode_unicode."0.3.6" = {};
  deps.encoding_rs."0.8.17" = {
    cfg_if = "0.1.9";
  };
  deps.error_chain."0.12.1" = {
    backtrace = "0.3.35";
    version_check = "0.1.5";
  };
  deps.failure."0.1.5" = {
    backtrace = "0.3.35";
    failure_derive = "0.1.5";
  };
  deps.failure_derive."0.1.5" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.13";
    syn = "0.15.44";
    synstructure = "0.10.2";
  };
  deps.flate2."1.0.11" = {
    crc32fast = "1.2.0";
    libc = "0.2.62";
    miniz_oxide = "0.3.2";
  };
  deps.fnv."1.0.6" = {};
  deps.foreign_types."0.3.2" = {
    foreign_types_shared = "0.1.1";
  };
  deps.foreign_types_shared."0.1.1" = {};
  deps.fuchsia_cprng."0.1.1" = {};
  deps.fuchsia_zircon."0.3.3" = {
    bitflags = "1.1.0";
    fuchsia_zircon_sys = "0.3.3";
  };
  deps.fuchsia_zircon_sys."0.3.3" = {};
  deps.futures."0.1.28" = {};
  deps.futures_cpupool."0.1.8" = {
    futures = "0.1.28";
    num_cpus = "1.10.1";
  };
  deps.getrandom."0.1.11" = {
    cfg_if = "0.1.9";
    libc = "0.2.62";
    wasi = "0.5.0";
  };
  deps.h2."0.1.26" = {
    byteorder = "1.3.2";
    bytes = "0.4.12";
    fnv = "1.0.6";
    futures = "0.1.28";
    http = "0.1.18";
    indexmap = "1.1.0";
    log = "0.4.8";
    slab = "0.4.2";
    string = "0.2.1";
    tokio_io = "0.1.12";
  };
  deps.http."0.1.18" = {
    bytes = "0.4.12";
    fnv = "1.0.6";
    itoa = "0.4.4";
  };
  deps.http_body."0.1.0" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    http = "0.1.18";
    tokio_buf = "0.1.1";
  };
  deps.httparse."1.3.4" = {};
  deps.hydra_cli."0.2.0" = {
    chrono = "0.4.7";
    clap = "2.33.0";
    log = "0.4.8";
    mockito = "0.20.0";
    prettytable_rs = "0.8.0";
    rand = "0.7.0";
    reqwest = "0.9.20";
    serde = "1.0.99";
    serde_derive = "1.0.99";
    serde_json = "1.0.40";
  };
  deps.hyper."0.12.33" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    futures_cpupool = "0.1.8";
    h2 = "0.1.26";
    http = "0.1.18";
    http_body = "0.1.0";
    httparse = "1.3.4";
    iovec = "0.1.2";
    itoa = "0.4.4";
    log = "0.4.8";
    net2 = "0.2.33";
    time = "0.1.42";
    tokio = "0.1.22";
    tokio_buf = "0.1.1";
    tokio_executor = "0.1.8";
    tokio_io = "0.1.12";
    tokio_reactor = "0.1.9";
    tokio_tcp = "0.1.3";
    tokio_threadpool = "0.1.15";
    tokio_timer = "0.2.11";
    want = "0.2.0";
    rustc_version = "0.2.3";
  };
  deps.hyper_tls."0.3.2" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    hyper = "0.12.33";
    native_tls = "0.2.3";
    tokio_io = "0.1.12";
  };
  deps.idna."0.1.5" = {
    matches = "0.1.8";
    unicode_bidi = "0.3.4";
    unicode_normalization = "0.1.8";
  };
  deps.idna."0.2.0" = {
    matches = "0.1.8";
    unicode_bidi = "0.3.4";
    unicode_normalization = "0.1.8";
  };
  deps.indexmap."1.1.0" = {};
  deps.iovec."0.1.2" = {
    libc = "0.2.62";
    winapi = "0.2.8";
  };
  deps.itoa."0.4.4" = {};
  deps.kernel32_sys."0.2.2" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
  deps.lazy_static."1.4.0" = {};
  deps.libc."0.2.62" = {};
  deps.lock_api."0.1.5" = {
    owning_ref = "0.4.0";
    scopeguard = "0.3.3";
  };
  deps.log."0.4.8" = {
    cfg_if = "0.1.9";
  };
  deps.matches."0.1.8" = {};
  deps.memchr."2.2.1" = {
    libc = "0.2.62";
  };
  deps.memoffset."0.5.1" = {
    rustc_version = "0.2.3";
  };
  deps.mime."0.3.13" = {
    unicase = "2.4.0";
  };
  deps.mime_guess."2.0.1" = {
    mime = "0.3.13";
    unicase = "2.4.0";
  };
  deps.miniz_oxide."0.3.2" = {
    adler32 = "1.0.3";
  };
  deps.mio."0.6.19" = {
    iovec = "0.1.2";
    log = "0.4.8";
    net2 = "0.2.33";
    slab = "0.4.2";
    fuchsia_zircon = "0.3.3";
    fuchsia_zircon_sys = "0.3.3";
    libc = "0.2.62";
    kernel32_sys = "0.2.2";
    miow = "0.2.1";
    winapi = "0.2.8";
  };
  deps.miow."0.2.1" = {
    kernel32_sys = "0.2.2";
    net2 = "0.2.33";
    winapi = "0.2.8";
    ws2_32_sys = "0.2.1";
  };
  deps.mockito."0.20.0" = {
    assert_json_diff = "1.0.0";
    colored = "1.8.0";
    difference = "2.0.0";
    httparse = "1.3.4";
    lazy_static = "1.4.0";
    log = "0.4.8";
    percent_encoding = "1.0.1";
    rand = "0.7.0";
    regex = "1.2.1";
    serde_json = "1.0.40";
  };
  deps.native_tls."0.2.3" = {
    lazy_static = "1.4.0";
    libc = "0.2.62";
    security_framework = "0.3.1";
    security_framework_sys = "0.3.1";
    tempfile = "3.1.0";
    log = "0.4.8";
    openssl = "0.10.24";
    openssl_probe = "0.1.2";
    openssl_sys = "0.9.49";
    schannel = "0.1.15";
  };
  deps.net2."0.2.33" = {
    cfg_if = "0.1.9";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.nodrop."0.1.13" = {};
  deps.num_integer."0.1.41" = {
    num_traits = "0.2.8";
    autocfg = "0.1.6";
  };
  deps.num_traits."0.1.43" = {
    num_traits = "0.2.8";
  };
  deps.num_traits."0.2.8" = {
    autocfg = "0.1.6";
  };
  deps.num_cpus."1.10.1" = {
    libc = "0.2.62";
  };
  deps.openssl."0.10.24" = {
    bitflags = "1.1.0";
    cfg_if = "0.1.9";
    foreign_types = "0.3.2";
    lazy_static = "1.4.0";
    libc = "0.2.62";
    openssl_sys = "0.9.49";
  };
  deps.openssl_probe."0.1.2" = {};
  deps.openssl_sys."0.9.49" = {
    libc = "0.2.62";
    autocfg = "0.1.6";
    cc = "1.0.41";
    pkg_config = "0.3.15";
  };
  deps.owning_ref."0.4.0" = {
    stable_deref_trait = "1.1.1";
  };
  deps.parking_lot."0.7.1" = {
    lock_api = "0.1.5";
    parking_lot_core = "0.4.0";
  };
  deps.parking_lot_core."0.4.0" = {
    rand = "0.6.5";
    smallvec = "0.6.10";
    rustc_version = "0.2.3";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.percent_encoding."1.0.1" = {};
  deps.percent_encoding."2.1.0" = {};
  deps.pkg_config."0.3.15" = {};
  deps.ppv_lite86."0.2.5" = {};
  deps.prettytable_rs."0.8.0" = {
    atty = "0.2.13";
    csv = "1.1.1";
    encode_unicode = "0.3.6";
    lazy_static = "1.4.0";
    term = "0.5.2";
    unicode_width = "0.1.6";
  };
  deps.proc_macro2."0.4.30" = {
    unicode_xid = "0.1.0";
  };
  deps.proc_macro2."1.0.1" = {
    unicode_xid = "0.2.0";
  };
  deps.publicsuffix."1.5.3" = {
    error_chain = "0.12.1";
    idna = "0.2.0";
    lazy_static = "1.4.0";
    regex = "1.2.1";
    url = "2.1.0";
  };
  deps.quote."0.6.13" = {
    proc_macro2 = "0.4.30";
  };
  deps.quote."1.0.2" = {
    proc_macro2 = "1.0.1";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.rand."0.6.5" = {
    rand_chacha = "0.1.1";
    rand_core = "0.4.2";
    rand_hc = "0.1.0";
    rand_isaac = "0.1.1";
    rand_jitter = "0.1.4";
    rand_os = "0.1.3";
    rand_pcg = "0.1.2";
    rand_xorshift = "0.1.1";
    autocfg = "0.1.6";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.rand."0.7.0" = {
    rand_core = "0.5.1";
    rand_chacha = "0.2.1";
    rand_hc = "0.2.0";
    libc = "0.2.62";
  };
  deps.rand_chacha."0.1.1" = {
    rand_core = "0.3.1";
    autocfg = "0.1.6";
  };
  deps.rand_chacha."0.2.1" = {
    c2_chacha = "0.2.2";
    rand_core = "0.5.1";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.2";
  };
  deps.rand_core."0.4.2" = {};
  deps.rand_core."0.5.1" = {
    getrandom = "0.1.11";
  };
  deps.rand_hc."0.1.0" = {
    rand_core = "0.3.1";
  };
  deps.rand_hc."0.2.0" = {
    rand_core = "0.5.1";
  };
  deps.rand_isaac."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rand_jitter."0.1.4" = {
    rand_core = "0.4.2";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.rand_os."0.1.3" = {
    rand_core = "0.4.2";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.rand_pcg."0.1.2" = {
    rand_core = "0.4.2";
    autocfg = "0.1.6";
  };
  deps.rand_xorshift."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.56" = {};
  deps.redox_users."0.3.1" = {
    failure = "0.1.5";
    rand_os = "0.1.3";
    redox_syscall = "0.1.56";
    rust_argon2 = "0.5.1";
  };
  deps.regex."1.2.1" = {
    aho_corasick = "0.7.6";
    memchr = "2.2.1";
    regex_syntax = "0.6.11";
    thread_local = "0.3.6";
  };
  deps.regex_automata."0.1.8" = {
    byteorder = "1.3.2";
  };
  deps.regex_syntax."0.6.11" = {};
  deps.remove_dir_all."0.5.2" = {
    winapi = "0.3.8";
  };
  deps.reqwest."0.9.20" = {
    base64 = "0.10.1";
    bytes = "0.4.12";
    cookie = "0.12.0";
    cookie_store = "0.7.0";
    encoding_rs = "0.8.17";
    flate2 = "1.0.11";
    futures = "0.1.28";
    http = "0.1.18";
    hyper = "0.12.33";
    hyper_tls = "0.3.2";
    log = "0.4.8";
    mime = "0.3.13";
    mime_guess = "2.0.1";
    native_tls = "0.2.3";
    serde = "1.0.99";
    serde_json = "1.0.40";
    serde_urlencoded = "0.5.5";
    time = "0.1.42";
    tokio = "0.1.22";
    tokio_executor = "0.1.8";
    tokio_io = "0.1.12";
    tokio_threadpool = "0.1.15";
    tokio_timer = "0.2.11";
    url = "1.7.2";
    uuid = "0.7.4";
    winreg = "0.6.2";
  };
  deps.rgb."0.8.14" = {};
  deps.rust_argon2."0.5.1" = {
    base64 = "0.10.1";
    blake2b_simd = "0.5.7";
    crossbeam_utils = "0.6.6";
  };
  deps.rustc_demangle."0.1.16" = {};
  deps.rustc_version."0.2.3" = {
    semver = "0.9.0";
  };
  deps.ryu."1.0.0" = {};
  deps.schannel."0.1.15" = {
    lazy_static = "1.4.0";
    winapi = "0.3.8";
  };
  deps.scopeguard."0.3.3" = {};
  deps.scopeguard."1.0.0" = {};
  deps.security_framework."0.3.1" = {
    core_foundation = "0.6.4";
    core_foundation_sys = "0.6.2";
    libc = "0.2.62";
    security_framework_sys = "0.3.1";
  };
  deps.security_framework_sys."0.3.1" = {
    core_foundation_sys = "0.6.2";
  };
  deps.semver."0.9.0" = {
    semver_parser = "0.7.0";
  };
  deps.semver_parser."0.7.0" = {};
  deps.serde."1.0.99" = {
    serde_derive = "1.0.99";
  };
  deps.serde_derive."1.0.99" = {
    proc_macro2 = "1.0.1";
    quote = "1.0.2";
    syn = "1.0.5";
  };
  deps.serde_json."1.0.40" = {
    itoa = "0.4.4";
    ryu = "1.0.0";
    serde = "1.0.99";
  };
  deps.serde_urlencoded."0.5.5" = {
    dtoa = "0.4.4";
    itoa = "0.4.4";
    serde = "1.0.99";
    url = "1.7.2";
  };
  deps.slab."0.4.2" = {};
  deps.smallvec."0.6.10" = {};
  deps.stable_deref_trait."1.1.1" = {};
  deps.string."0.2.1" = {
    bytes = "0.4.12";
  };
  deps.strsim."0.8.0" = {};
  deps.syn."0.15.44" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.13";
    unicode_xid = "0.1.0";
  };
  deps.syn."1.0.5" = {
    proc_macro2 = "1.0.1";
    quote = "1.0.2";
    unicode_xid = "0.2.0";
  };
  deps.synstructure."0.10.2" = {
    proc_macro2 = "0.4.30";
    quote = "0.6.13";
    syn = "0.15.44";
    unicode_xid = "0.1.0";
  };
  deps.tempfile."3.1.0" = {
    cfg_if = "0.1.9";
    rand = "0.7.0";
    remove_dir_all = "0.5.2";
    redox_syscall = "0.1.56";
    libc = "0.2.62";
    winapi = "0.3.8";
  };
  deps.term."0.5.2" = {
    byteorder = "1.3.2";
    dirs = "1.0.5";
    winapi = "0.3.8";
  };
  deps.textwrap."0.11.0" = {
    unicode_width = "0.1.6";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.4.0";
  };
  deps.time."0.1.42" = {
    libc = "0.2.62";
    redox_syscall = "0.1.56";
    winapi = "0.3.8";
  };
  deps.tokio."0.1.22" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    mio = "0.6.19";
    num_cpus = "1.10.1";
    tokio_current_thread = "0.1.6";
    tokio_executor = "0.1.8";
    tokio_io = "0.1.12";
    tokio_reactor = "0.1.9";
    tokio_tcp = "0.1.3";
    tokio_threadpool = "0.1.15";
    tokio_timer = "0.2.11";
  };
  deps.tokio_buf."0.1.1" = {
    bytes = "0.4.12";
    either = "1.5.2";
    futures = "0.1.28";
  };
  deps.tokio_current_thread."0.1.6" = {
    futures = "0.1.28";
    tokio_executor = "0.1.8";
  };
  deps.tokio_executor."0.1.8" = {
    crossbeam_utils = "0.6.6";
    futures = "0.1.28";
  };
  deps.tokio_io."0.1.12" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    log = "0.4.8";
  };
  deps.tokio_reactor."0.1.9" = {
    crossbeam_utils = "0.6.6";
    futures = "0.1.28";
    lazy_static = "1.4.0";
    log = "0.4.8";
    mio = "0.6.19";
    num_cpus = "1.10.1";
    parking_lot = "0.7.1";
    slab = "0.4.2";
    tokio_executor = "0.1.8";
    tokio_io = "0.1.12";
    tokio_sync = "0.1.6";
  };
  deps.tokio_sync."0.1.6" = {
    fnv = "1.0.6";
    futures = "0.1.28";
  };
  deps.tokio_tcp."0.1.3" = {
    bytes = "0.4.12";
    futures = "0.1.28";
    iovec = "0.1.2";
    mio = "0.6.19";
    tokio_io = "0.1.12";
    tokio_reactor = "0.1.9";
  };
  deps.tokio_threadpool."0.1.15" = {
    crossbeam_deque = "0.7.1";
    crossbeam_queue = "0.1.2";
    crossbeam_utils = "0.6.6";
    futures = "0.1.28";
    log = "0.4.8";
    num_cpus = "1.10.1";
    rand = "0.6.5";
    slab = "0.4.2";
    tokio_executor = "0.1.8";
  };
  deps.tokio_timer."0.2.11" = {
    crossbeam_utils = "0.6.6";
    futures = "0.1.28";
    slab = "0.4.2";
    tokio_executor = "0.1.8";
  };
  deps.try_lock."0.2.2" = {};
  deps.try_from."0.3.2" = {
    cfg_if = "0.1.9";
  };
  deps.unicase."2.4.0" = {
    version_check = "0.1.5";
  };
  deps.unicode_bidi."0.3.4" = {
    matches = "0.1.8";
  };
  deps.unicode_normalization."0.1.8" = {
    smallvec = "0.6.10";
  };
  deps.unicode_width."0.1.6" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.unicode_xid."0.2.0" = {};
  deps.url."1.7.2" = {
    idna = "0.1.5";
    matches = "0.1.8";
    percent_encoding = "1.0.1";
  };
  deps.url."2.1.0" = {
    idna = "0.2.0";
    matches = "0.1.8";
    percent_encoding = "2.1.0";
  };
  deps.uuid."0.7.4" = {
    rand = "0.6.5";
  };
  deps.vcpkg."0.2.7" = {};
  deps.vec_map."0.8.1" = {};
  deps.version_check."0.1.5" = {};
  deps.want."0.2.0" = {
    futures = "0.1.28";
    log = "0.4.8";
    try_lock = "0.2.2";
  };
  deps.wasi."0.5.0" = {};
  deps.winapi."0.2.8" = {};
  deps.winapi."0.3.8" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_build."0.1.1" = {};
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.winconsole."0.10.0" = {
    cgmath = "0.16.1";
    lazy_static = "1.4.0";
    rgb = "0.8.14";
    winapi = "0.3.8";
  };
  deps.winreg."0.6.2" = {
    winapi = "0.3.8";
  };
  deps.ws2_32_sys."0.2.1" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
}
