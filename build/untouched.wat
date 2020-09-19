(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_f32_=>_none (func (param i32 i32 i32 i32 f32)))
 (type $i32_i32_i32_f32_=>_none (func (param i32 i32 i32 f32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_f32_f32_f32_=>_f32 (func (param i32 f32 f32 f32) (result f32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_f32_=>_i32 (func (param i32 i32 i32 f32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_f32_f32_=>_i32 (func (param i32 i32 i32 f32 f32) (result i32)))
 (type $i32_i32_i32_f32_i32_=>_none (func (param i32 i32 i32 f32 i32)))
 (type $i32_i32_i32_f32_f32_=>_none (func (param i32 i32 i32 f32 f32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_f32_i32_=>_none (func (param i32 f32 i32)))
 (type $i32_f32_f32_f32_f32_i32_=>_none (func (param i32 f32 f32 f32 f32 i32)))
 (type $i32_i32_i32_i32_f32_=>_i32 (func (param i32 i32 i32 i32 f32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_f32_i32_f32_=>_f32 (func (param i32 i32 i32 f32 i32 f32) (result f32)))
 (type $i32_f32_=>_f32 (func (param i32 f32) (result f32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_f32_i32_=>_none (func (param i32 i32 i32 i32 f32 i32)))
 (type $i32_i32_i32_f32_i32_i32_=>_none (func (param i32 i32 i32 f32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f32_i32_i32_=>_none (func (param i32 i32 f32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_f32_f32_=>_i32 (func (param i32 i32 i32 i32 f32 f32) (result i32)))
 (type $i32_i32_f32_i32_=>_i32 (func (param i32 i32 f32 i32) (result i32)))
 (type $i32_i32_f32_f32_=>_i32 (func (param i32 i32 f32 f32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f32_f32_=>_i32 (func (param i32 f32 f32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $f32_f32_f32_f32_f32_f32_=>_i32 (func (param f32 f32 f32 f32 f32 f32) (result i32)))
 (type $f32_f32_f32_f32_f32_f32_f32_f32_=>_i32 (func (param f32 f32 f32 f32 f32 f32 f32 f32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_f32 (func (param i32 i32 i32 i32 i32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\000\00.\000\00.\001\00")
 (data (i32.const 208) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 256) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 320) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 384) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 448) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 464) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00\d0\01\00\00\d0\01\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 496) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 512) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 528) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 544) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 592) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 704) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 720) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 736) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 752) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 768) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 784) "v\00\00\00\01\00\00\00\01\00\00\00v\00\00\00C\00o\00n\00v\00e\00x\00 \00v\00e\00r\00t\00i\00c\00e\00s\00 \00m\00u\00s\00t\00 \00b\00e\00 \00g\00i\00v\00e\00n\00 \00i\00n\00 \00c\00o\00u\00n\00t\00e\00r\00-\00c\00l\00o\00c\00k\00w\00i\00s\00e\00 \00w\00i\00n\00d\00i\00n\00g\00.\00")
 (data (i32.const 928) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00h\00a\00p\00e\00s\00/\00C\00o\00n\00v\00e\00x\00.\00t\00s\00")
 (data (i32.const 1008) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1024) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1040) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1056) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1072) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00p\00o\00s\00t\00S\00t\00e\00p\00")
 (data (i32.const 1104) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00d\00d\00B\00o\00d\00y\00")
 (data (i32.const 1136) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00r\00e\00m\00o\00v\00e\00B\00o\00d\00y\00")
 (data (i32.const 1184) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00a\00d\00d\00S\00p\00r\00i\00n\00g\00")
 (data (i32.const 1232) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00i\00m\00p\00a\00c\00t\00")
 (data (i32.const 1264) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00p\00o\00s\00t\00B\00r\00o\00a\00d\00p\00h\00a\00s\00e\00")
 (data (i32.const 1312) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00b\00e\00g\00i\00n\00C\00o\00n\00t\00a\00c\00t\00")
 (data (i32.const 1360) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1376) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00e\00n\00d\00C\00o\00n\00t\00a\00c\00t\00")
 (data (i32.const 1424) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00p\00r\00e\00S\00o\00l\00v\00e\00")
 (data (i32.const 1456) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1472) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00\c0\05\00\00\c0\05\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1504) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1520) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00\f0\05\00\00\f0\05\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1552) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00l\00e\00e\00p\00y\00")
 (data (i32.const 1584) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00l\00e\00e\00p\00")
 (data (i32.const 1616) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00w\00a\00k\00e\00u\00p\00")
 (data (i32.const 1648) "\08\00\00\00\01\00\00\00N\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1672) ")\15DNn\83\f9\a2\c0\dd4\f5\d1W\'\fcA\90C<\99\95b\dba\c5\bb\de\abcQ\fe")
 (data (i32.const 1712) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00")
 (data (i32.const 1760) "R\00\00\00\01\00\00\00\01\00\00\00R\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00e\00q\00u\00a\00t\00i\00o\00n\00s\00/\00a\00n\00g\00l\00e\00-\00l\00o\00c\00k\00-\00e\00q\00u\00a\00t\00i\00o\00n\00.\00t\00s\00")
 (data (i32.const 1872) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1888) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1904) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00B\00o\00u\00n\00d\00i\00n\00g\00 \00v\00o\00l\00u\00m\00e\00 \00t\00y\00p\00e\00 \00n\00o\00t\00 \00r\00e\00c\00o\00g\00n\00i\00z\00e\00d\00:\00 \00")
 (data (i32.const 2000) "d\00\00\00\01\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00")
 (data (i32.const 2128) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00")
 (data (i32.const 2192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 2212) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2624) "\00\04\00\00\01\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00")
 (data (i32.const 3664) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 3760) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 3792) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00l\00l\00i\00s\00i\00o\00n\00/\00b\00r\00o\00a\00d\00p\00h\00a\00s\00e\00.\00t\00s\00")
 (data (i32.const 3872) "\be\f3\f8y\eca\f6?\190\96[\c6\fe\de\bf=\88\afJ\edq\f5?\a4\fc\d42h\0b\db\bf\b0\10\f0\f09\95\f4?{\b7\1f\n\8bA\d7\bf\85\03\b8\b0\95\c9\f3?{\cfm\1a\e9\9d\d3\bf\a5d\88\0c\19\0d\f3?1\b6\f2\f3\9b\1d\d0\bf\a0\8e\0b{\"^\f2?\f0z;\1b\1d|\c9\bf?4\1aJJ\bb\f1?\9f<\af\93\e3\f9\c2\bf\ba\e5\8a\f0X#\f1?\\\8dx\bf\cb`\b9\bf\a7\00\99A?\95\f0?\ce_G\b6\9do\aa\bf\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\acG\9a\fd\8c`\ee?=\f5$\9f\ca8\b3?\a0j\02\1f\b3\a4\ec?\ba\918T\a9v\c4?\e6\fcjW6 \eb?\d2\e4\c4J\0b\84\ce?-\aa\a1c\d1\c2\e9?\1ce\c6\f0E\06\d4?\edAx\03\e6\86\e8?\f8\9f\1b,\9c\8e\d8?bHS\f5\dcg\e7?\cc{\b1N\a4\e0\dc?")
 (data (i32.const 4128) "\00\00\00\00\00\00\f0?t\85\15\d3\b0\d9\ef?\0f\89\f9lX\b5\ef?Q[\12\d0\01\93\ef?{Q}<\b8r\ef?\aa\b9h1\87T\ef?8bunz8\ef?\e1\de\1f\f5\9d\1e\ef?\15\b71\n\fe\06\ef?\cb\a9:7\a7\f1\ee?\"4\12L\a6\de\ee?-\89a`\08\ce\ee?\'*6\d5\da\bf\ee?\82O\9dV+\b4\ee?)TH\dd\07\ab\ee?\85U:\b0~\a4\ee?\cd;\7ff\9e\a0\ee?t_\ec\e8u\9f\ee?\87\01\ebs\14\a1\ee?\13\ceL\99\89\a5\ee?\db\a0*B\e5\ac\ee?\e5\c5\cd\b07\b7\ee?\90\f0\a3\82\91\c4\ee?]%>\b2\03\d5\ee?\ad\d3Z\99\9f\e8\ee?G^\fb\f2v\ff\ee?\9cR\85\dd\9b\19\ef?i\90\ef\dc 7\ef?\87\a4\fb\dc\18X\ef?_\9b{3\97|\ef?\da\90\a4\a2\af\a4\ef?@En[v\d0\ef?")
 (data (i32.const 4384) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00l\00l\00i\00s\00i\00o\00n\00/\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 4464) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4480) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 4544) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 4592) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4608) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4624) "z\00\00\00\01\00\00\00\01\00\00\00z\00\00\00m\00e\00t\00h\00o\00d\00 \00u\00p\00d\00a\00t\00e\00(\00)\00 \00n\00o\00t\00 \00i\00m\00p\00l\00m\00e\00m\00e\00n\00t\00e\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00C\00o\00n\00s\00t\00r\00a\00i\00n\00t\00 \00s\00u\00b\00c\00l\00a\00s\00s\00!\00")
 (data (i32.const 4768) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00s\00t\00r\00a\00i\00n\00t\00s\00/\00c\00o\00n\00s\00t\00r\00a\00i\00n\00t\00.\00t\00s\00")
 (data (i32.const 4864) "L\00\00\00\01\00\00\00\01\00\00\00L\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00e\00q\00u\00a\00t\00i\00o\00n\00s\00/\00c\00o\00n\00t\00a\00c\00t\00-\00e\00q\00u\00a\00t\00i\00o\00n\00.\00t\00s\00")
 (data (i32.const 4960) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 5008) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5024) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5040) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5056) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5072) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5088) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5104) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00h\00a\00p\00e\00s\00/\00c\00o\00n\00v\00e\00x\00.\00t\00s\00")
 (data (i32.const 5184) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5200) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5216) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5232) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00c\00o\00n\00s\00t\00r\00a\00i\00n\00t\00s\00/\00d\00i\00s\00t\00a\00n\00c\00e\00-\00c\00o\00n\00s\00t\00r\00a\00i\00n\00t\00.\00t\00s\00")
 (data (i32.const 5344) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5360) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5376) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5392) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00e\00q\00u\00a\00t\00i\00o\00n\00s\00/\00d\00i\00s\00t\00a\00n\00c\00e\00-\00e\00q\00u\00a\00t\00i\00o\00n\00.\00t\00s\00")
 (data (i32.const 5488) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5504) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5520) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00o\00l\00v\00e\00r\00/\00s\00o\00l\00v\00e\00r\00.\00t\00s\00")
 (data (i32.const 5600) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t\00")
 (data (i32.const 5664) "8\00\00\00\01\00\00\00\01\00\00\008\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00o\00l\00v\00e\00r\00/\00g\00s\00-\00s\00o\00l\00v\00e\00r\00.\00t\00s\00")
 (data (i32.const 5744) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5760) "\08\00\00\00\01\00\00\00N\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 5792) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00o\00b\00j\00e\00c\00t\00s\00/\00l\00i\00n\00e\00a\00r\00-\00s\00p\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 5888) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 5936) "l\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00!\19\00\00\02\00\00\00\"A\00\00\00\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\t\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\000A\82\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\000A\82\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\18\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\000\01\14\00\00\00\00\00\"\n\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10A\14\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\a1\00\00\00\02\00\00\00\"A\00\00\00\00\00\00\"\19\00\00\00\00\00\00\a2\00\00\00\00\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\0c\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00R\00\00\00 \00\00\00\00\00\00\00 \00\00\00\1d\00\00\00 \00\00\00\1f\00\00\00 \00\00\00\t\00\00\00 \00\00\00<\00\00\00 \00\00\00\t\00\00\00 \00\00\00+\00\00\00 \00\00\00,\00\00\00 \00\00\00\18\00\00\00 \00\00\00\00\00\00\00 \00\00\00\17\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\t\00\00\00 \00\00\00<\00\00\00 \00\00\00\t\00\00\00 \00\00\00<\00\00\00 \00\00\00*\00\00\00 \00\00\00\t\00\00\00 \00\00\00\1d\00\00\00 \00\00\00\08\00\00\00 \00\00\00g\00\00\00 \00\00\00<\00\00\00 \00\00\00R\00\00\00 \00\00\00\13\00\00\00 \00\00\00\14\00\00\00 \00\00\00\13\00\00\00")
 (table $0 3 funcref)
 (elem (i32.const 1) $start:assembly/collision/ray~anonymous|0 $assembly/collision/ray/Ray#constructor~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $assembly/index/version i32 (i32.const 192))
 (global $assembly/math/vec2/vec2 (mut i32) (i32.const 0))
 (global $assembly/utils/utils/Utils (mut i32) (i32.const 0))
 (global $assembly/equations/equation/Equation.DEFAULT_STIFFNESS (mut f32) (f32.const 1e6))
 (global $assembly/equations/equation/Equation.DEFAULT_RELAXATION (mut f32) (f32.const 4))
 (global $assembly/solver/solver/Solver.GS (mut i32) (i32.const 1))
 (global $assembly/material/Material/Material.idCounter (mut i32) (i32.const 0))
 (global $assembly/shapes/shape/Shape.idCounter (mut i32) (i32.const 0))
 (global $assembly/shapes/shape/Shape.CIRCLE (mut i32) (i32.const 1))
 (global $assembly/shapes/shape/Shape.PARTICLE (mut i32) (i32.const 2))
 (global $assembly/shapes/shape/Shape.PLANE (mut i32) (i32.const 4))
 (global $assembly/shapes/shape/Shape.CONVEX (mut i32) (i32.const 8))
 (global $assembly/shapes/shape/Shape.LINE (mut i32) (i32.const 16))
 (global $assembly/shapes/shape/Shape.BOX (mut i32) (i32.const 32))
 (global $assembly/shapes/shape/Shape.CAPSULE (mut i32) (i32.const 64))
 (global $assembly/shapes/shape/Shape.HEIGHTFIELD (mut i32) (i32.const 128))
 (global $assembly/shapes/shape/Shape.AXISALIGNEDBOX (mut i32) (i32.const 256))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/equations/contact-equation/vi (mut i32) (i32.const 0))
 (global $assembly/equations/contact-equation/vj (mut i32) (i32.const 0))
 (global $assembly/equations/contact-equation/relVel (mut i32) (i32.const 0))
 (global $assembly/material/material/Material.idCounter (mut i32) (i32.const 0))
 (global $assembly/material/contact-material/ContactMaterial.idCounter (mut i32) (i32.const 0))
 (global $assembly/collision/broadphase/Broadphase.NAIVE (mut i32) (i32.const 1))
 (global $assembly/collision/broadphase/Broadphase.SAP (mut i32) (i32.const 2))
 (global $assembly/collision/broadphase/Broadphase.AABB (mut i32) (i32.const 1))
 (global $assembly/collision/broadphase/Broadphase.BOUNDING_CIRCLE (mut i32) (i32.const 2))
 (global $assembly/shapes/Shape/Shape.idCounter (mut i32) (i32.const 0))
 (global $assembly/shapes/Shape/Shape.CIRCLE (mut i32) (i32.const 1))
 (global $assembly/shapes/Shape/Shape.PARTICLE (mut i32) (i32.const 2))
 (global $assembly/shapes/Shape/Shape.PLANE (mut i32) (i32.const 4))
 (global $assembly/shapes/Shape/Shape.CONVEX (mut i32) (i32.const 8))
 (global $assembly/shapes/Shape/Shape.LINE (mut i32) (i32.const 16))
 (global $assembly/shapes/Shape/Shape.BOX (mut i32) (i32.const 32))
 (global $assembly/shapes/Shape/Shape.CAPSULE (mut i32) (i32.const 64))
 (global $assembly/shapes/Shape/Shape.HEIGHTFIELD (mut i32) (i32.const 128))
 (global $assembly/shapes/Shape/Shape.AXISALIGNEDBOX (mut i32) (i32.const 256))
 (global $assembly/shapes/Circle/Ray_intersectSphere_intersectionPoint (mut i32) (i32.const 0))
 (global $assembly/shapes/Circle/Ray_intersectSphere_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/updateCenterOfMass_centroid (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/updateCenterOfMass_centroid_times_mass (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/updateCenterOfMass_a (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/updateCenterOfMass_b (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/updateCenterOfMass_c (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/tmpVec1 (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/intersectConvex_rayStart (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/intersectConvex_rayEnd (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/intersectConvex_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/pic_r0 (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/pic_r1 (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/tmpVec2 (mut i32) (i32.const 0))
 (global $assembly/shapes/Convex/worldAxis (mut i32) (i32.const 0))
 (global $assembly/shapes/capsule/intersectCapsule_hitPointWorld (mut i32) (i32.const 0))
 (global $assembly/shapes/capsule/intersectCapsule_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/capsule/intersectCapsule_l0 (mut i32) (i32.const 0))
 (global $assembly/shapes/capsule/intersectCapsule_l1 (mut i32) (i32.const 0))
 (global $assembly/shapes/capsule/intersectCapsule_unit_y (mut i32) (i32.const 0))
 (global $assembly/shapes/plane/intersectPlane_planePointToFrom (mut i32) (i32.const 0))
 (global $assembly/shapes/plane/intersectPlane_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/plane/intersectPlane_len (mut i32) (i32.const 0))
 (global $assembly/shapes/line/raycast_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/line/raycast_l0 (mut i32) (i32.const 0))
 (global $assembly/shapes/line/raycast_l1 (mut i32) (i32.const 0))
 (global $assembly/shapes/line/raycast_unit_y (mut i32) (i32.const 0))
 (global $assembly/shapes/heightfield/intersectHeightfield_worldNormal (mut i32) (i32.const 0))
 (global $assembly/shapes/heightfield/intersectHeightfield_l0 (mut i32) (i32.const 0))
 (global $assembly/shapes/heightfield/intersectHeightfield_l1 (mut i32) (i32.const 0))
 (global $assembly/shapes/heightfield/intersectHeightfield_localFrom (mut i32) (i32.const 0))
 (global $assembly/shapes/heightfield/intersectHeightfield_localTo (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/yAxis (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp2 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp3 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp4 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp5 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp6 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp7 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp8 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp9 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp10 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp11 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp12 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp13 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp14 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmp15 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/tmpArray (mut i32) (i32.const 480))
 (global $assembly/collision/narrowphase/findMaxSeparation_n (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/findMaxSeparation_v1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/findMaxSeparation_tmp (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/findMaxSeparation_tmp2 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/findIncidentEdge_normal1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_tempVec (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_tmpVec (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_localTangent (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_localNormal (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_planePoint (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_tangent (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_normal (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_negativeTangent (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_v11 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_v12 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_dist (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_clipPoints1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_clipPoints2 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/collidePolygons_incidentEdge (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/pic_localPoint (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/pic_r0 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/pic_r1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/bodiesOverlap_shapePositionA (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/bodiesOverlap_shapePositionB (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/capsuleCapsule_tempVec1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/capsuleCapsule_tempVec2 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/convexCapsule_tempVec (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/planeCapsule_tmp1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/planeCapsule_tmp2 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_candidate (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_dist (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_v0 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_v1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_minCandidate (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_worldNormal (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/circleHeightfield_minCandidateNormal (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/convexHeightfield_v0 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/convexHeightfield_v1 (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/convexHeightfield_tilePos (mut i32) (i32.const 0))
 (global $assembly/collision/narrowphase/convexHeightfield_tempConvexShape (mut i32) (i32.const 0))
 (global $assembly/constraints/constraint/Constraint.DISTANCE (mut i32) (i32.const 1))
 (global $assembly/constraints/constraint/Constraint.GEAR (mut i32) (i32.const 2))
 (global $assembly/constraints/constraint/Constraint.LOCK (mut i32) (i32.const 3))
 (global $assembly/constraints/constraint/Constraint.PRISMATIC (mut i32) (i32.const 4))
 (global $assembly/constraints/constraint/Constraint.REVOLUTE (mut i32) (i32.const 5))
 (global $assembly/world/world/postStepEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/addBodyEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/removeBodyEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/addSpringEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/impactEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/postBroadphaseEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/beginContactEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/endContactEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/hitTest_tmp1 (mut i32) (i32.const 0))
 (global $assembly/world/world/hitTest_tmp2 (mut i32) (i32.const 0))
 (global $assembly/world/world/preSolveEvent (mut i32) (i32.const 0))
 (global $assembly/world/world/World.NO_SLEEPING (mut i32) (i32.const 1))
 (global $assembly/world/world/World.BODY_SLEEPING (mut i32) (i32.const 2))
 (global $assembly/world/world/World.ISLAND_SLEEPING (mut i32) (i32.const 4))
 (global $assembly/math/poly-decomp/tmpPoint1 (mut i32) (i32.const 0))
 (global $assembly/math/poly-decomp/tmpPoint2 (mut i32) (i32.const 0))
 (global $assembly/math/poly-decomp/tmpLine1 (mut i32) (i32.const 1488))
 (global $assembly/math/poly-decomp/tmpLine2 (mut i32) (i32.const 1536))
 (global $assembly/objects/body/integrate_fhMinv (mut i32) (i32.const 0))
 (global $assembly/objects/body/integrate_velodt (mut i32) (i32.const 0))
 (global $assembly/objects/body/_tmp (mut i32) (i32.const 0))
 (global $assembly/objects/body/_idCounter (mut i32) (i32.const 0))
 (global $assembly/objects/body/Body.DYNAMIC (mut i32) (i32.const 1))
 (global $assembly/objects/body/Body.STATIC (mut i32) (i32.const 2))
 (global $assembly/objects/body/Body.KINEMATIC (mut i32) (i32.const 4))
 (global $assembly/objects/body/Body.AWAKE (mut i32) (i32.const 0))
 (global $assembly/objects/body/Body.SLEEPY (mut i32) (i32.const 1))
 (global $assembly/objects/body/Body.SLEEPING (mut i32) (i32.const 2))
 (global $assembly/objects/body/sleepyEvent (mut i32) (i32.const 0))
 (global $assembly/objects/body/sleepEvent (mut i32) (i32.const 0))
 (global $assembly/objects/body/wakeUpEvent (mut i32) (i32.const 0))
 (global $assembly/collision/ray/intersectBody_worldPosition (mut i32) (i32.const 0))
 (global $assembly/collision/ray/v0 (mut i32) (i32.const 0))
 (global $assembly/collision/ray/intersect (mut i32) (i32.const 0))
 (global $assembly/collision/ray/doNothing (mut i32) (i32.const 1664))
 (global $assembly/collision/ray/Ray.CLOSEST (mut i32) (i32.const 1))
 (global $assembly/collision/ray/Ray.ANY (mut i32) (i32.const 2))
 (global $assembly/collision/ray/Ray.ALL (mut i32) (i32.const 4))
 (global $assembly/equations/Equation/Equation.DEFAULT_STIFFNESS (mut f32) (f32.const 1e6))
 (global $assembly/equations/Equation/Equation.DEFAULT_RELAXATION (mut f32) (f32.const 4))
 (global $assembly/shapes/circle/Ray_intersectSphere_intersectionPoint (mut i32) (i32.const 0))
 (global $assembly/shapes/circle/Ray_intersectSphere_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/updateCenterOfMass_centroid (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/updateCenterOfMass_centroid_times_mass (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/updateCenterOfMass_a (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/updateCenterOfMass_b (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/updateCenterOfMass_c (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/tmpVec1 (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/intersectConvex_rayStart (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/intersectConvex_rayEnd (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/intersectConvex_normal (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/pic_r0 (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/pic_r1 (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/tmpVec2 (mut i32) (i32.const 0))
 (global $assembly/shapes/convex/worldAxis (mut i32) (i32.const 0))
 (global $assembly/constraints/distance-constraint/n (mut i32) (i32.const 0))
 (global $assembly/constraints/distance-constraint/ri (mut i32) (i32.const 0))
 (global $assembly/constraints/distance-constraint/rj (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_r (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_r_unit (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_u (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_f (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_worldAnchorA (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_worldAnchorB (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_ri (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_rj (mut i32) (i32.const 0))
 (global $assembly/objects/linear-spring/applyForce_tmp (mut i32) (i32.const 0))
 (global $~lib/math/rempio2f_y (mut f64) (f64.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $~lib/math/NativeMathf.PI f32 (f32.const 3.1415927410125732))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 5936))
 (global $~lib/heap/__heap_base i32 (i32.const 6804))
 (global $assembly/collision/aabb/AABB i32 (i32.const 58))
 (global $assembly/equations/angle-lock-equation/AngleLockEquation i32 (i32.const 81))
 (global $assembly/collision/broadphase/Broadphase i32 (i32.const 42))
 (global $assembly/shapes/capsule/Capsule i32 (i32.const 83))
 (global $assembly/shapes/circle/Circle i32 (i32.const 85))
 (global $assembly/constraints/constraint/Constraint i32 (i32.const 43))
 (global $assembly/equations/contact-equation/ContactEquation i32 (i32.const 28))
 (global $assembly/utils/contact-equation-pool/ContactEquationPool i32 (i32.const 35))
 (global $assembly/material/contact-material/ContactMaterial i32 (i32.const 40))
 (global $assembly/shapes/convex/Convex i32 (i32.const 87))
 (global $assembly/constraints/distance-constraint/DistanceConstraint i32 (i32.const 88))
 (global $assembly/equations/equation/Equation i32 (i32.const 24))
 (global $assembly/events/event-emitter/EventEmitter i32 (i32.const 11))
 (global $assembly/equations/friction-equation/FrictionEquation i32 (i32.const 33))
 (global $assembly/equations/distance-equation/DistanceEquation i32 (i32.const 90))
 (global $assembly/utils/friction-equation-pool/FrictionEquationPool i32 (i32.const 36))
 (global $assembly/solver/gs-solver/GSSolver i32 (i32.const 92))
 (global $assembly/shapes/heightfield/Heightfield i32 (i32.const 94))
 (global $assembly/shapes/line/Line i32 (i32.const 96))
 (global $assembly/material/material/Material i32 (i32.const 46))
 (global $assembly/collision/naive-broadphase/NaiveBroadphase i32 (i32.const 98))
 (global $assembly/shapes/particle/Particle i32 (i32.const 99))
 (global $assembly/shapes/plane/Plane i32 (i32.const 100))
 (global $assembly/collision/ray/Ray i32 (i32.const 79))
 (global $assembly/collision/raycast-result/RaycastResult i32 (i32.const 77))
 (global $assembly/shapes/Box/Box i32 (i32.const 101))
 (global $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation i32 (i32.const 104))
 (global $assembly/shapes/shape/Shape i32 (i32.const 29))
 (global $assembly/solver/solver/Solver i32 (i32.const 23))
 (global $assembly/objects/spring/Spring i32 (i32.const 19))
 (global $assembly/objects/linear-spring/LinearSpring i32 (i32.const 105))
 (global $assembly/objects/rotational-spring/RotationalSpring i32 (i32.const 107))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "version" (global $assembly/index/version))
 (export "AABB" (global $assembly/collision/aabb/AABB))
 (export "AABB#get:lowerBound" (func $assembly/collision/aabb/AABB#get:lowerBound))
 (export "AABB#set:lowerBound" (func $assembly/collision/aabb/AABB#set:lowerBound))
 (export "AABB#get:upperBound" (func $assembly/collision/aabb/AABB#get:upperBound))
 (export "AABB#set:upperBound" (func $assembly/collision/aabb/AABB#set:upperBound))
 (export "AABB#constructor" (func $assembly/collision/aabb/AABB#constructor))
 (export "AABB#setFromPoints" (func $assembly/collision/aabb/AABB#setFromPoints@varargs))
 (export "AABB#copy" (func $assembly/collision/aabb/AABB#copy))
 (export "AABB#extend" (func $assembly/collision/aabb/AABB#extend))
 (export "AABB#overlaps" (func $assembly/collision/aabb/AABB#overlaps))
 (export "AABB#containsPoint" (func $assembly/collision/aabb/AABB#containsPoint))
 (export "AABB#overlapsRay" (func $assembly/collision/aabb/AABB#overlapsRay))
 (export "AngleLockEquation" (global $assembly/equations/angle-lock-equation/AngleLockEquation))
 (export "AngleLockEquation#get:minForce" (func $assembly/equations/Equation/Equation#get:minForce))
 (export "AngleLockEquation#set:minForce" (func $assembly/equations/Equation/Equation#set:minForce))
 (export "AngleLockEquation#get:maxForce" (func $assembly/equations/Equation/Equation#get:maxForce))
 (export "AngleLockEquation#set:maxForce" (func $assembly/equations/Equation/Equation#set:maxForce))
 (export "AngleLockEquation#get:maxBias" (func $assembly/equations/Equation/Equation#get:maxBias))
 (export "AngleLockEquation#set:maxBias" (func $assembly/equations/Equation/Equation#set:maxBias))
 (export "AngleLockEquation#get:bodyA" (func $assembly/equations/Equation/Equation#get:bodyA))
 (export "AngleLockEquation#set:bodyA" (func $assembly/equations/Equation/Equation#set:bodyA))
 (export "AngleLockEquation#get:bodyB" (func $assembly/equations/Equation/Equation#get:bodyB))
 (export "AngleLockEquation#set:bodyB" (func $assembly/equations/Equation/Equation#set:bodyB))
 (export "AngleLockEquation#get:stiffness" (func $assembly/equations/Equation/Equation#get:stiffness))
 (export "AngleLockEquation#set:stiffness" (func $assembly/equations/Equation/Equation#set:stiffness))
 (export "AngleLockEquation#get:relaxation" (func $assembly/equations/Equation/Equation#get:relaxation))
 (export "AngleLockEquation#set:relaxation" (func $assembly/equations/Equation/Equation#set:relaxation))
 (export "AngleLockEquation#get:G" (func $assembly/equations/Equation/Equation#get:G))
 (export "AngleLockEquation#set:G" (func $assembly/equations/Equation/Equation#set:G))
 (export "AngleLockEquation#get:offset" (func $assembly/equations/Equation/Equation#get:offset))
 (export "AngleLockEquation#set:offset" (func $assembly/equations/Equation/Equation#set:offset))
 (export "AngleLockEquation#get:a" (func $assembly/equations/Equation/Equation#get:a))
 (export "AngleLockEquation#set:a" (func $assembly/equations/Equation/Equation#set:a))
 (export "AngleLockEquation#get:b" (func $assembly/equations/Equation/Equation#get:b))
 (export "AngleLockEquation#set:b" (func $assembly/equations/Equation/Equation#set:b))
 (export "AngleLockEquation#get:epsilon" (func $assembly/equations/Equation/Equation#get:epsilon))
 (export "AngleLockEquation#set:epsilon" (func $assembly/equations/Equation/Equation#set:epsilon))
 (export "AngleLockEquation#get:timeStep" (func $assembly/equations/Equation/Equation#get:timeStep))
 (export "AngleLockEquation#set:timeStep" (func $assembly/equations/Equation/Equation#set:timeStep))
 (export "AngleLockEquation#get:needsUpdate" (func $assembly/equations/Equation/Equation#get:needsUpdate))
 (export "AngleLockEquation#set:needsUpdate" (func $assembly/equations/Equation/Equation#set:needsUpdate))
 (export "AngleLockEquation#get:multiplier" (func $assembly/equations/Equation/Equation#get:multiplier))
 (export "AngleLockEquation#set:multiplier" (func $assembly/equations/Equation/Equation#set:multiplier))
 (export "AngleLockEquation#get:relativeVelocity" (func $assembly/equations/Equation/Equation#get:relativeVelocity))
 (export "AngleLockEquation#set:relativeVelocity" (func $assembly/equations/Equation/Equation#set:relativeVelocity))
 (export "AngleLockEquation#get:enabled" (func $assembly/equations/Equation/Equation#get:enabled))
 (export "AngleLockEquation#set:enabled" (func $assembly/equations/Equation/Equation#set:enabled))
 (export "AngleLockEquation#get:maxForceDt" (func $assembly/equations/Equation/Equation#get:maxForceDt))
 (export "AngleLockEquation#set:maxForceDt" (func $assembly/equations/Equation/Equation#set:maxForceDt))
 (export "AngleLockEquation#get:minForceDt" (func $assembly/equations/Equation/Equation#get:minForceDt))
 (export "AngleLockEquation#set:minForceDt" (func $assembly/equations/Equation/Equation#set:minForceDt))
 (export "AngleLockEquation#get:invC" (func $assembly/equations/Equation/Equation#get:invC))
 (export "AngleLockEquation#set:invC" (func $assembly/equations/Equation/Equation#set:invC))
 (export "AngleLockEquation#get:B" (func $assembly/equations/Equation/Equation#get:B))
 (export "AngleLockEquation#set:B" (func $assembly/equations/Equation/Equation#set:B))
 (export "AngleLockEquation#get:lambda" (func $assembly/equations/Equation/Equation#get:lambda))
 (export "AngleLockEquation#set:lambda" (func $assembly/equations/Equation/Equation#set:lambda))
 (export "AngleLockEquation#get:index" (func $assembly/equations/Equation/Equation#get:index))
 (export "AngleLockEquation#set:index" (func $assembly/equations/Equation/Equation#set:index))
 (export "AngleLockEquation#constructor" (func $assembly/equations/angle-lock-equation/AngleLockEquation#constructor))
 (export "AngleLockEquation#computeGq" (func $assembly/equations/angle-lock-equation/AngleLockEquation#computeGq))
 (export "AngleLockEquation#update" (func $assembly/equations/Equation/Equation#update))
 (export "AngleLockEquation#gmult" (func $assembly/equations/Equation/Equation#gmult))
 (export "AngleLockEquation#computeB" (func $assembly/equations/Equation/Equation#computeB))
 (export "AngleLockEquation#computeGW" (func $assembly/equations/Equation/Equation#computeGW))
 (export "AngleLockEquation#computeGWlambda" (func $assembly/equations/Equation/Equation#computeGWlambda))
 (export "AngleLockEquation#computeGiMf" (func $assembly/equations/Equation/Equation#computeGiMf))
 (export "AngleLockEquation#computeGiMGt" (func $assembly/equations/Equation/Equation#computeGiMGt))
 (export "AngleLockEquation#updateJacobian" (func $assembly/equations/Equation/Equation#updateJacobian))
 (export "AngleLockEquation#addToWlambda" (func $assembly/equations/Equation/Equation#addToWlambda))
 (export "AngleLockEquation#computeInvC" (func $assembly/equations/Equation/Equation#computeInvC))
 (export "AngleLockEquation#get:angle" (func $assembly/equations/angle-lock-equation/AngleLockEquation#get:angle))
 (export "AngleLockEquation#set:angle" (func $assembly/equations/angle-lock-equation/AngleLockEquation#set:angle))
 (export "AngleLockEquation#get:ratio" (func $assembly/equations/angle-lock-equation/AngleLockEquation#get:ratio))
 (export "AngleLockEquation#set:ratio" (func $assembly/equations/angle-lock-equation/AngleLockEquation#set:ratio))
 (export "AngleLockEquation#setRatio" (func $assembly/equations/angle-lock-equation/AngleLockEquation#setRatio))
 (export "AngleLockEquation#setMaxTorque" (func $assembly/equations/angle-lock-equation/AngleLockEquation#setMaxTorque))
 (export "Broadphase" (global $assembly/collision/broadphase/Broadphase))
 (export "Broadphase#get:type" (func $assembly/collision/broadphase/Broadphase#get:type))
 (export "Broadphase#set:type" (func $assembly/collision/broadphase/Broadphase#set:type))
 (export "Broadphase#get:result" (func $assembly/collision/broadphase/Broadphase#get:result))
 (export "Broadphase#set:result" (func $assembly/collision/broadphase/Broadphase#set:result))
 (export "Broadphase#get:world" (func $assembly/collision/broadphase/Broadphase#get:world))
 (export "Broadphase#set:world" (func $assembly/collision/broadphase/Broadphase#set:world))
 (export "Broadphase#get:boundingVolumeType" (func $assembly/collision/broadphase/Broadphase#get:boundingVolumeType))
 (export "Broadphase#set:boundingVolumeType" (func $assembly/collision/broadphase/Broadphase#set:boundingVolumeType))
 (export "Broadphase#constructor" (func $assembly/collision/broadphase/Broadphase#constructor))
 (export "Broadphase#setWorld" (func $assembly/collision/broadphase/Broadphase#setWorld))
 (export "Broadphase#getCollisionPairs" (func $assembly/collision/broadphase/Broadphase#getCollisionPairs))
 (export "Broadphase#boundingVolumeCheck" (func $assembly/collision/broadphase/Broadphase#boundingVolumeCheck))
 (export "Broadphase#aabbQuery" (func $assembly/collision/broadphase/Broadphase#aabbQuery))
 (export "Broadphase.boundingRadiusCheck" (func $assembly/collision/broadphase/Broadphase.boundingRadiusCheck))
 (export "Broadphase.aabbCheck" (func $assembly/collision/broadphase/Broadphase.aabbCheck))
 (export "Broadphase.canCollide" (func $assembly/collision/broadphase/Broadphase.canCollide))
 (export "Broadphase.NAIVE" (global $assembly/collision/broadphase/Broadphase.NAIVE))
 (export "Broadphase.SAP" (global $assembly/collision/broadphase/Broadphase.SAP))
 (export "Broadphase.AABB" (global $assembly/collision/broadphase/Broadphase.AABB))
 (export "Broadphase.BOUNDING_CIRCLE" (global $assembly/collision/broadphase/Broadphase.BOUNDING_CIRCLE))
 (export "Capsule" (global $assembly/shapes/capsule/Capsule))
 (export "Capsule#get:body" (func $assembly/shapes/shape/Shape#get:body))
 (export "Capsule#set:body" (func $assembly/shapes/shape/Shape#set:body))
 (export "Capsule#get:position" (func $assembly/shapes/shape/Shape#get:position))
 (export "Capsule#set:position" (func $assembly/shapes/shape/Shape#set:position))
 (export "Capsule#get:angle" (func $assembly/shapes/shape/Shape#get:angle))
 (export "Capsule#set:angle" (func $assembly/shapes/shape/Shape#set:angle))
 (export "Capsule#get:type" (func $assembly/shapes/shape/Shape#get:type))
 (export "Capsule#set:type" (func $assembly/shapes/shape/Shape#set:type))
 (export "Capsule#get:id" (func $assembly/shapes/shape/Shape#get:id))
 (export "Capsule#set:id" (func $assembly/shapes/shape/Shape#set:id))
 (export "Capsule#get:boundingRadius" (func $assembly/shapes/shape/Shape#get:boundingRadius))
 (export "Capsule#set:boundingRadius" (func $assembly/shapes/shape/Shape#set:boundingRadius))
 (export "Capsule#get:collisionGroup" (func $assembly/shapes/shape/Shape#get:collisionGroup))
 (export "Capsule#set:collisionGroup" (func $assembly/shapes/shape/Shape#set:collisionGroup))
 (export "Capsule#get:collisionResponse" (func $assembly/shapes/shape/Shape#get:collisionResponse))
 (export "Capsule#set:collisionResponse" (func $assembly/shapes/shape/Shape#set:collisionResponse))
 (export "Capsule#get:collisionMask" (func $assembly/shapes/shape/Shape#get:collisionMask))
 (export "Capsule#set:collisionMask" (func $assembly/shapes/shape/Shape#set:collisionMask))
 (export "Capsule#get:material" (func $assembly/shapes/shape/Shape#get:material))
 (export "Capsule#set:material" (func $assembly/shapes/shape/Shape#set:material))
 (export "Capsule#get:area" (func $assembly/shapes/shape/Shape#get:area))
 (export "Capsule#set:area" (func $assembly/shapes/shape/Shape#set:area))
 (export "Capsule#get:sensor" (func $assembly/shapes/shape/Shape#get:sensor))
 (export "Capsule#set:sensor" (func $assembly/shapes/shape/Shape#set:sensor))
 (export "Capsule#constructor" (func $assembly/shapes/capsule/Capsule#constructor))
 (export "Capsule#computeMomentOfInertia" (func $assembly/shapes/capsule/Capsule#computeMomentOfInertia))
 (export "Capsule#updateBoundingRadius" (func $assembly/shapes/capsule/Capsule#updateBoundingRadius))
 (export "Capsule#updateArea" (func $assembly/shapes/capsule/Capsule#updateArea))
 (export "Capsule#computeAABB" (func $assembly/shapes/capsule/Capsule#computeAABB))
 (export "Capsule#raycast" (func $assembly/shapes/capsule/Capsule#raycast))
 (export "Capsule#pointTest" (func $assembly/shapes/capsule/Capsule#pointTest))
 (export "Capsule#worldPointToLocal" (func $assembly/shapes/shape/Shape#worldPointToLocal))
 (export "Capsule#get:length" (func $assembly/shapes/capsule/Capsule#get:length))
 (export "Capsule#set:length" (func $assembly/shapes/capsule/Capsule#set:length))
 (export "Capsule#get:radius" (func $assembly/shapes/capsule/Capsule#get:radius))
 (export "Capsule#set:radius" (func $assembly/shapes/capsule/Capsule#set:radius))
 (export "Circle" (global $assembly/shapes/circle/Circle))
 (export "Circle#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Circle#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Circle#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Circle#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Circle#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Circle#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Circle#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Circle#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Circle#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Circle#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Circle#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Circle#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Circle#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Circle#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Circle#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Circle#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Circle#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Circle#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Circle#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Circle#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Circle#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Circle#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Circle#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Circle#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Circle#constructor" (func $assembly/shapes/circle/Circle#constructor))
 (export "Circle#computeMomentOfInertia" (func $assembly/shapes/circle/Circle#computeMomentOfInertia))
 (export "Circle#updateBoundingRadius" (func $assembly/shapes/circle/Circle#updateBoundingRadius))
 (export "Circle#updateArea" (func $assembly/shapes/circle/Circle#updateArea))
 (export "Circle#computeAABB" (func $assembly/shapes/circle/Circle#computeAABB))
 (export "Circle#raycast" (func $assembly/shapes/circle/Circle#raycast))
 (export "Circle#pointTest" (func $assembly/shapes/circle/Circle#pointTest))
 (export "Circle#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Circle#get:radius" (func $assembly/shapes/circle/Circle#get:radius))
 (export "Circle#set:radius" (func $assembly/shapes/circle/Circle#set:radius))
 (export "Constraint" (global $assembly/constraints/constraint/Constraint))
 (export "Constraint#get:type" (func $assembly/constraints/constraint/Constraint#get:type))
 (export "Constraint#set:type" (func $assembly/constraints/constraint/Constraint#set:type))
 (export "Constraint#get:equations" (func $assembly/constraints/constraint/Constraint#get:equations))
 (export "Constraint#set:equations" (func $assembly/constraints/constraint/Constraint#set:equations))
 (export "Constraint#get:bodyA" (func $assembly/constraints/constraint/Constraint#get:bodyA))
 (export "Constraint#set:bodyA" (func $assembly/constraints/constraint/Constraint#set:bodyA))
 (export "Constraint#get:bodyB" (func $assembly/constraints/constraint/Constraint#get:bodyB))
 (export "Constraint#set:bodyB" (func $assembly/constraints/constraint/Constraint#set:bodyB))
 (export "Constraint#get:collideConnected" (func $assembly/constraints/constraint/Constraint#get:collideConnected))
 (export "Constraint#set:collideConnected" (func $assembly/constraints/constraint/Constraint#set:collideConnected))
 (export "Constraint#constructor" (func $assembly/constraints/constraint/Constraint#constructor))
 (export "Constraint#update" (func $assembly/constraints/constraint/Constraint#update))
 (export "Constraint#setStiffness" (func $assembly/constraints/constraint/Constraint#setStiffness))
 (export "Constraint#setRelaxation" (func $assembly/constraints/constraint/Constraint#setRelaxation))
 (export "Constraint#setMaxBias" (func $assembly/constraints/constraint/Constraint#setMaxBias))
 (export "Constraint.DISTANCE" (global $assembly/constraints/constraint/Constraint.DISTANCE))
 (export "Constraint.GEAR" (global $assembly/constraints/constraint/Constraint.GEAR))
 (export "Constraint.LOCK" (global $assembly/constraints/constraint/Constraint.LOCK))
 (export "Constraint.PRISMATIC" (global $assembly/constraints/constraint/Constraint.PRISMATIC))
 (export "Constraint.REVOLUTE" (global $assembly/constraints/constraint/Constraint.REVOLUTE))
 (export "ContactEquation" (global $assembly/equations/contact-equation/ContactEquation))
 (export "ContactEquation#get:minForce" (func $assembly/equations/equation/Equation#get:minForce))
 (export "ContactEquation#set:minForce" (func $assembly/equations/equation/Equation#set:minForce))
 (export "ContactEquation#get:maxForce" (func $assembly/equations/equation/Equation#get:maxForce))
 (export "ContactEquation#set:maxForce" (func $assembly/equations/equation/Equation#set:maxForce))
 (export "ContactEquation#get:maxBias" (func $assembly/equations/equation/Equation#get:maxBias))
 (export "ContactEquation#set:maxBias" (func $assembly/equations/equation/Equation#set:maxBias))
 (export "ContactEquation#get:bodyA" (func $assembly/equations/equation/Equation#get:bodyA))
 (export "ContactEquation#set:bodyA" (func $assembly/equations/equation/Equation#set:bodyA))
 (export "ContactEquation#get:bodyB" (func $assembly/equations/equation/Equation#get:bodyB))
 (export "ContactEquation#set:bodyB" (func $assembly/equations/equation/Equation#set:bodyB))
 (export "ContactEquation#get:stiffness" (func $assembly/equations/equation/Equation#get:stiffness))
 (export "ContactEquation#set:stiffness" (func $assembly/equations/equation/Equation#set:stiffness))
 (export "ContactEquation#get:relaxation" (func $assembly/equations/equation/Equation#get:relaxation))
 (export "ContactEquation#set:relaxation" (func $assembly/equations/equation/Equation#set:relaxation))
 (export "ContactEquation#get:G" (func $assembly/equations/equation/Equation#get:G))
 (export "ContactEquation#set:G" (func $assembly/equations/equation/Equation#set:G))
 (export "ContactEquation#get:offset" (func $assembly/equations/equation/Equation#get:offset))
 (export "ContactEquation#set:offset" (func $assembly/equations/equation/Equation#set:offset))
 (export "ContactEquation#get:a" (func $assembly/equations/equation/Equation#get:a))
 (export "ContactEquation#set:a" (func $assembly/equations/equation/Equation#set:a))
 (export "ContactEquation#get:b" (func $assembly/equations/equation/Equation#get:b))
 (export "ContactEquation#set:b" (func $assembly/equations/equation/Equation#set:b))
 (export "ContactEquation#get:epsilon" (func $assembly/equations/equation/Equation#get:epsilon))
 (export "ContactEquation#set:epsilon" (func $assembly/equations/equation/Equation#set:epsilon))
 (export "ContactEquation#get:timeStep" (func $assembly/equations/equation/Equation#get:timeStep))
 (export "ContactEquation#set:timeStep" (func $assembly/equations/equation/Equation#set:timeStep))
 (export "ContactEquation#get:needsUpdate" (func $assembly/equations/equation/Equation#get:needsUpdate))
 (export "ContactEquation#set:needsUpdate" (func $assembly/equations/equation/Equation#set:needsUpdate))
 (export "ContactEquation#get:multiplier" (func $assembly/equations/equation/Equation#get:multiplier))
 (export "ContactEquation#set:multiplier" (func $assembly/equations/equation/Equation#set:multiplier))
 (export "ContactEquation#get:relativeVelocity" (func $assembly/equations/equation/Equation#get:relativeVelocity))
 (export "ContactEquation#set:relativeVelocity" (func $assembly/equations/equation/Equation#set:relativeVelocity))
 (export "ContactEquation#get:enabled" (func $assembly/equations/equation/Equation#get:enabled))
 (export "ContactEquation#set:enabled" (func $assembly/equations/equation/Equation#set:enabled))
 (export "ContactEquation#get:maxForceDt" (func $assembly/equations/equation/Equation#get:maxForceDt))
 (export "ContactEquation#set:maxForceDt" (func $assembly/equations/equation/Equation#set:maxForceDt))
 (export "ContactEquation#get:minForceDt" (func $assembly/equations/equation/Equation#get:minForceDt))
 (export "ContactEquation#set:minForceDt" (func $assembly/equations/equation/Equation#set:minForceDt))
 (export "ContactEquation#get:invC" (func $assembly/equations/equation/Equation#get:invC))
 (export "ContactEquation#set:invC" (func $assembly/equations/equation/Equation#set:invC))
 (export "ContactEquation#get:B" (func $assembly/equations/equation/Equation#get:B))
 (export "ContactEquation#set:B" (func $assembly/equations/equation/Equation#set:B))
 (export "ContactEquation#get:lambda" (func $assembly/equations/equation/Equation#get:lambda))
 (export "ContactEquation#set:lambda" (func $assembly/equations/equation/Equation#set:lambda))
 (export "ContactEquation#get:index" (func $assembly/equations/equation/Equation#get:index))
 (export "ContactEquation#set:index" (func $assembly/equations/equation/Equation#set:index))
 (export "ContactEquation#constructor" (func $assembly/equations/contact-equation/ContactEquation#constructor))
 (export "ContactEquation#computeGq" (func $assembly/equations/equation/Equation#computeGq))
 (export "ContactEquation#update" (func $assembly/equations/equation/Equation#update))
 (export "ContactEquation#gmult" (func $assembly/equations/equation/Equation#gmult))
 (export "ContactEquation#computeB" (func $assembly/equations/contact-equation/ContactEquation#computeB))
 (export "ContactEquation#computeGW" (func $assembly/equations/equation/Equation#computeGW))
 (export "ContactEquation#computeGWlambda" (func $assembly/equations/equation/Equation#computeGWlambda))
 (export "ContactEquation#computeGiMf" (func $assembly/equations/equation/Equation#computeGiMf))
 (export "ContactEquation#computeGiMGt" (func $assembly/equations/equation/Equation#computeGiMGt))
 (export "ContactEquation#updateJacobian" (func $assembly/equations/equation/Equation#updateJacobian))
 (export "ContactEquation#addToWlambda" (func $assembly/equations/equation/Equation#addToWlambda))
 (export "ContactEquation#computeInvC" (func $assembly/equations/equation/Equation#computeInvC))
 (export "ContactEquation#get:contactPointA" (func $assembly/equations/contact-equation/ContactEquation#get:contactPointA))
 (export "ContactEquation#set:contactPointA" (func $assembly/equations/contact-equation/ContactEquation#set:contactPointA))
 (export "ContactEquation#get:penetrationVec" (func $assembly/equations/contact-equation/ContactEquation#get:penetrationVec))
 (export "ContactEquation#set:penetrationVec" (func $assembly/equations/contact-equation/ContactEquation#set:penetrationVec))
 (export "ContactEquation#get:contactPointB" (func $assembly/equations/contact-equation/ContactEquation#get:contactPointB))
 (export "ContactEquation#set:contactPointB" (func $assembly/equations/contact-equation/ContactEquation#set:contactPointB))
 (export "ContactEquation#get:normalA" (func $assembly/equations/contact-equation/ContactEquation#get:normalA))
 (export "ContactEquation#set:normalA" (func $assembly/equations/contact-equation/ContactEquation#set:normalA))
 (export "ContactEquation#get:restitution" (func $assembly/equations/contact-equation/ContactEquation#get:restitution))
 (export "ContactEquation#set:restitution" (func $assembly/equations/contact-equation/ContactEquation#set:restitution))
 (export "ContactEquation#get:firstImpact" (func $assembly/equations/contact-equation/ContactEquation#get:firstImpact))
 (export "ContactEquation#set:firstImpact" (func $assembly/equations/contact-equation/ContactEquation#set:firstImpact))
 (export "ContactEquation#get:shapeA" (func $assembly/equations/contact-equation/ContactEquation#get:shapeA))
 (export "ContactEquation#set:shapeA" (func $assembly/equations/contact-equation/ContactEquation#set:shapeA))
 (export "ContactEquation#get:shapeB" (func $assembly/equations/contact-equation/ContactEquation#get:shapeB))
 (export "ContactEquation#set:shapeB" (func $assembly/equations/contact-equation/ContactEquation#set:shapeB))
 (export "ContactEquation#getVelocityAlongNormal" (func $assembly/equations/contact-equation/ContactEquation#getVelocityAlongNormal))
 (export "ContactEquationPool" (global $assembly/utils/contact-equation-pool/ContactEquationPool))
 (export "ContactEquationPool#get:objects" (func $assembly/utils/contact-equation-pool/ContactEquationPool#get:objects))
 (export "ContactEquationPool#set:objects" (func $assembly/utils/contact-equation-pool/ContactEquationPool#set:objects))
 (export "ContactEquationPool#constructor" (func $assembly/utils/contact-equation-pool/ContactEquationPool#constructor))
 (export "ContactEquationPool#resize" (func $assembly/utils/contact-equation-pool/ContactEquationPool#resize))
 (export "ContactEquationPool#get" (func $assembly/utils/contact-equation-pool/ContactEquationPool#get))
 (export "ContactEquationPool#release" (func $assembly/utils/contact-equation-pool/ContactEquationPool#release))
 (export "ContactEquationPool#create" (func $assembly/utils/contact-equation-pool/ContactEquationPool#create))
 (export "ContactEquationPool#destroy" (func $assembly/utils/contact-equation-pool/ContactEquationPool#destroy))
 (export "ContactMaterial" (global $assembly/material/contact-material/ContactMaterial))
 (export "ContactMaterial#get:id" (func $assembly/material/contact-material/ContactMaterial#get:id))
 (export "ContactMaterial#set:id" (func $assembly/material/contact-material/ContactMaterial#set:id))
 (export "ContactMaterial#get:materialA" (func $assembly/material/contact-material/ContactMaterial#get:materialA))
 (export "ContactMaterial#set:materialA" (func $assembly/material/contact-material/ContactMaterial#set:materialA))
 (export "ContactMaterial#get:materialB" (func $assembly/material/contact-material/ContactMaterial#get:materialB))
 (export "ContactMaterial#set:materialB" (func $assembly/material/contact-material/ContactMaterial#set:materialB))
 (export "ContactMaterial#get:friction" (func $assembly/material/contact-material/ContactMaterial#get:friction))
 (export "ContactMaterial#set:friction" (func $assembly/material/contact-material/ContactMaterial#set:friction))
 (export "ContactMaterial#get:restitution" (func $assembly/material/contact-material/ContactMaterial#get:restitution))
 (export "ContactMaterial#set:restitution" (func $assembly/material/contact-material/ContactMaterial#set:restitution))
 (export "ContactMaterial#get:stiffness" (func $assembly/material/contact-material/ContactMaterial#get:stiffness))
 (export "ContactMaterial#set:stiffness" (func $assembly/material/contact-material/ContactMaterial#set:stiffness))
 (export "ContactMaterial#get:relaxation" (func $assembly/material/contact-material/ContactMaterial#get:relaxation))
 (export "ContactMaterial#set:relaxation" (func $assembly/material/contact-material/ContactMaterial#set:relaxation))
 (export "ContactMaterial#get:frictionStiffness" (func $assembly/material/contact-material/ContactMaterial#get:frictionStiffness))
 (export "ContactMaterial#set:frictionStiffness" (func $assembly/material/contact-material/ContactMaterial#set:frictionStiffness))
 (export "ContactMaterial#get:frictionRelaxation" (func $assembly/material/contact-material/ContactMaterial#get:frictionRelaxation))
 (export "ContactMaterial#set:frictionRelaxation" (func $assembly/material/contact-material/ContactMaterial#set:frictionRelaxation))
 (export "ContactMaterial#get:surfaceVelocity" (func $assembly/material/contact-material/ContactMaterial#get:surfaceVelocity))
 (export "ContactMaterial#set:surfaceVelocity" (func $assembly/material/contact-material/ContactMaterial#set:surfaceVelocity))
 (export "ContactMaterial#get:contactSkinSize" (func $assembly/material/contact-material/ContactMaterial#get:contactSkinSize))
 (export "ContactMaterial#set:contactSkinSize" (func $assembly/material/contact-material/ContactMaterial#set:contactSkinSize))
 (export "ContactMaterial#constructor" (func $assembly/material/contact-material/ContactMaterial#constructor))
 (export "ContactMaterial.idCounter" (global $assembly/material/contact-material/ContactMaterial.idCounter))
 (export "Convex" (global $assembly/shapes/convex/Convex))
 (export "Convex#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Convex#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Convex#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Convex#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Convex#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Convex#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Convex#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Convex#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Convex#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Convex#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Convex#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Convex#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Convex#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Convex#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Convex#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Convex#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Convex#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Convex#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Convex#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Convex#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Convex#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Convex#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Convex#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Convex#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Convex#constructor" (func $assembly/shapes/convex/Convex#constructor))
 (export "Convex#computeMomentOfInertia" (func $assembly/shapes/convex/Convex#computeMomentOfInertia))
 (export "Convex#updateBoundingRadius" (func $assembly/shapes/convex/Convex#updateBoundingRadius))
 (export "Convex#updateArea" (func $assembly/shapes/convex/Convex#updateArea))
 (export "Convex#computeAABB" (func $assembly/shapes/convex/Convex#computeAABB))
 (export "Convex#raycast" (func $assembly/shapes/convex/Convex#raycast))
 (export "Convex#pointTest" (func $assembly/shapes/convex/Convex#pointTest))
 (export "Convex#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Convex#get:vertices" (func $assembly/shapes/convex/Convex#get:vertices))
 (export "Convex#set:vertices" (func $assembly/shapes/convex/Convex#set:vertices))
 (export "Convex#get:normals" (func $assembly/shapes/convex/Convex#get:normals))
 (export "Convex#set:normals" (func $assembly/shapes/convex/Convex#set:normals))
 (export "Convex#get:triangles" (func $assembly/shapes/convex/Convex#get:triangles))
 (export "Convex#set:triangles" (func $assembly/shapes/convex/Convex#set:triangles))
 (export "Convex#get:centerOfMass" (func $assembly/shapes/convex/Convex#get:centerOfMass))
 (export "Convex#set:centerOfMass" (func $assembly/shapes/convex/Convex#set:centerOfMass))
 (export "Convex#updateNormals" (func $assembly/shapes/convex/Convex#updateNormals))
 (export "Convex#projectOntoLocalAxis" (func $assembly/shapes/convex/Convex#projectOntoLocalAxis))
 (export "Convex#ConvexprojectOntoWorldAxis" (func $assembly/shapes/convex/Convex#ConvexprojectOntoWorldAxis))
 (export "Convex#updateTriangles" (func $assembly/shapes/convex/Convex#updateTriangles))
 (export "Convex#updateCenterOfMass" (func $assembly/shapes/convex/Convex#updateCenterOfMass))
 (export "Convex.triangleArea" (func $assembly/shapes/convex/Convex.triangleArea))
 (export "DistanceConstraint" (global $assembly/constraints/distance-constraint/DistanceConstraint))
 (export "DistanceConstraint#get:type" (func $assembly/constraints/constraint/Constraint#get:type))
 (export "DistanceConstraint#set:type" (func $assembly/constraints/constraint/Constraint#set:type))
 (export "DistanceConstraint#get:equations" (func $assembly/constraints/constraint/Constraint#get:equations))
 (export "DistanceConstraint#set:equations" (func $assembly/constraints/constraint/Constraint#set:equations))
 (export "DistanceConstraint#get:bodyA" (func $assembly/constraints/constraint/Constraint#get:bodyA))
 (export "DistanceConstraint#set:bodyA" (func $assembly/constraints/constraint/Constraint#set:bodyA))
 (export "DistanceConstraint#get:bodyB" (func $assembly/constraints/constraint/Constraint#get:bodyB))
 (export "DistanceConstraint#set:bodyB" (func $assembly/constraints/constraint/Constraint#set:bodyB))
 (export "DistanceConstraint#get:collideConnected" (func $assembly/constraints/constraint/Constraint#get:collideConnected))
 (export "DistanceConstraint#set:collideConnected" (func $assembly/constraints/constraint/Constraint#set:collideConnected))
 (export "DistanceConstraint#constructor" (func $assembly/constraints/distance-constraint/DistanceConstraint#constructor))
 (export "DistanceConstraint#update" (func $assembly/constraints/distance-constraint/DistanceConstraint#update))
 (export "DistanceConstraint#setStiffness" (func $assembly/constraints/constraint/Constraint#setStiffness))
 (export "DistanceConstraint#setRelaxation" (func $assembly/constraints/constraint/Constraint#setRelaxation))
 (export "DistanceConstraint#setMaxBias" (func $assembly/constraints/constraint/Constraint#setMaxBias))
 (export "DistanceConstraint#get:localAnchorA" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:localAnchorA))
 (export "DistanceConstraint#set:localAnchorA" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:localAnchorA))
 (export "DistanceConstraint#get:localAnchorB" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:localAnchorB))
 (export "DistanceConstraint#set:localAnchorB" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:localAnchorB))
 (export "DistanceConstraint#get:distance" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:distance))
 (export "DistanceConstraint#set:distance" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:distance))
 (export "DistanceConstraint#get:maxForce" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:maxForce))
 (export "DistanceConstraint#set:maxForce" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:maxForce))
 (export "DistanceConstraint#get:upperLimitEnabled" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:upperLimitEnabled))
 (export "DistanceConstraint#set:upperLimitEnabled" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:upperLimitEnabled))
 (export "DistanceConstraint#get:upperLimit" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:upperLimit))
 (export "DistanceConstraint#set:upperLimit" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:upperLimit))
 (export "DistanceConstraint#get:lowerLimitEnabled" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:lowerLimitEnabled))
 (export "DistanceConstraint#set:lowerLimitEnabled" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:lowerLimitEnabled))
 (export "DistanceConstraint#get:lowerLimit" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:lowerLimit))
 (export "DistanceConstraint#set:lowerLimit" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:lowerLimit))
 (export "DistanceConstraint#get:position" (func $assembly/constraints/distance-constraint/DistanceConstraint#get:position))
 (export "DistanceConstraint#set:position" (func $assembly/constraints/distance-constraint/DistanceConstraint#set:position))
 (export "DistanceConstraint#setMaxForce" (func $assembly/constraints/distance-constraint/DistanceConstraint#setMaxForce))
 (export "DistanceConstraint#getMaxForce" (func $assembly/constraints/distance-constraint/DistanceConstraint#getMaxForce))
 (export "Equation" (global $assembly/equations/equation/Equation))
 (export "Equation#get:minForce" (func $assembly/equations/equation/Equation#get:minForce))
 (export "Equation#set:minForce" (func $assembly/equations/equation/Equation#set:minForce))
 (export "Equation#get:maxForce" (func $assembly/equations/equation/Equation#get:maxForce))
 (export "Equation#set:maxForce" (func $assembly/equations/equation/Equation#set:maxForce))
 (export "Equation#get:maxBias" (func $assembly/equations/equation/Equation#get:maxBias))
 (export "Equation#set:maxBias" (func $assembly/equations/equation/Equation#set:maxBias))
 (export "Equation#get:bodyA" (func $assembly/equations/equation/Equation#get:bodyA))
 (export "Equation#set:bodyA" (func $assembly/equations/equation/Equation#set:bodyA))
 (export "Equation#get:bodyB" (func $assembly/equations/equation/Equation#get:bodyB))
 (export "Equation#set:bodyB" (func $assembly/equations/equation/Equation#set:bodyB))
 (export "Equation#get:stiffness" (func $assembly/equations/equation/Equation#get:stiffness))
 (export "Equation#set:stiffness" (func $assembly/equations/equation/Equation#set:stiffness))
 (export "Equation#get:relaxation" (func $assembly/equations/equation/Equation#get:relaxation))
 (export "Equation#set:relaxation" (func $assembly/equations/equation/Equation#set:relaxation))
 (export "Equation#get:G" (func $assembly/equations/equation/Equation#get:G))
 (export "Equation#set:G" (func $assembly/equations/equation/Equation#set:G))
 (export "Equation#get:offset" (func $assembly/equations/equation/Equation#get:offset))
 (export "Equation#set:offset" (func $assembly/equations/equation/Equation#set:offset))
 (export "Equation#get:a" (func $assembly/equations/equation/Equation#get:a))
 (export "Equation#set:a" (func $assembly/equations/equation/Equation#set:a))
 (export "Equation#get:b" (func $assembly/equations/equation/Equation#get:b))
 (export "Equation#set:b" (func $assembly/equations/equation/Equation#set:b))
 (export "Equation#get:epsilon" (func $assembly/equations/equation/Equation#get:epsilon))
 (export "Equation#set:epsilon" (func $assembly/equations/equation/Equation#set:epsilon))
 (export "Equation#get:timeStep" (func $assembly/equations/equation/Equation#get:timeStep))
 (export "Equation#set:timeStep" (func $assembly/equations/equation/Equation#set:timeStep))
 (export "Equation#get:needsUpdate" (func $assembly/equations/equation/Equation#get:needsUpdate))
 (export "Equation#set:needsUpdate" (func $assembly/equations/equation/Equation#set:needsUpdate))
 (export "Equation#get:multiplier" (func $assembly/equations/equation/Equation#get:multiplier))
 (export "Equation#set:multiplier" (func $assembly/equations/equation/Equation#set:multiplier))
 (export "Equation#get:relativeVelocity" (func $assembly/equations/equation/Equation#get:relativeVelocity))
 (export "Equation#set:relativeVelocity" (func $assembly/equations/equation/Equation#set:relativeVelocity))
 (export "Equation#get:enabled" (func $assembly/equations/equation/Equation#get:enabled))
 (export "Equation#set:enabled" (func $assembly/equations/equation/Equation#set:enabled))
 (export "Equation#get:maxForceDt" (func $assembly/equations/equation/Equation#get:maxForceDt))
 (export "Equation#set:maxForceDt" (func $assembly/equations/equation/Equation#set:maxForceDt))
 (export "Equation#get:minForceDt" (func $assembly/equations/equation/Equation#get:minForceDt))
 (export "Equation#set:minForceDt" (func $assembly/equations/equation/Equation#set:minForceDt))
 (export "Equation#get:invC" (func $assembly/equations/equation/Equation#get:invC))
 (export "Equation#set:invC" (func $assembly/equations/equation/Equation#set:invC))
 (export "Equation#get:B" (func $assembly/equations/equation/Equation#get:B))
 (export "Equation#set:B" (func $assembly/equations/equation/Equation#set:B))
 (export "Equation#get:lambda" (func $assembly/equations/equation/Equation#get:lambda))
 (export "Equation#set:lambda" (func $assembly/equations/equation/Equation#set:lambda))
 (export "Equation#get:index" (func $assembly/equations/equation/Equation#get:index))
 (export "Equation#set:index" (func $assembly/equations/equation/Equation#set:index))
 (export "Equation#constructor" (func $assembly/equations/equation/Equation#constructor))
 (export "Equation#computeGq" (func $assembly/equations/equation/Equation#computeGq))
 (export "Equation#update" (func $assembly/equations/equation/Equation#update))
 (export "Equation#gmult" (func $assembly/equations/equation/Equation#gmult))
 (export "Equation#computeB" (func $assembly/equations/equation/Equation#computeB))
 (export "Equation#computeGW" (func $assembly/equations/equation/Equation#computeGW))
 (export "Equation#computeGWlambda" (func $assembly/equations/equation/Equation#computeGWlambda))
 (export "Equation#computeGiMf" (func $assembly/equations/equation/Equation#computeGiMf))
 (export "Equation#computeGiMGt" (func $assembly/equations/equation/Equation#computeGiMGt))
 (export "Equation#updateJacobian" (func $assembly/equations/equation/Equation#updateJacobian))
 (export "Equation#addToWlambda" (func $assembly/equations/equation/Equation#addToWlambda))
 (export "Equation#computeInvC" (func $assembly/equations/equation/Equation#computeInvC))
 (export "Equation.DEFAULT_STIFFNESS" (global $assembly/equations/equation/Equation.DEFAULT_STIFFNESS))
 (export "Equation.DEFAULT_RELAXATION" (global $assembly/equations/equation/Equation.DEFAULT_RELAXATION))
 (export "EventEmitter" (global $assembly/events/event-emitter/EventEmitter))
 (export "EventEmitter#constructor" (func $assembly/events/event-emitter/EventEmitter#constructor))
 (export "EventEmitter#on" (func $assembly/events/event-emitter/EventEmitter#on))
 (export "EventEmitter#off" (func $assembly/events/event-emitter/EventEmitter#off))
 (export "EventEmitter#has" (func $assembly/events/event-emitter/EventEmitter#has))
 (export "EventEmitter#emit" (func $assembly/events/event-emitter/EventEmitter#emit))
 (export "FrictionEquation" (global $assembly/equations/friction-equation/FrictionEquation))
 (export "FrictionEquation#get:minForce" (func $assembly/equations/equation/Equation#get:minForce))
 (export "FrictionEquation#set:minForce" (func $assembly/equations/equation/Equation#set:minForce))
 (export "FrictionEquation#get:maxForce" (func $assembly/equations/equation/Equation#get:maxForce))
 (export "FrictionEquation#set:maxForce" (func $assembly/equations/equation/Equation#set:maxForce))
 (export "FrictionEquation#get:maxBias" (func $assembly/equations/equation/Equation#get:maxBias))
 (export "FrictionEquation#set:maxBias" (func $assembly/equations/equation/Equation#set:maxBias))
 (export "FrictionEquation#get:bodyA" (func $assembly/equations/equation/Equation#get:bodyA))
 (export "FrictionEquation#set:bodyA" (func $assembly/equations/equation/Equation#set:bodyA))
 (export "FrictionEquation#get:bodyB" (func $assembly/equations/equation/Equation#get:bodyB))
 (export "FrictionEquation#set:bodyB" (func $assembly/equations/equation/Equation#set:bodyB))
 (export "FrictionEquation#get:stiffness" (func $assembly/equations/equation/Equation#get:stiffness))
 (export "FrictionEquation#set:stiffness" (func $assembly/equations/equation/Equation#set:stiffness))
 (export "FrictionEquation#get:relaxation" (func $assembly/equations/equation/Equation#get:relaxation))
 (export "FrictionEquation#set:relaxation" (func $assembly/equations/equation/Equation#set:relaxation))
 (export "FrictionEquation#get:G" (func $assembly/equations/equation/Equation#get:G))
 (export "FrictionEquation#set:G" (func $assembly/equations/equation/Equation#set:G))
 (export "FrictionEquation#get:offset" (func $assembly/equations/equation/Equation#get:offset))
 (export "FrictionEquation#set:offset" (func $assembly/equations/equation/Equation#set:offset))
 (export "FrictionEquation#get:a" (func $assembly/equations/equation/Equation#get:a))
 (export "FrictionEquation#set:a" (func $assembly/equations/equation/Equation#set:a))
 (export "FrictionEquation#get:b" (func $assembly/equations/equation/Equation#get:b))
 (export "FrictionEquation#set:b" (func $assembly/equations/equation/Equation#set:b))
 (export "FrictionEquation#get:epsilon" (func $assembly/equations/equation/Equation#get:epsilon))
 (export "FrictionEquation#set:epsilon" (func $assembly/equations/equation/Equation#set:epsilon))
 (export "FrictionEquation#get:timeStep" (func $assembly/equations/equation/Equation#get:timeStep))
 (export "FrictionEquation#set:timeStep" (func $assembly/equations/equation/Equation#set:timeStep))
 (export "FrictionEquation#get:needsUpdate" (func $assembly/equations/equation/Equation#get:needsUpdate))
 (export "FrictionEquation#set:needsUpdate" (func $assembly/equations/equation/Equation#set:needsUpdate))
 (export "FrictionEquation#get:multiplier" (func $assembly/equations/equation/Equation#get:multiplier))
 (export "FrictionEquation#set:multiplier" (func $assembly/equations/equation/Equation#set:multiplier))
 (export "FrictionEquation#get:relativeVelocity" (func $assembly/equations/equation/Equation#get:relativeVelocity))
 (export "FrictionEquation#set:relativeVelocity" (func $assembly/equations/equation/Equation#set:relativeVelocity))
 (export "FrictionEquation#get:enabled" (func $assembly/equations/equation/Equation#get:enabled))
 (export "FrictionEquation#set:enabled" (func $assembly/equations/equation/Equation#set:enabled))
 (export "FrictionEquation#get:maxForceDt" (func $assembly/equations/equation/Equation#get:maxForceDt))
 (export "FrictionEquation#set:maxForceDt" (func $assembly/equations/equation/Equation#set:maxForceDt))
 (export "FrictionEquation#get:minForceDt" (func $assembly/equations/equation/Equation#get:minForceDt))
 (export "FrictionEquation#set:minForceDt" (func $assembly/equations/equation/Equation#set:minForceDt))
 (export "FrictionEquation#get:invC" (func $assembly/equations/equation/Equation#get:invC))
 (export "FrictionEquation#set:invC" (func $assembly/equations/equation/Equation#set:invC))
 (export "FrictionEquation#get:B" (func $assembly/equations/equation/Equation#get:B))
 (export "FrictionEquation#set:B" (func $assembly/equations/equation/Equation#set:B))
 (export "FrictionEquation#get:lambda" (func $assembly/equations/equation/Equation#get:lambda))
 (export "FrictionEquation#set:lambda" (func $assembly/equations/equation/Equation#set:lambda))
 (export "FrictionEquation#get:index" (func $assembly/equations/equation/Equation#get:index))
 (export "FrictionEquation#set:index" (func $assembly/equations/equation/Equation#set:index))
 (export "FrictionEquation#constructor" (func $assembly/equations/friction-equation/FrictionEquation#constructor))
 (export "FrictionEquation#computeGq" (func $assembly/equations/equation/Equation#computeGq))
 (export "FrictionEquation#update" (func $assembly/equations/equation/Equation#update))
 (export "FrictionEquation#gmult" (func $assembly/equations/equation/Equation#gmult))
 (export "FrictionEquation#computeB" (func $assembly/equations/friction-equation/FrictionEquation#computeB))
 (export "FrictionEquation#computeGW" (func $assembly/equations/equation/Equation#computeGW))
 (export "FrictionEquation#computeGWlambda" (func $assembly/equations/equation/Equation#computeGWlambda))
 (export "FrictionEquation#computeGiMf" (func $assembly/equations/equation/Equation#computeGiMf))
 (export "FrictionEquation#computeGiMGt" (func $assembly/equations/equation/Equation#computeGiMGt))
 (export "FrictionEquation#updateJacobian" (func $assembly/equations/equation/Equation#updateJacobian))
 (export "FrictionEquation#addToWlambda" (func $assembly/equations/equation/Equation#addToWlambda))
 (export "FrictionEquation#computeInvC" (func $assembly/equations/equation/Equation#computeInvC))
 (export "FrictionEquation#get:contactPointA" (func $assembly/equations/friction-equation/FrictionEquation#get:contactPointA))
 (export "FrictionEquation#set:contactPointA" (func $assembly/equations/friction-equation/FrictionEquation#set:contactPointA))
 (export "FrictionEquation#get:contactPointB" (func $assembly/equations/friction-equation/FrictionEquation#get:contactPointB))
 (export "FrictionEquation#set:contactPointB" (func $assembly/equations/friction-equation/FrictionEquation#set:contactPointB))
 (export "FrictionEquation#get:t" (func $assembly/equations/friction-equation/FrictionEquation#get:t))
 (export "FrictionEquation#set:t" (func $assembly/equations/friction-equation/FrictionEquation#set:t))
 (export "FrictionEquation#get:contactEquations" (func $assembly/equations/friction-equation/FrictionEquation#get:contactEquations))
 (export "FrictionEquation#set:contactEquations" (func $assembly/equations/friction-equation/FrictionEquation#set:contactEquations))
 (export "FrictionEquation#get:shapeA" (func $assembly/equations/friction-equation/FrictionEquation#get:shapeA))
 (export "FrictionEquation#set:shapeA" (func $assembly/equations/friction-equation/FrictionEquation#set:shapeA))
 (export "FrictionEquation#get:shapeB" (func $assembly/equations/friction-equation/FrictionEquation#get:shapeB))
 (export "FrictionEquation#set:shapeB" (func $assembly/equations/friction-equation/FrictionEquation#set:shapeB))
 (export "FrictionEquation#get:frictionCoefficient" (func $assembly/equations/friction-equation/FrictionEquation#get:frictionCoefficient))
 (export "FrictionEquation#set:frictionCoefficient" (func $assembly/equations/friction-equation/FrictionEquation#set:frictionCoefficient))
 (export "FrictionEquation#setSlipForce" (func $assembly/equations/friction-equation/FrictionEquation#setSlipForce))
 (export "FrictionEquation#getSlipForce" (func $assembly/equations/friction-equation/FrictionEquation#getSlipForce))
 (export "DistanceEquation" (global $assembly/equations/distance-equation/DistanceEquation))
 (export "DistanceEquation#get:minForce" (func $assembly/equations/equation/Equation#get:minForce))
 (export "DistanceEquation#set:minForce" (func $assembly/equations/equation/Equation#set:minForce))
 (export "DistanceEquation#get:maxForce" (func $assembly/equations/equation/Equation#get:maxForce))
 (export "DistanceEquation#set:maxForce" (func $assembly/equations/equation/Equation#set:maxForce))
 (export "DistanceEquation#get:maxBias" (func $assembly/equations/equation/Equation#get:maxBias))
 (export "DistanceEquation#set:maxBias" (func $assembly/equations/equation/Equation#set:maxBias))
 (export "DistanceEquation#get:bodyA" (func $assembly/equations/equation/Equation#get:bodyA))
 (export "DistanceEquation#set:bodyA" (func $assembly/equations/equation/Equation#set:bodyA))
 (export "DistanceEquation#get:bodyB" (func $assembly/equations/equation/Equation#get:bodyB))
 (export "DistanceEquation#set:bodyB" (func $assembly/equations/equation/Equation#set:bodyB))
 (export "DistanceEquation#get:stiffness" (func $assembly/equations/equation/Equation#get:stiffness))
 (export "DistanceEquation#set:stiffness" (func $assembly/equations/equation/Equation#set:stiffness))
 (export "DistanceEquation#get:relaxation" (func $assembly/equations/equation/Equation#get:relaxation))
 (export "DistanceEquation#set:relaxation" (func $assembly/equations/equation/Equation#set:relaxation))
 (export "DistanceEquation#get:G" (func $assembly/equations/equation/Equation#get:G))
 (export "DistanceEquation#set:G" (func $assembly/equations/equation/Equation#set:G))
 (export "DistanceEquation#get:offset" (func $assembly/equations/equation/Equation#get:offset))
 (export "DistanceEquation#set:offset" (func $assembly/equations/equation/Equation#set:offset))
 (export "DistanceEquation#get:a" (func $assembly/equations/equation/Equation#get:a))
 (export "DistanceEquation#set:a" (func $assembly/equations/equation/Equation#set:a))
 (export "DistanceEquation#get:b" (func $assembly/equations/equation/Equation#get:b))
 (export "DistanceEquation#set:b" (func $assembly/equations/equation/Equation#set:b))
 (export "DistanceEquation#get:epsilon" (func $assembly/equations/equation/Equation#get:epsilon))
 (export "DistanceEquation#set:epsilon" (func $assembly/equations/equation/Equation#set:epsilon))
 (export "DistanceEquation#get:timeStep" (func $assembly/equations/equation/Equation#get:timeStep))
 (export "DistanceEquation#set:timeStep" (func $assembly/equations/equation/Equation#set:timeStep))
 (export "DistanceEquation#get:needsUpdate" (func $assembly/equations/equation/Equation#get:needsUpdate))
 (export "DistanceEquation#set:needsUpdate" (func $assembly/equations/equation/Equation#set:needsUpdate))
 (export "DistanceEquation#get:multiplier" (func $assembly/equations/equation/Equation#get:multiplier))
 (export "DistanceEquation#set:multiplier" (func $assembly/equations/equation/Equation#set:multiplier))
 (export "DistanceEquation#get:relativeVelocity" (func $assembly/equations/equation/Equation#get:relativeVelocity))
 (export "DistanceEquation#set:relativeVelocity" (func $assembly/equations/equation/Equation#set:relativeVelocity))
 (export "DistanceEquation#get:enabled" (func $assembly/equations/equation/Equation#get:enabled))
 (export "DistanceEquation#set:enabled" (func $assembly/equations/equation/Equation#set:enabled))
 (export "DistanceEquation#get:maxForceDt" (func $assembly/equations/equation/Equation#get:maxForceDt))
 (export "DistanceEquation#set:maxForceDt" (func $assembly/equations/equation/Equation#set:maxForceDt))
 (export "DistanceEquation#get:minForceDt" (func $assembly/equations/equation/Equation#get:minForceDt))
 (export "DistanceEquation#set:minForceDt" (func $assembly/equations/equation/Equation#set:minForceDt))
 (export "DistanceEquation#get:invC" (func $assembly/equations/equation/Equation#get:invC))
 (export "DistanceEquation#set:invC" (func $assembly/equations/equation/Equation#set:invC))
 (export "DistanceEquation#get:B" (func $assembly/equations/equation/Equation#get:B))
 (export "DistanceEquation#set:B" (func $assembly/equations/equation/Equation#set:B))
 (export "DistanceEquation#get:lambda" (func $assembly/equations/equation/Equation#get:lambda))
 (export "DistanceEquation#set:lambda" (func $assembly/equations/equation/Equation#set:lambda))
 (export "DistanceEquation#get:index" (func $assembly/equations/equation/Equation#get:index))
 (export "DistanceEquation#set:index" (func $assembly/equations/equation/Equation#set:index))
 (export "DistanceEquation#constructor" (func $assembly/equations/distance-equation/DistanceEquation#constructor))
 (export "DistanceEquation#computeGq" (func $assembly/equations/distance-equation/DistanceEquation#computeGq))
 (export "DistanceEquation#update" (func $assembly/equations/equation/Equation#update))
 (export "DistanceEquation#gmult" (func $assembly/equations/equation/Equation#gmult))
 (export "DistanceEquation#computeB" (func $assembly/equations/equation/Equation#computeB))
 (export "DistanceEquation#computeGW" (func $assembly/equations/equation/Equation#computeGW))
 (export "DistanceEquation#computeGWlambda" (func $assembly/equations/equation/Equation#computeGWlambda))
 (export "DistanceEquation#computeGiMf" (func $assembly/equations/equation/Equation#computeGiMf))
 (export "DistanceEquation#computeGiMGt" (func $assembly/equations/equation/Equation#computeGiMGt))
 (export "DistanceEquation#updateJacobian" (func $assembly/equations/equation/Equation#updateJacobian))
 (export "DistanceEquation#addToWlambda" (func $assembly/equations/equation/Equation#addToWlambda))
 (export "DistanceEquation#computeInvC" (func $assembly/equations/equation/Equation#computeInvC))
 (export "DistanceEquation#get:distanceConstraint" (func $assembly/equations/distance-equation/DistanceEquation#get:distanceConstraint))
 (export "DistanceEquation#set:distanceConstraint" (func $assembly/equations/distance-equation/DistanceEquation#set:distanceConstraint))
 (export "DistanceEquation#get:r" (func $assembly/equations/distance-equation/DistanceEquation#get:r))
 (export "DistanceEquation#set:r" (func $assembly/equations/distance-equation/DistanceEquation#set:r))
 (export "DistanceEquation#get:ri" (func $assembly/equations/distance-equation/DistanceEquation#get:ri))
 (export "DistanceEquation#set:ri" (func $assembly/equations/distance-equation/DistanceEquation#set:ri))
 (export "DistanceEquation#get:rj" (func $assembly/equations/distance-equation/DistanceEquation#get:rj))
 (export "DistanceEquation#set:rj" (func $assembly/equations/distance-equation/DistanceEquation#set:rj))
 (export "FrictionEquationPool" (global $assembly/utils/friction-equation-pool/FrictionEquationPool))
 (export "FrictionEquationPool#get:objects" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#get:objects))
 (export "FrictionEquationPool#set:objects" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#set:objects))
 (export "FrictionEquationPool#constructor" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#constructor))
 (export "FrictionEquationPool#resize" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#resize))
 (export "FrictionEquationPool#get" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#get))
 (export "FrictionEquationPool#release" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#release))
 (export "FrictionEquationPool#create" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#create))
 (export "FrictionEquationPool#destroy" (func $assembly/utils/friction-equation-pool/FrictionEquationPool#destroy))
 (export "GSSolver" (global $assembly/solver/gs-solver/GSSolver))
 (export "GSSolver#constructor" (func $assembly/solver/gs-solver/GSSolver#constructor))
 (export "GSSolver#on" (func $assembly/events/event-emitter/EventEmitter#on))
 (export "GSSolver#off" (func $assembly/events/event-emitter/EventEmitter#off))
 (export "GSSolver#has" (func $assembly/events/event-emitter/EventEmitter#has))
 (export "GSSolver#emit" (func $assembly/events/event-emitter/EventEmitter#emit))
 (export "GSSolver#get:type" (func $assembly/solver/solver/Solver#get:type))
 (export "GSSolver#set:type" (func $assembly/solver/solver/Solver#set:type))
 (export "GSSolver#get:equations" (func $assembly/solver/solver/Solver#get:equations))
 (export "GSSolver#set:equations" (func $assembly/solver/solver/Solver#set:equations))
 (export "GSSolver#get:equationSortFunction" (func $assembly/solver/solver/Solver#get:equationSortFunction))
 (export "GSSolver#set:equationSortFunction" (func $assembly/solver/solver/Solver#set:equationSortFunction))
 (export "GSSolver#solve" (func $assembly/solver/gs-solver/GSSolver#solve))
 (export "GSSolver#sortEquations" (func $assembly/solver/solver/Solver#sortEquations))
 (export "GSSolver#addEquation" (func $assembly/solver/solver/Solver#addEquation))
 (export "GSSolver#addEquations" (func $assembly/solver/solver/Solver#addEquations))
 (export "GSSolver#removeEquation" (func $assembly/solver/solver/Solver#removeEquation))
 (export "GSSolver#removeAllEquations" (func $assembly/solver/solver/Solver#removeAllEquations))
 (export "GSSolver#get:iterations" (func $assembly/solver/gs-solver/GSSolver#get:iterations))
 (export "GSSolver#set:iterations" (func $assembly/solver/gs-solver/GSSolver#set:iterations))
 (export "GSSolver#get:tolerance" (func $assembly/solver/gs-solver/GSSolver#get:tolerance))
 (export "GSSolver#set:tolerance" (func $assembly/solver/gs-solver/GSSolver#set:tolerance))
 (export "GSSolver#get:frictionIterations" (func $assembly/solver/gs-solver/GSSolver#get:frictionIterations))
 (export "GSSolver#set:frictionIterations" (func $assembly/solver/gs-solver/GSSolver#set:frictionIterations))
 (export "GSSolver#get:usedIterations" (func $assembly/solver/gs-solver/GSSolver#get:usedIterations))
 (export "GSSolver#set:usedIterations" (func $assembly/solver/gs-solver/GSSolver#set:usedIterations))
 (export "Heightfield" (global $assembly/shapes/heightfield/Heightfield))
 (export "Heightfield#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Heightfield#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Heightfield#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Heightfield#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Heightfield#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Heightfield#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Heightfield#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Heightfield#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Heightfield#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Heightfield#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Heightfield#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Heightfield#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Heightfield#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Heightfield#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Heightfield#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Heightfield#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Heightfield#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Heightfield#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Heightfield#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Heightfield#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Heightfield#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Heightfield#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Heightfield#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Heightfield#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Heightfield#constructor" (func $assembly/shapes/heightfield/Heightfield#constructor))
 (export "Heightfield#computeMomentOfInertia" (func $assembly/shapes/heightfield/Heightfield#computeMomentOfInertia))
 (export "Heightfield#updateBoundingRadius" (func $assembly/shapes/heightfield/Heightfield#updateBoundingRadius))
 (export "Heightfield#updateArea" (func $assembly/shapes/heightfield/Heightfield#updateArea))
 (export "Heightfield#computeAABB" (func $assembly/shapes/heightfield/Heightfield#computeAABB))
 (export "Heightfield#raycast" (func $assembly/shapes/heightfield/Heightfield#raycast))
 (export "Heightfield#pointTest" (func $assembly/shapes/Shape/Shape#pointTest))
 (export "Heightfield#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Heightfield#get:heights" (func $assembly/shapes/heightfield/Heightfield#get:heights))
 (export "Heightfield#set:heights" (func $assembly/shapes/heightfield/Heightfield#set:heights))
 (export "Heightfield#get:maxValue" (func $assembly/shapes/heightfield/Heightfield#get:maxValue))
 (export "Heightfield#set:maxValue" (func $assembly/shapes/heightfield/Heightfield#set:maxValue))
 (export "Heightfield#get:minValue" (func $assembly/shapes/heightfield/Heightfield#get:minValue))
 (export "Heightfield#set:minValue" (func $assembly/shapes/heightfield/Heightfield#set:minValue))
 (export "Heightfield#get:elementWidth" (func $assembly/shapes/heightfield/Heightfield#get:elementWidth))
 (export "Heightfield#set:elementWidth" (func $assembly/shapes/heightfield/Heightfield#set:elementWidth))
 (export "Heightfield#updateMaxMinValues" (func $assembly/shapes/heightfield/Heightfield#updateMaxMinValues))
 (export "Heightfield#getLineSegment" (func $assembly/shapes/heightfield/Heightfield#getLineSegment))
 (export "Heightfield#getSegmentIndex" (func $assembly/shapes/heightfield/Heightfield#getSegmentIndex))
 (export "Heightfield#getClampedSegmentIndex" (func $assembly/shapes/heightfield/Heightfield#getClampedSegmentIndex))
 (export "Line" (global $assembly/shapes/line/Line))
 (export "Line#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Line#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Line#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Line#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Line#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Line#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Line#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Line#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Line#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Line#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Line#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Line#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Line#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Line#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Line#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Line#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Line#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Line#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Line#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Line#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Line#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Line#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Line#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Line#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Line#constructor" (func $assembly/shapes/line/Line#constructor))
 (export "Line#computeMomentOfInertia" (func $assembly/shapes/line/Line#computeMomentOfInertia))
 (export "Line#updateBoundingRadius" (func $assembly/shapes/line/Line#updateBoundingRadius))
 (export "Line#updateArea" (func $assembly/shapes/line/Line#updateArea))
 (export "Line#computeAABB" (func $assembly/shapes/line/Line#computeAABB))
 (export "Line#raycast" (func $assembly/shapes/line/Line#raycast))
 (export "Line#pointTest" (func $assembly/shapes/Shape/Shape#pointTest))
 (export "Line#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Line#get:length" (func $assembly/shapes/line/Line#get:length))
 (export "Line#set:length" (func $assembly/shapes/line/Line#set:length))
 (export "Material" (global $assembly/material/material/Material))
 (export "Material#get:id" (func $assembly/material/material/Material#get:id))
 (export "Material#set:id" (func $assembly/material/material/Material#set:id))
 (export "Material#constructor" (func $assembly/material/material/Material#constructor))
 (export "Material.idCounter" (global $assembly/material/material/Material.idCounter))
 (export "NaiveBroadphase" (global $assembly/collision/naive-broadphase/NaiveBroadphase))
 (export "NaiveBroadphase#get:type" (func $assembly/collision/broadphase/Broadphase#get:type))
 (export "NaiveBroadphase#set:type" (func $assembly/collision/broadphase/Broadphase#set:type))
 (export "NaiveBroadphase#get:result" (func $assembly/collision/broadphase/Broadphase#get:result))
 (export "NaiveBroadphase#set:result" (func $assembly/collision/broadphase/Broadphase#set:result))
 (export "NaiveBroadphase#get:world" (func $assembly/collision/broadphase/Broadphase#get:world))
 (export "NaiveBroadphase#set:world" (func $assembly/collision/broadphase/Broadphase#set:world))
 (export "NaiveBroadphase#get:boundingVolumeType" (func $assembly/collision/broadphase/Broadphase#get:boundingVolumeType))
 (export "NaiveBroadphase#set:boundingVolumeType" (func $assembly/collision/broadphase/Broadphase#set:boundingVolumeType))
 (export "NaiveBroadphase#constructor" (func $assembly/collision/naive-broadphase/NaiveBroadphase#constructor))
 (export "NaiveBroadphase#setWorld" (func $assembly/collision/broadphase/Broadphase#setWorld))
 (export "NaiveBroadphase#getCollisionPairs" (func $assembly/collision/naive-broadphase/NaiveBroadphase#getCollisionPairs))
 (export "NaiveBroadphase#boundingVolumeCheck" (func $assembly/collision/broadphase/Broadphase#boundingVolumeCheck))
 (export "NaiveBroadphase#aabbQuery" (func $assembly/collision/naive-broadphase/NaiveBroadphase#aabbQuery))
 (export "Particle" (global $assembly/shapes/particle/Particle))
 (export "Particle#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Particle#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Particle#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Particle#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Particle#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Particle#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Particle#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Particle#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Particle#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Particle#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Particle#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Particle#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Particle#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Particle#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Particle#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Particle#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Particle#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Particle#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Particle#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Particle#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Particle#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Particle#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Particle#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Particle#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Particle#constructor" (func $assembly/shapes/particle/Particle#constructor))
 (export "Particle#computeMomentOfInertia" (func $assembly/shapes/particle/Particle#computeMomentOfInertia))
 (export "Particle#updateBoundingRadius" (func $assembly/shapes/particle/Particle#updateBoundingRadius))
 (export "Particle#updateArea" (func $assembly/shapes/particle/Particle#updateArea))
 (export "Particle#computeAABB" (func $assembly/shapes/particle/Particle#computeAABB))
 (export "Particle#raycast" (func $assembly/shapes/particle/Particle#raycast))
 (export "Particle#pointTest" (func $assembly/shapes/Shape/Shape#pointTest))
 (export "Particle#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Plane" (global $assembly/shapes/plane/Plane))
 (export "Plane#get:body" (func $assembly/shapes/shape/Shape#get:body))
 (export "Plane#set:body" (func $assembly/shapes/shape/Shape#set:body))
 (export "Plane#get:position" (func $assembly/shapes/shape/Shape#get:position))
 (export "Plane#set:position" (func $assembly/shapes/shape/Shape#set:position))
 (export "Plane#get:angle" (func $assembly/shapes/shape/Shape#get:angle))
 (export "Plane#set:angle" (func $assembly/shapes/shape/Shape#set:angle))
 (export "Plane#get:type" (func $assembly/shapes/shape/Shape#get:type))
 (export "Plane#set:type" (func $assembly/shapes/shape/Shape#set:type))
 (export "Plane#get:id" (func $assembly/shapes/shape/Shape#get:id))
 (export "Plane#set:id" (func $assembly/shapes/shape/Shape#set:id))
 (export "Plane#get:boundingRadius" (func $assembly/shapes/shape/Shape#get:boundingRadius))
 (export "Plane#set:boundingRadius" (func $assembly/shapes/shape/Shape#set:boundingRadius))
 (export "Plane#get:collisionGroup" (func $assembly/shapes/shape/Shape#get:collisionGroup))
 (export "Plane#set:collisionGroup" (func $assembly/shapes/shape/Shape#set:collisionGroup))
 (export "Plane#get:collisionResponse" (func $assembly/shapes/shape/Shape#get:collisionResponse))
 (export "Plane#set:collisionResponse" (func $assembly/shapes/shape/Shape#set:collisionResponse))
 (export "Plane#get:collisionMask" (func $assembly/shapes/shape/Shape#get:collisionMask))
 (export "Plane#set:collisionMask" (func $assembly/shapes/shape/Shape#set:collisionMask))
 (export "Plane#get:material" (func $assembly/shapes/shape/Shape#get:material))
 (export "Plane#set:material" (func $assembly/shapes/shape/Shape#set:material))
 (export "Plane#get:area" (func $assembly/shapes/shape/Shape#get:area))
 (export "Plane#set:area" (func $assembly/shapes/shape/Shape#set:area))
 (export "Plane#get:sensor" (func $assembly/shapes/shape/Shape#get:sensor))
 (export "Plane#set:sensor" (func $assembly/shapes/shape/Shape#set:sensor))
 (export "Plane#constructor" (func $assembly/shapes/plane/Plane#constructor))
 (export "Plane#computeMomentOfInertia" (func $assembly/shapes/plane/Plane#computeMomentOfInertia))
 (export "Plane#updateBoundingRadius" (func $assembly/shapes/plane/Plane#updateBoundingRadius))
 (export "Plane#updateArea" (func $assembly/shapes/plane/Plane#updateArea))
 (export "Plane#computeAABB" (func $assembly/shapes/plane/Plane#computeAABB))
 (export "Plane#raycast" (func $assembly/shapes/plane/Plane#raycast))
 (export "Plane#pointTest" (func $assembly/shapes/plane/Plane#pointTest))
 (export "Plane#worldPointToLocal" (func $assembly/shapes/shape/Shape#worldPointToLocal))
 (export "Ray" (global $assembly/collision/ray/Ray))
 (export "Ray#get:from" (func $assembly/collision/ray/Ray#get:from))
 (export "Ray#set:from" (func $assembly/collision/ray/Ray#set:from))
 (export "Ray#get:to" (func $assembly/collision/ray/Ray#get:to))
 (export "Ray#set:to" (func $assembly/collision/ray/Ray#set:to))
 (export "Ray#get:checkCollisionResponse" (func $assembly/collision/ray/Ray#get:checkCollisionResponse))
 (export "Ray#set:checkCollisionResponse" (func $assembly/collision/ray/Ray#set:checkCollisionResponse))
 (export "Ray#get:skipBackfaces" (func $assembly/collision/ray/Ray#get:skipBackfaces))
 (export "Ray#set:skipBackfaces" (func $assembly/collision/ray/Ray#set:skipBackfaces))
 (export "Ray#get:collisionMask" (func $assembly/collision/ray/Ray#get:collisionMask))
 (export "Ray#set:collisionMask" (func $assembly/collision/ray/Ray#set:collisionMask))
 (export "Ray#get:collisionGroup" (func $assembly/collision/ray/Ray#get:collisionGroup))
 (export "Ray#set:collisionGroup" (func $assembly/collision/ray/Ray#set:collisionGroup))
 (export "Ray#get:mode" (func $assembly/collision/ray/Ray#get:mode))
 (export "Ray#set:mode" (func $assembly/collision/ray/Ray#set:mode))
 (export "Ray#get:callback" (func $assembly/collision/ray/Ray#get:callback))
 (export "Ray#set:callback" (func $assembly/collision/ray/Ray#set:callback))
 (export "Ray#get:direction" (func $assembly/collision/ray/Ray#get:direction))
 (export "Ray#set:direction" (func $assembly/collision/ray/Ray#set:direction))
 (export "Ray#get:length" (func $assembly/collision/ray/Ray#get:length))
 (export "Ray#set:length" (func $assembly/collision/ray/Ray#set:length))
 (export "Ray#constructor" (func $assembly/collision/ray/Ray#constructor))
 (export "Ray#update" (func $assembly/collision/ray/Ray#update))
 (export "Ray#intersectBodies" (func $assembly/collision/ray/Ray#intersectBodies))
 (export "Ray#intersectBody" (func $assembly/collision/ray/Ray#intersectBody))
 (export "Ray#intersectShape" (func $assembly/collision/ray/Ray#intersectShape))
 (export "Ray#getAABB" (func $assembly/collision/ray/Ray#getAABB))
 (export "Ray#reportIntersection" (func $assembly/collision/ray/Ray#reportIntersection))
 (export "Ray.CLOSEST" (global $assembly/collision/ray/Ray.CLOSEST))
 (export "Ray.ANY" (global $assembly/collision/ray/Ray.ANY))
 (export "Ray.ALL" (global $assembly/collision/ray/Ray.ALL))
 (export "RaycastResult" (global $assembly/collision/raycast-result/RaycastResult))
 (export "RaycastResult#get:normal" (func $assembly/collision/raycast-result/RaycastResult#get:normal))
 (export "RaycastResult#set:normal" (func $assembly/collision/raycast-result/RaycastResult#set:normal))
 (export "RaycastResult#get:shape" (func $assembly/collision/raycast-result/RaycastResult#get:shape))
 (export "RaycastResult#set:shape" (func $assembly/collision/raycast-result/RaycastResult#set:shape))
 (export "RaycastResult#get:body" (func $assembly/collision/raycast-result/RaycastResult#get:body))
 (export "RaycastResult#set:body" (func $assembly/collision/raycast-result/RaycastResult#set:body))
 (export "RaycastResult#get:faceIndex" (func $assembly/collision/raycast-result/RaycastResult#get:faceIndex))
 (export "RaycastResult#set:faceIndex" (func $assembly/collision/raycast-result/RaycastResult#set:faceIndex))
 (export "RaycastResult#get:fraction" (func $assembly/collision/raycast-result/RaycastResult#get:fraction))
 (export "RaycastResult#set:fraction" (func $assembly/collision/raycast-result/RaycastResult#set:fraction))
 (export "RaycastResult#get:isStopped" (func $assembly/collision/raycast-result/RaycastResult#get:isStopped))
 (export "RaycastResult#set:isStopped" (func $assembly/collision/raycast-result/RaycastResult#set:isStopped))
 (export "RaycastResult#constructor" (func $assembly/collision/raycast-result/RaycastResult#constructor))
 (export "RaycastResult#reset" (func $assembly/collision/raycast-result/RaycastResult#reset))
 (export "RaycastResult#getHitDistance" (func $assembly/collision/raycast-result/RaycastResult#getHitDistance))
 (export "RaycastResult#hasHit" (func $assembly/collision/raycast-result/RaycastResult#hasHit))
 (export "RaycastResult#getHitPoint" (func $assembly/collision/raycast-result/RaycastResult#getHitPoint))
 (export "RaycastResult#stop" (func $assembly/collision/raycast-result/RaycastResult#stop))
 (export "RaycastResult#shouldStop" (func $assembly/collision/raycast-result/RaycastResult#shouldStop))
 (export "RaycastResult#set" (func $assembly/collision/raycast-result/RaycastResult#set))
 (export "Box" (global $assembly/shapes/Box/Box))
 (export "Box#get:body" (func $assembly/shapes/Shape/Shape#get:body))
 (export "Box#set:body" (func $assembly/shapes/Shape/Shape#set:body))
 (export "Box#get:position" (func $assembly/shapes/Shape/Shape#get:position))
 (export "Box#set:position" (func $assembly/shapes/Shape/Shape#set:position))
 (export "Box#get:angle" (func $assembly/shapes/Shape/Shape#get:angle))
 (export "Box#set:angle" (func $assembly/shapes/Shape/Shape#set:angle))
 (export "Box#get:type" (func $assembly/shapes/Shape/Shape#get:type))
 (export "Box#set:type" (func $assembly/shapes/Shape/Shape#set:type))
 (export "Box#get:id" (func $assembly/shapes/Shape/Shape#get:id))
 (export "Box#set:id" (func $assembly/shapes/Shape/Shape#set:id))
 (export "Box#get:boundingRadius" (func $assembly/shapes/Shape/Shape#get:boundingRadius))
 (export "Box#set:boundingRadius" (func $assembly/shapes/Shape/Shape#set:boundingRadius))
 (export "Box#get:collisionGroup" (func $assembly/shapes/Shape/Shape#get:collisionGroup))
 (export "Box#set:collisionGroup" (func $assembly/shapes/Shape/Shape#set:collisionGroup))
 (export "Box#get:collisionResponse" (func $assembly/shapes/Shape/Shape#get:collisionResponse))
 (export "Box#set:collisionResponse" (func $assembly/shapes/Shape/Shape#set:collisionResponse))
 (export "Box#get:collisionMask" (func $assembly/shapes/Shape/Shape#get:collisionMask))
 (export "Box#set:collisionMask" (func $assembly/shapes/Shape/Shape#set:collisionMask))
 (export "Box#get:material" (func $assembly/shapes/Shape/Shape#get:material))
 (export "Box#set:material" (func $assembly/shapes/Shape/Shape#set:material))
 (export "Box#get:area" (func $assembly/shapes/Shape/Shape#get:area))
 (export "Box#set:area" (func $assembly/shapes/Shape/Shape#set:area))
 (export "Box#get:sensor" (func $assembly/shapes/Shape/Shape#get:sensor))
 (export "Box#set:sensor" (func $assembly/shapes/Shape/Shape#set:sensor))
 (export "Box#constructor" (func $assembly/shapes/Box/Box#constructor))
 (export "Box#computeMomentOfInertia" (func $assembly/shapes/Box/Box#computeMomentOfInertia))
 (export "Box#updateBoundingRadius" (func $assembly/shapes/Box/Box#updateBoundingRadius))
 (export "Box#updateArea" (func $assembly/shapes/Box/Box#updateArea))
 (export "Box#computeAABB" (func $assembly/shapes/Box/Box#computeAABB))
 (export "Box#raycast" (func $assembly/shapes/Convex/Convex#raycast))
 (export "Box#pointTest" (func $assembly/shapes/Box/Box#pointTest))
 (export "Box#worldPointToLocal" (func $assembly/shapes/Shape/Shape#worldPointToLocal))
 (export "Box#get:vertices" (func $assembly/shapes/Convex/Convex#get:vertices))
 (export "Box#set:vertices" (func $assembly/shapes/Convex/Convex#set:vertices))
 (export "Box#get:normals" (func $assembly/shapes/Convex/Convex#get:normals))
 (export "Box#set:normals" (func $assembly/shapes/Convex/Convex#set:normals))
 (export "Box#get:triangles" (func $assembly/shapes/Convex/Convex#get:triangles))
 (export "Box#set:triangles" (func $assembly/shapes/Convex/Convex#set:triangles))
 (export "Box#get:centerOfMass" (func $assembly/shapes/Convex/Convex#get:centerOfMass))
 (export "Box#set:centerOfMass" (func $assembly/shapes/Convex/Convex#set:centerOfMass))
 (export "Box#updateNormals" (func $assembly/shapes/Convex/Convex#updateNormals))
 (export "Box#projectOntoLocalAxis" (func $assembly/shapes/Convex/Convex#projectOntoLocalAxis))
 (export "Box#ConvexprojectOntoWorldAxis" (func $assembly/shapes/Convex/Convex#ConvexprojectOntoWorldAxis))
 (export "Box#updateTriangles" (func $assembly/shapes/Convex/Convex#updateTriangles))
 (export "Box#updateCenterOfMass" (func $assembly/shapes/Convex/Convex#updateCenterOfMass))
 (export "Box#get:width" (func $assembly/shapes/Box/Box#get:width))
 (export "Box#set:width" (func $assembly/shapes/Box/Box#set:width))
 (export "Box#get:height" (func $assembly/shapes/Box/Box#get:height))
 (export "Box#set:height" (func $assembly/shapes/Box/Box#set:height))
 (export "RotationalVelocityEquation" (global $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation))
 (export "RotationalVelocityEquation#get:minForce" (func $assembly/equations/Equation/Equation#get:minForce))
 (export "RotationalVelocityEquation#set:minForce" (func $assembly/equations/Equation/Equation#set:minForce))
 (export "RotationalVelocityEquation#get:maxForce" (func $assembly/equations/Equation/Equation#get:maxForce))
 (export "RotationalVelocityEquation#set:maxForce" (func $assembly/equations/Equation/Equation#set:maxForce))
 (export "RotationalVelocityEquation#get:maxBias" (func $assembly/equations/Equation/Equation#get:maxBias))
 (export "RotationalVelocityEquation#set:maxBias" (func $assembly/equations/Equation/Equation#set:maxBias))
 (export "RotationalVelocityEquation#get:bodyA" (func $assembly/equations/Equation/Equation#get:bodyA))
 (export "RotationalVelocityEquation#set:bodyA" (func $assembly/equations/Equation/Equation#set:bodyA))
 (export "RotationalVelocityEquation#get:bodyB" (func $assembly/equations/Equation/Equation#get:bodyB))
 (export "RotationalVelocityEquation#set:bodyB" (func $assembly/equations/Equation/Equation#set:bodyB))
 (export "RotationalVelocityEquation#get:stiffness" (func $assembly/equations/Equation/Equation#get:stiffness))
 (export "RotationalVelocityEquation#set:stiffness" (func $assembly/equations/Equation/Equation#set:stiffness))
 (export "RotationalVelocityEquation#get:relaxation" (func $assembly/equations/Equation/Equation#get:relaxation))
 (export "RotationalVelocityEquation#set:relaxation" (func $assembly/equations/Equation/Equation#set:relaxation))
 (export "RotationalVelocityEquation#get:G" (func $assembly/equations/Equation/Equation#get:G))
 (export "RotationalVelocityEquation#set:G" (func $assembly/equations/Equation/Equation#set:G))
 (export "RotationalVelocityEquation#get:offset" (func $assembly/equations/Equation/Equation#get:offset))
 (export "RotationalVelocityEquation#set:offset" (func $assembly/equations/Equation/Equation#set:offset))
 (export "RotationalVelocityEquation#get:a" (func $assembly/equations/Equation/Equation#get:a))
 (export "RotationalVelocityEquation#set:a" (func $assembly/equations/Equation/Equation#set:a))
 (export "RotationalVelocityEquation#get:b" (func $assembly/equations/Equation/Equation#get:b))
 (export "RotationalVelocityEquation#set:b" (func $assembly/equations/Equation/Equation#set:b))
 (export "RotationalVelocityEquation#get:epsilon" (func $assembly/equations/Equation/Equation#get:epsilon))
 (export "RotationalVelocityEquation#set:epsilon" (func $assembly/equations/Equation/Equation#set:epsilon))
 (export "RotationalVelocityEquation#get:timeStep" (func $assembly/equations/Equation/Equation#get:timeStep))
 (export "RotationalVelocityEquation#set:timeStep" (func $assembly/equations/Equation/Equation#set:timeStep))
 (export "RotationalVelocityEquation#get:needsUpdate" (func $assembly/equations/Equation/Equation#get:needsUpdate))
 (export "RotationalVelocityEquation#set:needsUpdate" (func $assembly/equations/Equation/Equation#set:needsUpdate))
 (export "RotationalVelocityEquation#get:multiplier" (func $assembly/equations/Equation/Equation#get:multiplier))
 (export "RotationalVelocityEquation#set:multiplier" (func $assembly/equations/Equation/Equation#set:multiplier))
 (export "RotationalVelocityEquation#get:relativeVelocity" (func $assembly/equations/Equation/Equation#get:relativeVelocity))
 (export "RotationalVelocityEquation#set:relativeVelocity" (func $assembly/equations/Equation/Equation#set:relativeVelocity))
 (export "RotationalVelocityEquation#get:enabled" (func $assembly/equations/Equation/Equation#get:enabled))
 (export "RotationalVelocityEquation#set:enabled" (func $assembly/equations/Equation/Equation#set:enabled))
 (export "RotationalVelocityEquation#get:maxForceDt" (func $assembly/equations/Equation/Equation#get:maxForceDt))
 (export "RotationalVelocityEquation#set:maxForceDt" (func $assembly/equations/Equation/Equation#set:maxForceDt))
 (export "RotationalVelocityEquation#get:minForceDt" (func $assembly/equations/Equation/Equation#get:minForceDt))
 (export "RotationalVelocityEquation#set:minForceDt" (func $assembly/equations/Equation/Equation#set:minForceDt))
 (export "RotationalVelocityEquation#get:invC" (func $assembly/equations/Equation/Equation#get:invC))
 (export "RotationalVelocityEquation#set:invC" (func $assembly/equations/Equation/Equation#set:invC))
 (export "RotationalVelocityEquation#get:B" (func $assembly/equations/Equation/Equation#get:B))
 (export "RotationalVelocityEquation#set:B" (func $assembly/equations/Equation/Equation#set:B))
 (export "RotationalVelocityEquation#get:lambda" (func $assembly/equations/Equation/Equation#get:lambda))
 (export "RotationalVelocityEquation#set:lambda" (func $assembly/equations/Equation/Equation#set:lambda))
 (export "RotationalVelocityEquation#get:index" (func $assembly/equations/Equation/Equation#get:index))
 (export "RotationalVelocityEquation#set:index" (func $assembly/equations/Equation/Equation#set:index))
 (export "RotationalVelocityEquation#constructor" (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#constructor))
 (export "RotationalVelocityEquation#computeGq" (func $assembly/equations/Equation/Equation#computeGq))
 (export "RotationalVelocityEquation#update" (func $assembly/equations/Equation/Equation#update))
 (export "RotationalVelocityEquation#gmult" (func $assembly/equations/Equation/Equation#gmult))
 (export "RotationalVelocityEquation#computeB" (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#computeB))
 (export "RotationalVelocityEquation#computeGW" (func $assembly/equations/Equation/Equation#computeGW))
 (export "RotationalVelocityEquation#computeGWlambda" (func $assembly/equations/Equation/Equation#computeGWlambda))
 (export "RotationalVelocityEquation#computeGiMf" (func $assembly/equations/Equation/Equation#computeGiMf))
 (export "RotationalVelocityEquation#computeGiMGt" (func $assembly/equations/Equation/Equation#computeGiMGt))
 (export "RotationalVelocityEquation#updateJacobian" (func $assembly/equations/Equation/Equation#updateJacobian))
 (export "RotationalVelocityEquation#addToWlambda" (func $assembly/equations/Equation/Equation#addToWlambda))
 (export "RotationalVelocityEquation#computeInvC" (func $assembly/equations/Equation/Equation#computeInvC))
 (export "RotationalVelocityEquation#get:ratio" (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#get:ratio))
 (export "RotationalVelocityEquation#set:ratio" (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#set:ratio))
 (export "Shape" (global $assembly/shapes/shape/Shape))
 (export "Shape#get:body" (func $assembly/shapes/shape/Shape#get:body))
 (export "Shape#set:body" (func $assembly/shapes/shape/Shape#set:body))
 (export "Shape#get:position" (func $assembly/shapes/shape/Shape#get:position))
 (export "Shape#set:position" (func $assembly/shapes/shape/Shape#set:position))
 (export "Shape#get:angle" (func $assembly/shapes/shape/Shape#get:angle))
 (export "Shape#set:angle" (func $assembly/shapes/shape/Shape#set:angle))
 (export "Shape#get:type" (func $assembly/shapes/shape/Shape#get:type))
 (export "Shape#set:type" (func $assembly/shapes/shape/Shape#set:type))
 (export "Shape#get:id" (func $assembly/shapes/shape/Shape#get:id))
 (export "Shape#set:id" (func $assembly/shapes/shape/Shape#set:id))
 (export "Shape#get:boundingRadius" (func $assembly/shapes/shape/Shape#get:boundingRadius))
 (export "Shape#set:boundingRadius" (func $assembly/shapes/shape/Shape#set:boundingRadius))
 (export "Shape#get:collisionGroup" (func $assembly/shapes/shape/Shape#get:collisionGroup))
 (export "Shape#set:collisionGroup" (func $assembly/shapes/shape/Shape#set:collisionGroup))
 (export "Shape#get:collisionResponse" (func $assembly/shapes/shape/Shape#get:collisionResponse))
 (export "Shape#set:collisionResponse" (func $assembly/shapes/shape/Shape#set:collisionResponse))
 (export "Shape#get:collisionMask" (func $assembly/shapes/shape/Shape#get:collisionMask))
 (export "Shape#set:collisionMask" (func $assembly/shapes/shape/Shape#set:collisionMask))
 (export "Shape#get:material" (func $assembly/shapes/shape/Shape#get:material))
 (export "Shape#set:material" (func $assembly/shapes/shape/Shape#set:material))
 (export "Shape#get:area" (func $assembly/shapes/shape/Shape#get:area))
 (export "Shape#set:area" (func $assembly/shapes/shape/Shape#set:area))
 (export "Shape#get:sensor" (func $assembly/shapes/shape/Shape#get:sensor))
 (export "Shape#set:sensor" (func $assembly/shapes/shape/Shape#set:sensor))
 (export "Shape#constructor" (func $assembly/shapes/shape/Shape#constructor))
 (export "Shape#computeMomentOfInertia" (func $assembly/shapes/shape/Shape#computeMomentOfInertia))
 (export "Shape#updateBoundingRadius" (func $assembly/shapes/shape/Shape#updateBoundingRadius))
 (export "Shape#updateArea" (func $assembly/shapes/shape/Shape#updateArea))
 (export "Shape#computeAABB" (func $assembly/shapes/shape/Shape#computeAABB))
 (export "Shape#raycast" (func $assembly/shapes/shape/Shape#raycast))
 (export "Shape#pointTest" (func $assembly/shapes/shape/Shape#pointTest))
 (export "Shape#worldPointToLocal" (func $assembly/shapes/shape/Shape#worldPointToLocal))
 (export "Shape.idCounter" (global $assembly/shapes/shape/Shape.idCounter))
 (export "Shape.CIRCLE" (global $assembly/shapes/shape/Shape.CIRCLE))
 (export "Shape.PARTICLE" (global $assembly/shapes/shape/Shape.PARTICLE))
 (export "Shape.PLANE" (global $assembly/shapes/shape/Shape.PLANE))
 (export "Shape.CONVEX" (global $assembly/shapes/shape/Shape.CONVEX))
 (export "Shape.LINE" (global $assembly/shapes/shape/Shape.LINE))
 (export "Shape.BOX" (global $assembly/shapes/shape/Shape.BOX))
 (export "Shape.CAPSULE" (global $assembly/shapes/shape/Shape.CAPSULE))
 (export "Shape.HEIGHTFIELD" (global $assembly/shapes/shape/Shape.HEIGHTFIELD))
 (export "Shape.AXISALIGNEDBOX" (global $assembly/shapes/shape/Shape.AXISALIGNEDBOX))
 (export "Solver" (global $assembly/solver/solver/Solver))
 (export "Solver#constructor" (func $assembly/solver/solver/Solver#constructor))
 (export "Solver#on" (func $assembly/events/event-emitter/EventEmitter#on))
 (export "Solver#off" (func $assembly/events/event-emitter/EventEmitter#off))
 (export "Solver#has" (func $assembly/events/event-emitter/EventEmitter#has))
 (export "Solver#emit" (func $assembly/events/event-emitter/EventEmitter#emit))
 (export "Solver#get:type" (func $assembly/solver/solver/Solver#get:type))
 (export "Solver#set:type" (func $assembly/solver/solver/Solver#set:type))
 (export "Solver#get:equations" (func $assembly/solver/solver/Solver#get:equations))
 (export "Solver#set:equations" (func $assembly/solver/solver/Solver#set:equations))
 (export "Solver#get:equationSortFunction" (func $assembly/solver/solver/Solver#get:equationSortFunction))
 (export "Solver#set:equationSortFunction" (func $assembly/solver/solver/Solver#set:equationSortFunction))
 (export "Solver#solve" (func $assembly/solver/solver/Solver#solve))
 (export "Solver#sortEquations" (func $assembly/solver/solver/Solver#sortEquations))
 (export "Solver#addEquation" (func $assembly/solver/solver/Solver#addEquation))
 (export "Solver#addEquations" (func $assembly/solver/solver/Solver#addEquations))
 (export "Solver#removeEquation" (func $assembly/solver/solver/Solver#removeEquation))
 (export "Solver#removeAllEquations" (func $assembly/solver/solver/Solver#removeAllEquations))
 (export "Solver.GS" (global $assembly/solver/solver/Solver.GS))
 (export "Spring" (global $assembly/objects/spring/Spring))
 (export "Spring#get:stiffness" (func $assembly/objects/spring/Spring#get:stiffness))
 (export "Spring#set:stiffness" (func $assembly/objects/spring/Spring#set:stiffness))
 (export "Spring#get:damping" (func $assembly/objects/spring/Spring#get:damping))
 (export "Spring#set:damping" (func $assembly/objects/spring/Spring#set:damping))
 (export "Spring#get:bodyA" (func $assembly/objects/spring/Spring#get:bodyA))
 (export "Spring#set:bodyA" (func $assembly/objects/spring/Spring#set:bodyA))
 (export "Spring#get:bodyB" (func $assembly/objects/spring/Spring#get:bodyB))
 (export "Spring#set:bodyB" (func $assembly/objects/spring/Spring#set:bodyB))
 (export "Spring#constructor" (func $assembly/objects/spring/Spring#constructor))
 (export "Spring#applyForce" (func $assembly/objects/spring/Spring#applyForce))
 (export "LinearSpring" (global $assembly/objects/linear-spring/LinearSpring))
 (export "LinearSpring#get:stiffness" (func $assembly/objects/spring/Spring#get:stiffness))
 (export "LinearSpring#set:stiffness" (func $assembly/objects/spring/Spring#set:stiffness))
 (export "LinearSpring#get:damping" (func $assembly/objects/spring/Spring#get:damping))
 (export "LinearSpring#set:damping" (func $assembly/objects/spring/Spring#set:damping))
 (export "LinearSpring#get:bodyA" (func $assembly/objects/spring/Spring#get:bodyA))
 (export "LinearSpring#set:bodyA" (func $assembly/objects/spring/Spring#set:bodyA))
 (export "LinearSpring#get:bodyB" (func $assembly/objects/spring/Spring#get:bodyB))
 (export "LinearSpring#set:bodyB" (func $assembly/objects/spring/Spring#set:bodyB))
 (export "LinearSpring#constructor" (func $assembly/objects/linear-spring/LinearSpring#constructor))
 (export "LinearSpring#applyForce" (func $assembly/objects/linear-spring/LinearSpring#applyForce))
 (export "LinearSpring#get:localAnchorA" (func $assembly/objects/linear-spring/LinearSpring#get:localAnchorA))
 (export "LinearSpring#set:localAnchorA" (func $assembly/objects/linear-spring/LinearSpring#set:localAnchorA))
 (export "LinearSpring#get:localAnchorB" (func $assembly/objects/linear-spring/LinearSpring#get:localAnchorB))
 (export "LinearSpring#set:localAnchorB" (func $assembly/objects/linear-spring/LinearSpring#set:localAnchorB))
 (export "LinearSpring#get:restLength" (func $assembly/objects/linear-spring/LinearSpring#get:restLength))
 (export "LinearSpring#set:restLength" (func $assembly/objects/linear-spring/LinearSpring#set:restLength))
 (export "LinearSpring#setWorldAnchorA" (func $assembly/objects/linear-spring/LinearSpring#setWorldAnchorA))
 (export "LinearSpring#setWorldAnchorB" (func $assembly/objects/linear-spring/LinearSpring#setWorldAnchorB))
 (export "LinearSpring#getWorldAnchorA" (func $assembly/objects/linear-spring/LinearSpring#getWorldAnchorA))
 (export "LinearSpring#getWorldAnchorB" (func $assembly/objects/linear-spring/LinearSpring#getWorldAnchorB))
 (export "RotationalSpring" (global $assembly/objects/rotational-spring/RotationalSpring))
 (export "RotationalSpring#get:stiffness" (func $assembly/objects/spring/Spring#get:stiffness))
 (export "RotationalSpring#set:stiffness" (func $assembly/objects/spring/Spring#set:stiffness))
 (export "RotationalSpring#get:damping" (func $assembly/objects/spring/Spring#get:damping))
 (export "RotationalSpring#set:damping" (func $assembly/objects/spring/Spring#set:damping))
 (export "RotationalSpring#get:bodyA" (func $assembly/objects/spring/Spring#get:bodyA))
 (export "RotationalSpring#set:bodyA" (func $assembly/objects/spring/Spring#set:bodyA))
 (export "RotationalSpring#get:bodyB" (func $assembly/objects/spring/Spring#get:bodyB))
 (export "RotationalSpring#set:bodyB" (func $assembly/objects/spring/Spring#set:bodyB))
 (export "RotationalSpring#constructor" (func $assembly/objects/rotational-spring/RotationalSpring#constructor))
 (export "RotationalSpring#applyForce" (func $assembly/objects/rotational-spring/RotationalSpring#applyForce))
 (export "RotationalSpring#get:restAngle" (func $assembly/objects/rotational-spring/RotationalSpring#get:restAngle))
 (export "RotationalSpring#set:restAngle" (func $assembly/objects/rotational-spring/RotationalSpring#set:restAngle))
 (export "Utils" (global $assembly/utils/utils/Utils))
 (export "vec2" (global $assembly/math/vec2/vec2))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  i32.const 1
  drop
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 408
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 16
  i32.const 16
  i32.add
  i32.const 16
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
   i32.const 1572
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
    local.get $2
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   local.set $5
   i32.const 0
   local.set $4
   local.get $5
   local.get $4
   i32.store offset=1568
   i32.const 0
   local.set $5
   loop $for-loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $0
     local.set $8
     local.get $5
     local.set $7
     i32.const 0
     local.set $6
     local.get $8
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store offset=4
     i32.const 0
     local.set $8
     loop $for-loop|1
      local.get $8
      i32.const 16
      i32.lt_u
      local.set $7
      local.get $7
      if
       local.get $0
       local.set $11
       local.get $5
       local.set $10
       local.get $8
       local.set $9
       i32.const 0
       local.set $6
       local.get $11
       local.get $10
       i32.const 4
       i32.shl
       local.get $9
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store offset=96
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|1
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $5
   i32.const 0
   drop
   local.get $0
   local.get $5
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 338
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 351
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 16
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  drop
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    drop
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 1
    drop
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     i32.const 1
     drop
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 512
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    i32.const 1
    drop
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 517
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  i32.const 1
  drop
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 520
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $assembly/math/vec2/Vec2#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:assembly/math/vec2
  i32.const 0
  call $assembly/math/vec2/Vec2#constructor
  global.set $assembly/math/vec2/vec2
 )
 (func $assembly/utils/utils/_Utils#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:assembly/utils/utils
  i32.const 0
  call $assembly/utils/utils/_Utils#constructor
  global.set $assembly/utils/utils/Utils
 )
 (func $start:assembly/equations/equation
  call $start:assembly/utils/utils
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 224
   i32.const 272
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 400
   i32.const 1187
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $assembly/math/vec2/Vec2#create (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  f32.const 0
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 0
  call $~lib/typedarray/Float32Array#__set
  local.get $1
 )
 (func $start:assembly/equations/contact-equation
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/equations/contact-equation/vi
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/equations/contact-equation/vj
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/equations/contact-equation/relVel
 )
 (func $start:assembly/utils/contact-equation-pool
  call $start:assembly/equations/contact-equation
 )
 (func $start:assembly/equations/friction-equation
  call $start:assembly/utils/contact-equation-pool
 )
 (func $start:assembly/solver/gs-solver
  call $start:assembly/equations/equation
  call $start:assembly/equations/friction-equation
 )
 (func $start:assembly/shapes/Circle
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Circle/Ray_intersectSphere_intersectionPoint
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Circle/Ray_intersectSphere_normal
 )
 (func $start:assembly/shapes/Convex
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/updateCenterOfMass_centroid
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/updateCenterOfMass_centroid_times_mass
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/updateCenterOfMass_a
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/updateCenterOfMass_b
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/updateCenterOfMass_c
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/tmpVec1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/intersectConvex_rayStart
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/intersectConvex_rayEnd
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/intersectConvex_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/pic_r0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/pic_r1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/Convex/tmpVec2
  global.get $assembly/shapes/Convex/tmpVec2
  call $~lib/rt/pure/__retain
  global.set $assembly/shapes/Convex/worldAxis
 )
 (func $assembly/math/vec2/Vec2#fromValues (param $0 i32) (param $1 f32) (param $2 f32) (result i32)
  (local $3 i32)
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Float32Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#__set
  local.get $3
  i32.const 1
  local.get $2
  call $~lib/typedarray/Float32Array#__set
  local.get $3
 )
 (func $start:assembly/shapes/capsule
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/capsule/intersectCapsule_hitPointWorld
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/capsule/intersectCapsule_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/capsule/intersectCapsule_l0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/capsule/intersectCapsule_l1
  global.get $assembly/math/vec2/vec2
  f32.const 0
  f32.const 1
  call $assembly/math/vec2/Vec2#fromValues
  global.set $assembly/shapes/capsule/intersectCapsule_unit_y
 )
 (func $start:assembly/shapes/plane
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/plane/intersectPlane_planePointToFrom
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/plane/intersectPlane_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/plane/intersectPlane_len
 )
 (func $start:assembly/shapes/line
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/line/raycast_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/line/raycast_l0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/line/raycast_l1
  global.get $assembly/math/vec2/vec2
  f32.const 0
  f32.const 1
  call $assembly/math/vec2/Vec2#fromValues
  global.set $assembly/shapes/line/raycast_unit_y
 )
 (func $start:assembly/shapes/heightfield
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/heightfield/intersectHeightfield_worldNormal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/heightfield/intersectHeightfield_l0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/heightfield/intersectHeightfield_l1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/heightfield/intersectHeightfield_localFrom
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/heightfield/intersectHeightfield_localTo
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $~lib/rt/__allocArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/rt/__allocBuffer
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/typedarray/Float32Array#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 400
   i32.const 1176
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $assembly/math/vec2/Vec2#copy (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/Shape/Shape#updateBoundingRadius (param $0 i32) (result f32)
  unreachable
 )
 (func $assembly/shapes/Shape/Shape#updateArea (param $0 i32) (result f32)
  unreachable
 )
 (func $assembly/shapes/Shape/Shape#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 41
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  f32.const 0
  f32.store offset=20
  local.get $0
  i32.const 1
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store8 offset=26
  local.get $0
  i32.const 1
  i32.store16 offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  i32.const 0
  i32.store8 offset=40
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  if
   local.get $2
   i32.load
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   i32.const 0
   i32.ne
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=4
    local.get $3
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $0
   local.get $2
   f32.load offset=4
   f32.store offset=8
   local.get $0
   local.get $1
   i32.store16 offset=12
   local.get $0
   local.get $2
   i32.load16_s offset=8
   i32.store16 offset=24
   local.get $0
   local.get $2
   i32.load8_u offset=10
   i32.store8 offset=26
   local.get $0
   local.get $2
   i32.load16_s offset=12
   i32.store16 offset=28
   local.get $0
   local.tee $4
   local.get $2
   i32.load offset=16
   local.tee $5
   local.get $4
   i32.load offset=32
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=32
   local.get $0
   local.get $2
   i32.load8_u offset=20
   i32.store8 offset=40
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  global.get $assembly/shapes/Shape/Shape.idCounter
  i32.const 1
  i32.add
  global.set $assembly/shapes/Shape/Shape.idCounter
  global.get $assembly/shapes/Shape/Shape.idCounter
  i32.store offset=16
  local.get $0
  i32.load16_u offset=12
  if
   local.get $0
   call $assembly/shapes/Shape/Shape#updateBoundingRadius@virtual
   drop
  end
  local.get $0
  call $assembly/shapes/Shape/Shape#updateArea@virtual
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/array/Array<~lib/typedarray/Float32Array>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Float32Array>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Float32Array>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/math/vec2/Vec2#clone (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 1
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 580
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $3
  local.get $4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  global.get $~lib/heap/__heap_base
  i32.ge_u
  if
   i32.const 0
   drop
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 224
    i32.const 560
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Float32Array>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/math/vec2/Vec2#squaredLength (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $2
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $2
  local.get $2
  f32.mul
  local.get $3
  local.get $3
  f32.mul
  f32.add
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/shapes/Convex/Convex#updateBoundingRadius (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  f32.const 0
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 0
   i32.eq
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.ne
   local.set $6
   local.get $6
   if
    global.get $assembly/math/vec2/vec2
    local.get $1
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.tee $7
    call $assembly/math/vec2/Vec2#squaredLength
    local.set $3
    local.get $3
    local.get $2
    f32.gt
    if
     local.get $3
     local.set $2
    end
    local.get $7
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $2
  local.set $3
  local.get $3
  f32.sqrt
  f32.store offset=20
  local.get $0
  f32.load offset=20
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#set:length (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $4
   local.get $3
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $5
   loop $do-continue|0
    local.get $4
    i32.load
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 4
    i32.add
    local.tee $4
    local.get $5
    i32.lt_u
    local.set $6
    local.get $6
    br_if $do-continue|0
   end
  else
   local.get $0
   local.get $1
   i32.const 2
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<f32>#push (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  f32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<f32>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 1
  call $~lib/array/ensureSize
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $1
  i32.store16
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<u16>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<f32>#__uget (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $assembly/math/polyk/_convex (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 f32) (result i32)
  local.get $1
  local.get $3
  f32.sub
  local.get $4
  local.get $2
  f32.sub
  f32.mul
  local.get $2
  local.get $0
  f32.sub
  local.get $5
  local.get $3
  f32.sub
  f32.mul
  f32.add
  f32.const 0
  f32.ge
 )
 (func $assembly/math/polyk/_PointInTriangle (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 f32) (param $6 f32) (param $7 f32) (result i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  local.get $6
  local.get $2
  f32.sub
  local.set $8
  local.get $7
  local.get $3
  f32.sub
  local.set $9
  local.get $4
  local.get $2
  f32.sub
  local.set $10
  local.get $5
  local.get $3
  f32.sub
  local.set $11
  local.get $0
  local.get $2
  f32.sub
  local.set $12
  local.get $1
  local.get $3
  f32.sub
  local.set $13
  local.get $8
  local.get $8
  f32.mul
  local.get $9
  local.get $9
  f32.mul
  f32.add
  local.set $14
  local.get $8
  local.get $10
  f32.mul
  local.get $9
  local.get $11
  f32.mul
  f32.add
  local.set $15
  local.get $8
  local.get $12
  f32.mul
  local.get $9
  local.get $13
  f32.mul
  f32.add
  local.set $16
  local.get $10
  local.get $10
  f32.mul
  local.get $11
  local.get $11
  f32.mul
  f32.add
  local.set $17
  local.get $10
  local.get $12
  f32.mul
  local.get $11
  local.get $13
  f32.mul
  f32.add
  local.set $18
  f32.const 1
  local.get $14
  local.get $17
  f32.mul
  local.get $15
  local.get $15
  f32.mul
  f32.sub
  f32.div
  local.set $19
  local.get $17
  local.get $16
  f32.mul
  local.get $15
  local.get $18
  f32.mul
  f32.sub
  local.get $19
  f32.mul
  local.set $20
  local.get $14
  local.get $18
  f32.mul
  local.get $15
  local.get $16
  f32.mul
  f32.sub
  local.get $19
  f32.mul
  local.set $21
  local.get $20
  f32.const 0
  f32.ge
  if (result i32)
   local.get $21
   f32.const 0
   f32.ge
  else
   i32.const 0
  end
  if (result i32)
   local.get $20
   local.get $21
   f32.add
   f32.const 1
   f32.lt
  else
   i32.const 0
  end
 )
 (func $~lib/array/Array<u16>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 1
  i32.const 64
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $assembly/math/polyk/Triangulate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 f32)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  (local $27 f32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<f32>#get:length
  i32.const 1
  i32.shr_s
  local.set $1
  local.get $1
  i32.const 65535
  i32.and
  i32.const 3
  i32.lt_u
  if
   i32.const 0
   i32.const 1
   i32.const 64
   i32.const 736
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  i32.const 1
  i32.const 64
  i32.const 752
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 1
  i32.const 64
  i32.const 768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.const 65535
   i32.and
   local.get $1
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $6
   local.get $6
   if
    local.get $4
    local.get $3
    call $~lib/array/Array<u16>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $3
  local.get $1
  local.set $6
  block $while-break|5
   loop $while-continue|5
    local.get $6
    i32.const 65535
    i32.and
    i32.const 3
    i32.gt_u
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $3
     i32.const 0
     i32.add
     i32.const 65535
     i32.and
     local.get $6
     i32.const 65535
     i32.and
     i32.rem_u
     call $~lib/array/Array<u16>#__get
     local.set $18
     local.get $4
     local.get $3
     i32.const 1
     i32.add
     i32.const 65535
     i32.and
     local.get $6
     i32.const 65535
     i32.and
     i32.rem_u
     call $~lib/array/Array<u16>#__get
     local.set $20
     local.get $4
     local.get $3
     i32.const 2
     i32.add
     i32.const 65535
     i32.and
     local.get $6
     i32.const 65535
     i32.and
     i32.rem_u
     call $~lib/array/Array<u16>#__get
     local.set $21
     local.get $0
     i32.const 2
     local.get $18
     i32.mul
     call $~lib/array/Array<f32>#__get
     local.set $22
     local.get $0
     i32.const 2
     local.get $18
     i32.mul
     i32.const 1
     i32.add
     call $~lib/array/Array<f32>#__get
     local.set $23
     local.get $0
     i32.const 2
     local.get $20
     i32.mul
     call $~lib/array/Array<f32>#__get
     local.set $24
     local.get $0
     i32.const 2
     local.get $20
     i32.mul
     i32.const 1
     i32.add
     call $~lib/array/Array<f32>#__get
     local.set $25
     local.get $0
     i32.const 2
     local.get $21
     i32.mul
     call $~lib/array/Array<f32>#__get
     local.set $26
     local.get $0
     i32.const 2
     local.get $21
     i32.mul
     i32.const 1
     i32.add
     call $~lib/array/Array<f32>#__get
     local.set $27
     i32.const 0
     local.set $28
     local.get $22
     local.get $23
     local.get $24
     local.get $25
     local.get $26
     local.get $27
     call $assembly/math/polyk/_convex
     if
      i32.const 1
      local.set $28
      i32.const 0
      local.set $29
      block $for-break7
       loop $for-loop|7
        local.get $29
        i32.const 65535
        i32.and
        local.get $6
        i32.const 65535
        i32.and
        i32.lt_u
        local.set $31
        local.get $31
        if
         block $for-continue|7
          local.get $4
          local.get $29
          i32.const 65535
          i32.and
          call $~lib/array/Array<u16>#__get
          local.set $32
          local.get $32
          local.get $18
          i32.eq
          if (result i32)
           i32.const 1
          else
           local.get $32
           local.get $20
           i32.eq
          end
          if (result i32)
           i32.const 1
          else
           local.get $32
           local.get $21
           i32.eq
          end
          if
           br $for-continue|7
          end
          local.get $0
          i32.const 2
          local.get $32
          i32.mul
          call $~lib/array/Array<f32>#__get
          local.get $0
          i32.const 2
          local.get $32
          i32.mul
          i32.const 1
          i32.add
          call $~lib/array/Array<f32>#__get
          local.get $22
          local.get $23
          local.get $24
          local.get $25
          local.get $26
          local.get $27
          call $assembly/math/polyk/_PointInTriangle
          if
           i32.const 0
           local.set $28
           br $for-break7
          end
         end
         local.get $29
         i32.const 1
         i32.add
         local.set $29
         br $for-loop|7
        end
       end
      end
     end
     local.get $28
     if
      local.get $2
      local.get $18
      call $~lib/array/Array<u16>#push
      drop
      local.get $2
      local.get $20
      call $~lib/array/Array<u16>#push
      drop
      local.get $2
      local.get $21
      call $~lib/array/Array<u16>#push
      drop
      local.get $4
      local.get $3
      i32.const 1
      i32.add
      i32.const 65535
      i32.and
      local.get $6
      i32.const 65535
      i32.and
      i32.rem_u
      i32.const 1
      call $~lib/array/Array<u16>#splice
      call $~lib/rt/pure/__release
      local.get $6
      i32.const 1
      i32.sub
      local.set $6
      i32.const 0
      local.set $3
     else
      local.get $3
      local.tee $29
      i32.const 1
      i32.add
      local.set $3
      local.get $29
      i32.const 65535
      i32.and
      i32.const 3
      local.get $6
      i32.mul
      i32.const 65535
      i32.and
      i32.gt_u
      if
       br $while-break|5
      end
     end
     br $while-continue|5
    end
   end
  end
  local.get $2
  local.get $4
  i32.const 0
  call $~lib/array/Array<u16>#__get
  call $~lib/array/Array<u16>#push
  drop
  local.get $2
  local.get $4
  i32.const 1
  call $~lib/array/Array<u16>#__get
  call $~lib/array/Array<u16>#push
  drop
  local.get $2
  local.get $4
  i32.const 2
  call $~lib/array/Array<u16>#__get
  call $~lib/array/Array<u16>#push
  drop
  local.get $2
  local.set $7
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/array/Array<u16>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/typedarray/Uint16Array#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 61
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint16Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 400
   i32.const 547
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/shapes/Convex/Convex#updateTriangles (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=52
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint16Array>#set:length
  i32.const 0
  i32.const 2
  i32.const 63
  i32.const 720
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 65535
   i32.and
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $0
    i32.load offset=44
    local.get $1
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $5
    local.get $2
    local.get $5
    i32.const 0
    call $~lib/typedarray/Float32Array#__get
    call $~lib/array/Array<f32>#push
    drop
    local.get $2
    local.get $5
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    call $~lib/array/Array<f32>#push
    drop
    local.get $5
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  local.get $2
  call $assembly/math/polyk/Triangulate
  local.set $1
  i32.const 0
  local.set $4
  loop $for-loop|3
   local.get $4
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<u16>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $1
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $8
    local.get $1
    local.get $4
    i32.const 1
    i32.add
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $7
    local.get $1
    local.get $4
    i32.const 2
    i32.add
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $6
    i32.const 0
    i32.const 3
    call $~lib/typedarray/Uint16Array#constructor
    local.set $10
    local.get $10
    i32.const 0
    local.get $8
    call $~lib/typedarray/Uint16Array#__set
    local.get $10
    i32.const 1
    local.get $7
    call $~lib/typedarray/Uint16Array#__set
    local.get $10
    i32.const 2
    local.get $6
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.load offset=52
    local.get $10
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#push
    drop
    local.get $10
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 3
    i32.add
    local.set $4
    br $for-loop|3
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/typedarray/Uint16Array>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint16Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 400
   i32.const 536
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $assembly/shapes/Convex/Convex.triangleArea (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  f32.sub
  f32.const 0.5
  f32.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/Convex/Convex#updateArea (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  local.get $0
  i32.load offset=44
  i32.eqz
  if
   f32.const 0
   return
  end
  local.get $0
  call $assembly/shapes/Convex/Convex#updateTriangles
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint16Array>#get:length
   i32.ne
   local.set $4
   local.get $4
   if
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#__get
    local.set $5
    local.get $2
    local.get $5
    i32.const 0
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $6
    local.get $2
    local.get $5
    i32.const 1
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $7
    local.get $2
    local.get $5
    i32.const 2
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $8
    local.get $6
    local.get $7
    local.get $8
    call $assembly/shapes/Convex/Convex.triangleArea
    local.set $9
    local.get $0
    local.get $0
    f32.load offset=36
    local.get $9
    f32.add
    f32.store offset=36
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  f32.load offset=36
  local.set $9
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/math/vec2/Vec2#subtract (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/math/vec2/Vec2#rotate90cw (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $1
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $3
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $5
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/math/vec2/Vec2#normalize (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $3
  local.get $3
  f32.mul
  local.get $4
  local.get $4
  f32.mul
  f32.add
  local.set $5
  local.get $5
  f32.const 0
  f32.gt
  if
   f32.const 1
   local.get $5
   local.set $6
   local.get $6
   f32.sqrt
   f32.div
   local.set $5
   local.get $1
   i32.const 0
   local.get $2
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $5
   f32.mul
   call $~lib/typedarray/Float32Array#__set
   local.get $1
   i32.const 1
   local.get $2
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $5
   f32.mul
   call $~lib/typedarray/Float32Array#__set
  end
  local.get $1
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $assembly/shapes/Convex/Convex#updateNormals (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=48
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $5
    local.get $1
    local.get $3
    i32.const 1
    i32.add
    local.get $1
    call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
    i32.rem_s
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $6
    local.get $2
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $7
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $6
    local.get $5
    call $assembly/math/vec2/Vec2#subtract
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $7
    call $assembly/math/vec2/Vec2#rotate90cw
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $7
    call $assembly/math/vec2/Vec2#normalize
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/math/vec2/Vec2#set (param $0 i32) (param $1 i32) (param $2 f32) (param $3 f32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
 )
 (func $assembly/math/vec2/Vec2#add (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/math/vec2/Vec2#scale (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/math/vec2/Vec2#centroid (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $1
  local.get $4
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $1
  f32.const 1
  f32.const 3
  f32.div
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  local.get $1
  local.set $5
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/shapes/Convex/Convex#updateCenterOfMass (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 i32)
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=56
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/shapes/Convex/updateCenterOfMass_centroid
  call $~lib/rt/pure/__retain
  local.set $4
  global.get $assembly/shapes/Convex/updateCenterOfMass_a
  call $~lib/rt/pure/__retain
  local.set $5
  global.get $assembly/shapes/Convex/updateCenterOfMass_b
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/Convex/updateCenterOfMass_c
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/Convex/updateCenterOfMass_centroid_times_mass
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/math/vec2/vec2
  local.get $3
  f32.const 0
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  f32.const 0
  local.set $9
  i32.const 0
  local.set $10
  loop $for-loop|1
   local.get $10
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint16Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $15
   local.get $15
   if
    local.get $1
    local.get $10
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#__get
    local.set $14
    local.get $2
    local.get $14
    i32.const 0
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $13
    local.get $2
    local.get $14
    i32.const 1
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $12
    local.get $2
    local.get $14
    i32.const 2
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $17
    global.get $assembly/math/vec2/vec2
    local.get $4
    local.get $13
    local.get $12
    local.get $17
    call $assembly/math/vec2/Vec2#centroid
    call $~lib/rt/pure/__release
    local.get $13
    local.get $12
    local.get $17
    call $assembly/shapes/Convex/Convex.triangleArea
    local.set $16
    local.get $9
    local.get $16
    f32.add
    local.set $9
    global.get $assembly/math/vec2/vec2
    local.get $8
    local.get $4
    local.get $16
    call $assembly/math/vec2/Vec2#scale
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $3
    local.get $3
    local.get $8
    call $assembly/math/vec2/Vec2#add
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $17
    call $~lib/rt/pure/__release
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|1
   end
  end
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $3
  f32.const 1
  local.get $9
  f32.div
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Convex/Convex#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.eqz
  if
   i32.const 60
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 1024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 1040
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 62
  i32.const 1056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=52
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=56
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  i32.const 65535
  i32.and
  if (result i32)
   local.get $1
  else
   global.get $assembly/shapes/Shape/Shape.CONVEX
  end
  local.get $3
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  i32.const 0
  local.set $4
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $2
   local.tee $5
   local.get $4
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $4
  else
   i32.const 0
   i32.const 2
   i32.const 6
   i32.const 512
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   local.set $4
  end
  local.get $0
  local.tee $5
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.load offset=44
  call $~lib/rt/pure/__release
  local.get $6
  i32.store offset=44
  local.get $0
  local.tee $5
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 544
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.load offset=48
  call $~lib/rt/pure/__release
  local.get $6
  i32.store offset=48
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $4
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $0
    i32.load offset=44
    global.get $assembly/math/vec2/vec2
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.tee $7
    call $assembly/math/vec2/Vec2#clone
    local.tee $8
    call $~lib/array/Array<~lib/typedarray/Float32Array>#push
    drop
    local.get $0
    i32.load offset=48
    global.get $assembly/math/vec2/vec2
    call $assembly/math/vec2/Vec2#create
    local.tee $9
    call $~lib/array/Array<~lib/typedarray/Float32Array>#push
    drop
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  call $assembly/shapes/Convex/Convex#updateBoundingRadius@virtual
  drop
  local.get $0
  call $assembly/shapes/Convex/Convex#updateArea@virtual
  drop
  local.get $0
  call $assembly/shapes/Convex/Convex#updateNormals
  local.get $0
  local.tee $7
  i32.const 0
  i32.const 2
  i32.const 62
  i32.const 784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $7
  i32.load offset=52
  call $~lib/rt/pure/__release
  local.get $8
  i32.store offset=52
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  if
   local.get $0
   call $assembly/shapes/Convex/Convex#updateTriangles
   local.get $0
   call $assembly/shapes/Convex/Convex#updateCenterOfMass
  end
  local.get $0
  f32.const 0
  f32.store offset=20
  local.get $0
  call $assembly/shapes/Convex/Convex#updateBoundingRadius@virtual
  drop
  local.get $0
  call $assembly/shapes/Convex/Convex#updateArea@virtual
  drop
  local.get $0
  f32.load offset=36
  f32.const 0
  f32.lt
  if
   i32.const 800
   i32.const 944
   i32.const 118
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $start:assembly/collision/narrowphase
  (local $0 i32)
  (local $1 i32)
  call $start:assembly/shapes/Circle
  call $start:assembly/shapes/Convex
  call $start:assembly/shapes/capsule
  call $start:assembly/shapes/plane
  call $start:assembly/shapes/line
  call $start:assembly/shapes/heightfield
  global.get $assembly/math/vec2/vec2
  f32.const 0
  f32.const 1
  call $assembly/math/vec2/Vec2#fromValues
  global.set $assembly/collision/narrowphase/yAxis
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp3
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp4
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp6
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp7
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp8
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp9
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp10
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp11
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp12
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp13
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp14
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/tmp15
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/findMaxSeparation_n
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/findMaxSeparation_v1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/findMaxSeparation_tmp
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/findMaxSeparation_tmp2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/findIncidentEdge_normal1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_tempVec
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_tmpVec
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_localTangent
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_localNormal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_planePoint
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_tangent
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_negativeTangent
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_v11
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_v12
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/collidePolygons_dist
  i32.const 2
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $0
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $1
  global.set $assembly/collision/narrowphase/collidePolygons_clipPoints1
  i32.const 2
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $0
  global.set $assembly/collision/narrowphase/collidePolygons_clipPoints2
  i32.const 2
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $0
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $1
  global.set $assembly/collision/narrowphase/collidePolygons_incidentEdge
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/pic_localPoint
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/pic_r0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/pic_r1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/bodiesOverlap_shapePositionA
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/bodiesOverlap_shapePositionB
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/capsuleCapsule_tempVec1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/capsuleCapsule_tempVec2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/convexCapsule_tempVec
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/planeCapsule_tmp1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/planeCapsule_tmp2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_candidate
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_dist
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_v0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_v1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_minCandidate
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_worldNormal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/circleHeightfield_minCandidateNormal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/convexHeightfield_v0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/convexHeightfield_v1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/narrowphase/convexHeightfield_tilePos
  i32.const 0
  i32.const 0
  i32.const 4
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=8
  local.get $1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=12
  local.get $0
  local.tee $1
  i32.const 0
  call $assembly/shapes/Convex/Convex#constructor
  global.set $assembly/collision/narrowphase/convexHeightfield_tempConvexShape
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/events/event-emitter/EventArgument#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1072
  i32.store
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/world/world/PostStepEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 65
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1088
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/AddBodyEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 66
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 1120
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/RemoveBodyEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 67
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 1152
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/AddSpringEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 68
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 1200
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/ImpactEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 69
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=20
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=24
  local.get $0
  i32.const 1248
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/PostBroadphaseEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 70
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 1280
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/BeginContactEvent#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 71
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 32
  i32.const 1376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=24
  local.get $0
  i32.const 1328
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/EndContactEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 72
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=20
  local.get $0
  i32.const 1392
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/world/world/PreSolveEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 73
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  i32.const 1440
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $start:assembly/world/world
  call $start:assembly/solver/gs-solver
  call $start:assembly/collision/narrowphase
  i32.const 0
  call $assembly/world/world/PostStepEvent#constructor
  global.set $assembly/world/world/postStepEvent
  i32.const 0
  call $assembly/world/world/AddBodyEvent#constructor
  global.set $assembly/world/world/addBodyEvent
  i32.const 0
  call $assembly/world/world/RemoveBodyEvent#constructor
  global.set $assembly/world/world/removeBodyEvent
  i32.const 0
  call $assembly/world/world/AddSpringEvent#constructor
  global.set $assembly/world/world/addSpringEvent
  i32.const 0
  call $assembly/world/world/ImpactEvent#constructor
  global.set $assembly/world/world/impactEvent
  i32.const 0
  call $assembly/world/world/PostBroadphaseEvent#constructor
  global.set $assembly/world/world/postBroadphaseEvent
  i32.const 0
  call $assembly/world/world/BeginContactEvent#constructor
  global.set $assembly/world/world/beginContactEvent
  i32.const 0
  call $assembly/world/world/EndContactEvent#constructor
  global.set $assembly/world/world/endContactEvent
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/world/world/hitTest_tmp1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/world/world/hitTest_tmp2
  i32.const 0
  call $assembly/world/world/PreSolveEvent#constructor
  global.set $assembly/world/world/preSolveEvent
 )
 (func $start:assembly/math/poly-decomp
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/math/poly-decomp/tmpPoint1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/math/poly-decomp/tmpPoint2
 )
 (func $assembly/objects/body/SleepyEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 74
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1568
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/objects/body/SleepEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 75
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1600
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/objects/body/WakeUpEvent#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 76
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1632
  call $assembly/events/event-emitter/EventArgument#constructor
  local.set $0
  local.get $0
 )
 (func $start:assembly/objects/body
  call $start:assembly/world/world
  call $start:assembly/math/poly-decomp
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/body/integrate_fhMinv
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/body/integrate_velodt
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/body/_tmp
  i32.const 0
  call $assembly/objects/body/SleepyEvent#constructor
  global.set $assembly/objects/body/sleepyEvent
  i32.const 0
  call $assembly/objects/body/SleepEvent#constructor
  global.set $assembly/objects/body/sleepEvent
  i32.const 0
  call $assembly/objects/body/WakeUpEvent#constructor
  global.set $assembly/objects/body/wakeUpEvent
 )
 (func $start:assembly/collision/ray~anonymous|0 (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/collision/ray
  call $start:assembly/objects/body
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/ray/intersectBody_worldPosition
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/ray/v0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/collision/ray/intersect
 )
 (func $start:assembly/collision/aabb
  call $start:assembly/math/vec2
  call $start:assembly/collision/ray
 )
 (func $start:assembly/shapes/circle
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/circle/Ray_intersectSphere_intersectionPoint
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/circle/Ray_intersectSphere_normal
 )
 (func $start:assembly/shapes/convex
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/updateCenterOfMass_centroid
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/updateCenterOfMass_centroid_times_mass
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/updateCenterOfMass_a
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/updateCenterOfMass_b
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/updateCenterOfMass_c
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/tmpVec1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/intersectConvex_rayStart
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/intersectConvex_rayEnd
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/intersectConvex_normal
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/pic_r0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/pic_r1
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/shapes/convex/tmpVec2
  global.get $assembly/shapes/convex/tmpVec2
  call $~lib/rt/pure/__retain
  global.set $assembly/shapes/convex/worldAxis
 )
 (func $start:assembly/constraints/distance-constraint
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/constraints/distance-constraint/n
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/constraints/distance-constraint/ri
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/constraints/distance-constraint/rj
 )
 (func $start:assembly/objects/linear-spring
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_r
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_r_unit
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_u
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_f
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_worldAnchorA
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_worldAnchorB
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_ri
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_rj
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  global.set $assembly/objects/linear-spring/applyForce_tmp
 )
 (func $start:assembly/index
  call $start:assembly/collision/aabb
  call $start:assembly/shapes/circle
  call $start:assembly/shapes/convex
  call $start:assembly/constraints/distance-constraint
  call $start:assembly/objects/linear-spring
 )
 (func $assembly/collision/aabb/AABB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 58
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.tee $3
  local.get $2
  if (result i32)
   global.get $assembly/math/vec2/vec2
   local.get $2
   call $assembly/math/vec2/Vec2#clone
  else
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
  end
  local.set $4
  local.get $3
  i32.load
  call $~lib/rt/pure/__release
  local.get $4
  i32.store
  local.get $0
  local.tee $4
  local.get $1
  if (result i32)
   global.get $assembly/math/vec2/vec2
   local.get $1
   call $assembly/math/vec2/Vec2#clone
  else
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
  end
  local.set $3
  local.get $4
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/collision/aabb/AABB#get:lowerBound (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/aabb/AABB#set:lowerBound (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/collision/aabb/AABB#get:upperBound (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/aabb/AABB#set:upperBound (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/collision/aabb/AABB#get:tmp (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/aabb/AABB#set:tmp (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $~lib/math/NativeMathf.cos (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    f32.const 1
    return
   end
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -0.001388676377460993
   local.get $4
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $6
   f32.const 1
   f64.promote_f32
   local.get $4
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $5
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $5
   local.get $4
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.gt_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.add
    else
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.sub
    end
    local.set $3
    local.get $3
    local.get $3
    f64.mul
    local.set $6
    local.get $6
    local.get $6
    f64.mul
    local.set $5
    f64.const -0.001388676377460993
    local.get $6
    f64.const 2.439044879627741e-05
    f64.mul
    f64.add
    local.set $4
    f32.const 1
    f64.promote_f32
    local.get $6
    f64.const -0.499999997251031
    f64.mul
    f64.add
    local.get $5
    f64.const 0.04166662332373906
    f64.mul
    f64.add
    local.get $5
    local.get $6
    f64.mul
    local.get $4
    f64.mul
    f64.add
    f32.demote_f64
    f32.neg
    return
   else
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $4
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $6
     local.get $4
     local.get $3
     f64.mul
     local.set $7
     local.get $3
     local.get $7
     f64.const -0.16666666641626524
     local.get $4
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $7
     local.get $5
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
    else
     f64.const 1.5707963267948966
     local.get $0
     f64.promote_f32
     f64.sub
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     f64.const -1.9839334836096632e-04
     local.get $7
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $5
     local.get $7
     local.get $3
     f64.mul
     local.set $4
     local.get $3
     local.get $4
     f64.const -0.16666666641626524
     local.get $7
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $4
     local.get $6
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   unreachable
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.gt_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.add
    else
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.sub
    end
    local.set $3
    local.get $3
    local.get $3
    f64.mul
    local.set $4
    local.get $4
    local.get $4
    f64.mul
    local.set $5
    f64.const -0.001388676377460993
    local.get $4
    f64.const 2.439044879627741e-05
    f64.mul
    f64.add
    local.set $6
    f32.const 1
    f64.promote_f32
    local.get $4
    f64.const -0.499999997251031
    f64.mul
    f64.add
    local.get $5
    f64.const 0.04166662332373906
    f64.mul
    f64.add
    local.get $5
    local.get $4
    f64.mul
    local.get $6
    f64.mul
    f64.add
    f32.demote_f64
    return
   else
    local.get $2
    if (result f32)
     local.get $0
     f32.neg
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $6
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $4
     local.get $6
     local.get $7
     f64.mul
     local.set $3
     local.get $7
     local.get $3
     f64.const -0.16666666641626524
     local.get $6
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $3
     local.get $5
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
    else
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     f64.const -1.9839334836096632e-04
     local.get $3
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $5
     local.get $3
     local.get $7
     f64.mul
     local.set $6
     local.get $7
     local.get $6
     f64.const -0.16666666641626524
     local.get $3
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $6
     local.get $4
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   unreachable
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   return
  end
  block $~lib/math/rempio2f|inlined.0 (result i32)
   local.get $0
   local.set $10
   local.get $1
   local.set $9
   local.get $2
   local.set $8
   local.get $9
   i32.const 1305022427
   i32.lt_u
   if
    local.get $10
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $6
    local.get $10
    f64.promote_f32
    local.get $6
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $6
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $6
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.0
   end
   local.get $10
   local.set $12
   local.get $9
   local.set $11
   local.get $11
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $13
   local.get $13
   i32.const 63
   i32.and
   i64.extend_i32_s
   local.set $14
   i32.const 1672
   local.get $13
   i32.const 6
   i32.shr_s
   i32.const 3
   i32.shl
   i32.add
   local.set $15
   local.get $15
   i64.load
   local.set $16
   local.get $15
   i64.load offset=8
   local.set $17
   local.get $14
   i64.const 32
   i64.gt_u
   if
    local.get $15
    i64.load offset=16
    local.set $19
    local.get $19
    i64.const 96
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
    local.get $18
    local.get $17
    local.get $14
    i64.const 32
    i64.sub
    i64.shl
    i64.or
    local.set $18
   else
    local.get $17
    i64.const 32
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
   end
   local.get $17
   i64.const 64
   local.get $14
   i64.sub
   i64.shr_u
   local.get $16
   local.get $14
   i64.shl
   i64.or
   local.set $19
   local.get $11
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $20
   local.get $20
   local.get $19
   i64.mul
   local.get $20
   local.get $18
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $21
   local.get $21
   i64.const 2
   i64.shl
   local.set $22
   local.get $21
   i64.const 62
   i64.shr_u
   local.get $22
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $23
   f64.const 8.515303950216386e-20
   local.get $12
   f64.promote_f32
   f64.copysign
   local.get $22
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $23
   local.set $23
   i32.const 0
   local.get $23
   i32.sub
   local.get $23
   local.get $8
   select
  end
  local.set $24
  global.get $~lib/math/rempio2f_y
  local.set $25
  local.get $24
  i32.const 1
  i32.and
  if (result f32)
   local.get $25
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $6
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $4
   local.get $6
   local.get $7
   f64.mul
   local.set $3
   local.get $7
   local.get $3
   f64.const -0.16666666641626524
   local.get $6
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $5
   f64.mul
   local.get $4
   f64.mul
   f64.add
   f32.demote_f64
  else
   local.get $25
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   f64.const -0.001388676377460993
   local.get $3
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $5
   f32.const 1
   f64.promote_f32
   local.get $3
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $4
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $4
   local.get $3
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
  end
  local.set $26
  local.get $24
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if (result f32)
   local.get $26
   f32.neg
  else
   local.get $26
  end
 )
 (func $~lib/math/NativeMathf.sin (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $4
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $6
   local.get $4
   local.get $3
   f64.mul
   local.set $7
   local.get $3
   local.get $7
   f64.const -0.16666666641626524
   local.get $4
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $7
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.le_u
   if
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     f64.const -0.001388676377460993
     local.get $7
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $5
     f32.const 1
     f64.promote_f32
     local.get $7
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $6
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $6
     local.get $7
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
    else
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.sub
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     local.get $5
     local.get $5
     f64.mul
     local.set $6
     f64.const -0.001388676377460993
     local.get $5
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $7
     f32.const 1
     f64.promote_f32
     local.get $5
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $6
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $6
     local.get $5
     f64.mul
     local.get $7
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.sub
   end
   f64.neg
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   f64.const -1.9839334836096632e-04
   local.get $7
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $5
   local.get $7
   local.get $3
   f64.mul
   local.set $4
   local.get $3
   local.get $4
   f64.const -0.16666666641626524
   local.get $7
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $4
   local.get $6
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.le_u
   if
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $4
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $6
     f32.const 1
     f64.promote_f32
     local.get $4
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $4
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
    else
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $6
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $4
     f32.const 1
     f64.promote_f32
     local.get $6
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $6
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.sub
   end
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $4
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $6
   local.get $4
   local.get $3
   f64.mul
   local.set $7
   local.get $3
   local.get $7
   f64.const -0.16666666641626524
   local.get $4
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $7
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   return
  end
  block $~lib/math/rempio2f|inlined.1 (result i32)
   local.get $0
   local.set $10
   local.get $1
   local.set $9
   local.get $2
   local.set $8
   local.get $9
   i32.const 1305022427
   i32.lt_u
   if
    local.get $10
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $7
    local.get $10
    f64.promote_f32
    local.get $7
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $7
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $7
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.1
   end
   local.get $10
   local.set $12
   local.get $9
   local.set $11
   local.get $11
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $13
   local.get $13
   i32.const 63
   i32.and
   i64.extend_i32_s
   local.set $14
   i32.const 1672
   local.get $13
   i32.const 6
   i32.shr_s
   i32.const 3
   i32.shl
   i32.add
   local.set $15
   local.get $15
   i64.load
   local.set $16
   local.get $15
   i64.load offset=8
   local.set $17
   local.get $14
   i64.const 32
   i64.gt_u
   if
    local.get $15
    i64.load offset=16
    local.set $19
    local.get $19
    i64.const 96
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
    local.get $18
    local.get $17
    local.get $14
    i64.const 32
    i64.sub
    i64.shl
    i64.or
    local.set $18
   else
    local.get $17
    i64.const 32
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
   end
   local.get $17
   i64.const 64
   local.get $14
   i64.sub
   i64.shr_u
   local.get $16
   local.get $14
   i64.shl
   i64.or
   local.set $19
   local.get $11
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $20
   local.get $20
   local.get $19
   i64.mul
   local.get $20
   local.get $18
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $21
   local.get $21
   i64.const 2
   i64.shl
   local.set $22
   local.get $21
   i64.const 62
   i64.shr_u
   local.get $22
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $23
   f64.const 8.515303950216386e-20
   local.get $12
   f64.promote_f32
   f64.copysign
   local.get $22
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $23
   local.set $23
   i32.const 0
   local.get $23
   i32.sub
   local.get $23
   local.get $8
   select
  end
  local.set $24
  global.get $~lib/math/rempio2f_y
  local.set $25
  local.get $24
  i32.const 1
  i32.and
  if (result f32)
   local.get $25
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   f64.const -0.001388676377460993
   local.get $7
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $5
   f32.const 1
   f64.promote_f32
   local.get $7
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $6
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $6
   local.get $7
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
  else
   local.get $25
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   local.get $5
   local.get $5
   f64.mul
   local.set $6
   f64.const -1.9839334836096632e-04
   local.get $5
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $7
   local.get $5
   local.get $4
   f64.mul
   local.set $3
   local.get $4
   local.get $3
   f64.const -0.16666666641626524
   local.get $5
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $6
   f64.mul
   local.get $7
   f64.mul
   f64.add
   f32.demote_f64
  end
  local.set $26
  local.get $24
  i32.const 2
  i32.and
  if (result f32)
   local.get $26
   f32.neg
  else
   local.get $26
  end
 )
 (func $assembly/math/vec2/Vec2#rotate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (result i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  f32.const 0
  f32.ne
  if
   local.get $3
   call $~lib/math/NativeMathf.cos
   local.set $4
   local.get $3
   call $~lib/math/NativeMathf.sin
   local.set $5
   local.get $2
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.set $6
   local.get $2
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.set $7
   local.get $1
   i32.const 0
   local.get $4
   local.get $6
   f32.mul
   local.get $5
   local.get $7
   f32.mul
   f32.sub
   call $~lib/typedarray/Float32Array#__set
   local.get $1
   i32.const 1
   local.get $5
   local.get $6
   f32.mul
   local.get $4
   local.get $7
   f32.mul
   f32.add
   call $~lib/typedarray/Float32Array#__set
  else
   local.get $1
   i32.const 0
   local.get $2
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   call $~lib/typedarray/Float32Array#__set
   local.get $1
   i32.const 1
   local.get $2
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   call $~lib/typedarray/Float32Array#__set
  end
  local.get $1
  local.set $8
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $assembly/collision/aabb/AABB#setFromPoints (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 f32)
  (local $14 i32)
  (local $15 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $3
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  if (result f32)
   local.get $3
  else
   f32.const 0
  end
  local.set $3
  local.get $3
  f32.const 0
  f32.ne
  if
   global.get $assembly/math/vec2/vec2
   local.get $5
   local.get $1
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
   local.tee $7
   local.get $3
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
  else
   global.get $assembly/math/vec2/vec2
   local.get $5
   local.get $1
   i32.const 0
   call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
   local.tee $7
   call $assembly/math/vec2/Vec2#copy
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
  end
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $5
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/math/NativeMathf.cos
  local.set $8
  local.get $3
  call $~lib/math/NativeMathf.sin
  local.set $9
  i32.const 1
  local.set $7
  loop $for-loop|0
   local.get $7
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.lt_s
   local.set $10
   local.get $10
   if
    local.get $1
    local.get $7
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $11
    local.get $3
    f32.const 0
    f32.ne
    if
     local.get $11
     i32.const 0
     call $~lib/typedarray/Float32Array#__get
     local.set $12
     local.get $11
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     local.set $13
     local.get $0
     i32.load offset=8
     i32.const 0
     local.get $8
     local.get $12
     f32.mul
     local.get $9
     local.get $13
     f32.mul
     f32.sub
     call $~lib/typedarray/Float32Array#__set
     local.get $0
     i32.load offset=8
     i32.const 1
     local.get $9
     local.get $12
     f32.mul
     local.get $8
     local.get $13
     f32.mul
     f32.add
     call $~lib/typedarray/Float32Array#__set
     local.get $0
     i32.load offset=8
     local.tee $14
     local.get $11
     local.tee $15
     i32.ne
     if
      local.get $14
      call $~lib/rt/pure/__retain
      local.set $14
      local.get $15
      call $~lib/rt/pure/__release
     end
     local.get $14
     local.set $11
    end
    i32.const 0
    local.set $14
    loop $for-loop|1
     local.get $14
     i32.const 2
     i32.lt_s
     local.set $15
     local.get $15
     if
      local.get $11
      local.get $14
      call $~lib/typedarray/Float32Array#__get
      local.get $6
      local.get $14
      call $~lib/typedarray/Float32Array#__get
      f32.gt
      if
       local.get $6
       local.get $14
       local.get $11
       local.get $14
       call $~lib/typedarray/Float32Array#__get
       call $~lib/typedarray/Float32Array#__set
      end
      local.get $11
      local.get $14
      call $~lib/typedarray/Float32Array#__get
      local.get $5
      local.get $14
      call $~lib/typedarray/Float32Array#__get
      f32.lt
      if
       local.get $5
       local.get $14
       local.get $11
       local.get $14
       call $~lib/typedarray/Float32Array#__get
       call $~lib/typedarray/Float32Array#__set
      end
      local.get $14
      i32.const 1
      i32.add
      local.set $14
      br $for-loop|1
     end
    end
    local.get $11
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $2
  if
   global.get $assembly/math/vec2/vec2
   local.get $5
   local.get $5
   local.get $2
   call $assembly/math/vec2/Vec2#add
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $6
   local.get $6
   local.get $2
   call $assembly/math/vec2/Vec2#add
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  if
   local.get $5
   i32.const 0
   local.get $5
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $4
   f32.sub
   call $~lib/typedarray/Float32Array#__set
   local.get $5
   i32.const 1
   local.get $5
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $4
   f32.sub
   call $~lib/typedarray/Float32Array#__set
   local.get $6
   i32.const 0
   local.get $6
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $4
   f32.add
   call $~lib/typedarray/Float32Array#__set
   local.get $6
   i32.const 1
   local.get $6
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $4
   f32.add
   call $~lib/typedarray/Float32Array#__set
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/aabb/AABB#copy (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load
  local.get $1
  i32.load
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/aabb/AABB#extend (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 2
  local.set $4
  loop $while-continue|0
   local.get $4
   local.tee $5
   i32.const 1
   i32.sub
   local.set $4
   local.get $5
   local.set $5
   local.get $5
   if
    local.get $1
    i32.load
    local.get $4
    call $~lib/typedarray/Float32Array#__get
    local.set $6
    local.get $2
    local.get $4
    call $~lib/typedarray/Float32Array#__get
    local.get $6
    f32.gt
    if
     local.get $2
     local.get $4
     local.get $6
     call $~lib/typedarray/Float32Array#__set
    end
    local.get $1
    i32.load offset=4
    local.get $4
    call $~lib/typedarray/Float32Array#__get
    local.set $7
    local.get $3
    local.get $4
    call $~lib/typedarray/Float32Array#__get
    local.get $7
    f32.lt
    if
     local.get $3
     local.get $4
     local.get $7
     call $~lib/typedarray/Float32Array#__set
    end
    br $while-continue|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/aabb/AABB#overlaps (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.le
  if (result i32)
   local.get $3
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $5
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   f32.le
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $5
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   f32.le
   if (result i32)
    local.get $5
    i32.const 0
    call $~lib/typedarray/Float32Array#__get
    local.get $3
    i32.const 0
    call $~lib/typedarray/Float32Array#__get
    f32.le
   else
    i32.const 0
   end
  end
  if (result i32)
   local.get $4
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $3
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   f32.le
   if (result i32)
    local.get $3
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    local.get $5
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    f32.le
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    local.get $5
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    f32.le
    if (result i32)
     local.get $5
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     local.get $3
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     f32.le
    else
     i32.const 0
    end
   end
  else
   i32.const 0
  end
  local.set $6
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/collision/aabb/AABB#containsPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.le
  if (result i32)
   local.get $1
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   local.get $3
   i32.const 0
   call $~lib/typedarray/Float32Array#__get
   f32.le
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $1
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   f32.le
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.get $3
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   f32.le
  else
   i32.const 0
  end
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/collision/aabb/AABB#overlapsRay (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  f32.const 1
  local.get $1
  i32.load offset=20
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.div
  local.set $2
  f32.const 1
  local.get $1
  i32.load offset=20
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.div
  local.set $3
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $2
  f32.mul
  local.set $7
  local.get $6
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $2
  f32.mul
  local.set $8
  local.get $5
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $3
  f32.mul
  local.set $9
  local.get $6
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $3
  f32.mul
  local.set $10
  local.get $7
  local.set $12
  local.get $8
  local.set $11
  local.get $12
  local.get $11
  f32.min
  local.set $13
  local.get $9
  local.set $12
  local.get $10
  local.set $11
  local.get $12
  local.get $11
  f32.min
  local.set $11
  local.get $13
  local.get $11
  f32.max
  local.set $13
  local.get $7
  local.set $11
  local.get $8
  local.set $12
  local.get $11
  local.get $12
  f32.max
  local.set $14
  local.get $9
  local.set $11
  local.get $10
  local.set $12
  local.get $11
  local.get $12
  f32.max
  local.set $12
  local.get $14
  local.get $12
  f32.min
  local.set $14
  local.get $14
  f32.const 0
  f32.lt
  if
   f32.const -1
   local.set $12
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $12
   return
  end
  local.get $13
  local.get $14
  f32.gt
  if
   f32.const -1
   local.set $12
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $12
   return
  end
  local.get $13
  local.get $1
  f32.load offset=24
  f32.div
  local.set $12
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $assembly/equations/Equation/Equation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 f32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.eqz
  if
   i32.const 96
   i32.const 82
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 0
  f32.store
  local.get $0
  f32.const 0
  f32.store offset=4
  local.get $0
  f32.const inf
  f32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  global.get $assembly/equations/Equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=20
  local.get $0
  global.get $assembly/equations/Equation/Equation.DEFAULT_RELAXATION
  f32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  f32.const 0
  f32.store offset=32
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  f32.const 0
  f32.store offset=40
  local.get $0
  f32.const 0
  f32.store offset=44
  local.get $0
  f32.const 1
  f32.const 60
  f32.div
  f32.store offset=48
  local.get $0
  i32.const 1
  i32.store8 offset=52
  local.get $0
  f32.const 0
  f32.store offset=56
  local.get $0
  f32.const 0
  f32.store offset=60
  local.get $0
  i32.const 1
  i32.store8 offset=64
  local.get $0
  f32.const 0
  f32.store offset=68
  local.get $0
  f32.const 0
  f32.store offset=72
  local.get $0
  f32.const 0
  f32.store offset=76
  local.get $0
  f32.const 0
  f32.store offset=80
  local.get $0
  f32.const 0
  f32.store offset=84
  local.get $0
  i64.const -1
  i64.store offset=88
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $3
  f32.store
  local.get $0
  local.get $4
  f32.store offset=4
  local.get $0
  f32.const inf
  f32.store offset=8
  local.get $0
  local.tee $6
  local.get $1
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 0
  end
  local.tee $5
  local.get $6
  i32.load offset=12
  local.tee $7
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $0
  local.tee $7
  local.get $2
  local.tee $6
  if (result i32)
   local.get $6
  else
   i32.const 0
  end
  local.tee $5
  local.get $7
  i32.load offset=16
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=16
  local.get $0
  global.get $assembly/equations/Equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=20
  local.get $0
  global.get $assembly/equations/Equation/Equation.DEFAULT_RELAXATION
  f32.store offset=24
  local.get $0
  local.tee $6
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Float32Array#constructor
  local.set $5
  local.get $6
  i32.load offset=28
  call $~lib/rt/pure/__release
  local.get $5
  i32.store offset=28
  i32.const 0
  local.set $6
  loop $for-loop|1
   local.get $6
   i32.const 65535
   i32.and
   i32.const 6
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load offset=28
    local.get $6
    i32.const 65535
    i32.and
    f32.const 0
    call $~lib/typedarray/Float32Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#setRatio (param $0 i32) (param $1 f32)
  (local $2 i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 2
  local.get $1
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 5
  f32.const -1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  local.get $1
  f32.store offset=100
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 f32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 104
   i32.const 81
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 0
  f32.store offset=96
  local.get $0
  f32.const 0
  f32.store offset=100
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  f32.const inf
  f32.neg
  f32.const inf
  call $assembly/equations/Equation/Equation#constructor
  local.set $0
  local.get $0
  local.get $3
  f32.store offset=96
  local.get $0
  local.get $4
  f32.store offset=100
  local.get $0
  local.get $0
  f32.load offset=100
  call $assembly/equations/angle-lock-equation/AngleLockEquation#setRatio
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/Equation/Equation#get:minForce (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/equations/Equation/Equation#set:minForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $assembly/equations/Equation/Equation#get:maxForce (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $assembly/equations/Equation/Equation#set:maxForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $assembly/equations/Equation/Equation#get:maxBias (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $assembly/equations/Equation/Equation#set:maxBias (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $assembly/equations/Equation/Equation#get:bodyA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/Equation/Equation#set:bodyA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $assembly/equations/Equation/Equation#get:bodyB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/Equation/Equation#set:bodyB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=16
 )
 (func $assembly/equations/Equation/Equation#get:stiffness (param $0 i32) (result f32)
  local.get $0
  f32.load offset=20
 )
 (func $assembly/equations/Equation/Equation#set:stiffness (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=20
 )
 (func $assembly/equations/Equation/Equation#get:relaxation (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/equations/Equation/Equation#set:relaxation (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/equations/Equation/Equation#get:G (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/Equation/Equation#set:G (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=28
 )
 (func $assembly/equations/Equation/Equation#get:offset (param $0 i32) (result f32)
  local.get $0
  f32.load offset=32
 )
 (func $assembly/equations/Equation/Equation#set:offset (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=32
 )
 (func $assembly/equations/Equation/Equation#get:a (param $0 i32) (result f32)
  local.get $0
  f32.load offset=36
 )
 (func $assembly/equations/Equation/Equation#set:a (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=36
 )
 (func $assembly/equations/Equation/Equation#get:b (param $0 i32) (result f32)
  local.get $0
  f32.load offset=40
 )
 (func $assembly/equations/Equation/Equation#set:b (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=40
 )
 (func $assembly/equations/Equation/Equation#get:epsilon (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
 )
 (func $assembly/equations/Equation/Equation#set:epsilon (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=44
 )
 (func $assembly/equations/Equation/Equation#get:timeStep (param $0 i32) (result f32)
  local.get $0
  f32.load offset=48
 )
 (func $assembly/equations/Equation/Equation#set:timeStep (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=48
 )
 (func $assembly/equations/Equation/Equation#get:needsUpdate (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=52
 )
 (func $assembly/equations/Equation/Equation#set:needsUpdate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=52
 )
 (func $assembly/equations/Equation/Equation#get:multiplier (param $0 i32) (result f32)
  local.get $0
  f32.load offset=56
 )
 (func $assembly/equations/Equation/Equation#set:multiplier (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=56
 )
 (func $assembly/equations/Equation/Equation#get:relativeVelocity (param $0 i32) (result f32)
  local.get $0
  f32.load offset=60
 )
 (func $assembly/equations/Equation/Equation#set:relativeVelocity (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=60
 )
 (func $assembly/equations/Equation/Equation#get:enabled (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=64
 )
 (func $assembly/equations/Equation/Equation#set:enabled (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=64
 )
 (func $assembly/equations/Equation/Equation#get:maxForceDt (param $0 i32) (result f32)
  local.get $0
  f32.load offset=68
 )
 (func $assembly/equations/Equation/Equation#set:maxForceDt (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=68
 )
 (func $assembly/equations/Equation/Equation#get:minForceDt (param $0 i32) (result f32)
  local.get $0
  f32.load offset=72
 )
 (func $assembly/equations/Equation/Equation#set:minForceDt (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=72
 )
 (func $assembly/equations/Equation/Equation#get:invC (param $0 i32) (result f32)
  local.get $0
  f32.load offset=76
 )
 (func $assembly/equations/Equation/Equation#set:invC (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=76
 )
 (func $assembly/equations/Equation/Equation#get:B (param $0 i32) (result f32)
  local.get $0
  f32.load offset=80
 )
 (func $assembly/equations/Equation/Equation#set:B (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=80
 )
 (func $assembly/equations/Equation/Equation#get:lambda (param $0 i32) (result f32)
  local.get $0
  f32.load offset=84
 )
 (func $assembly/equations/Equation/Equation#set:lambda (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=84
 )
 (func $assembly/equations/Equation/Equation#get:index (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $assembly/equations/Equation/Equation#set:index (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#computeGq (param $0 i32) (result f32)
  (local $1 i32)
  local.get $0
  f32.load offset=100
  local.get $0
  i32.load offset=12
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 1728
   i32.const 1776
   i32.const 39
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  f32.load offset=88
  f32.mul
  local.get $0
  i32.load offset=16
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 1728
   i32.const 1776
   i32.const 39
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  f32.load offset=88
  f32.sub
  local.get $0
  f32.load offset=96
  f32.add
 )
 (func $assembly/equations/Equation/Equation#update (param $0 i32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  f32.load offset=20
  local.set $1
  local.get $0
  f32.load offset=24
  local.set $2
  local.get $0
  f32.load offset=48
  local.set $3
  local.get $0
  f32.const 4
  local.get $3
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.mul
  f32.div
  f32.store offset=36
  local.get $0
  f32.const 4
  local.get $2
  f32.mul
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.div
  f32.store offset=40
  local.get $0
  f32.const 4
  local.get $3
  local.get $3
  f32.mul
  local.get $1
  f32.mul
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.mul
  f32.div
  f32.store offset=44
  local.get $0
  i32.const 0
  i32.store8 offset=52
 )
 (func $assembly/equations/Equation/Equation#gmult (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 i32) (param $5 f32) (result f32)
  (local $6 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.mul
  f32.add
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.mul
  f32.add
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/equations/Equation/Equation#computeGW (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.load offset=76
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=76
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=100
  local.set $7
  local.get $3
  f32.load offset=100
  local.set $8
  local.get $0
  local.get $1
  local.get $5
  local.get $7
  local.get $6
  local.get $8
  call $assembly/equations/Equation/Equation#gmult
  local.get $0
  f32.load offset=60
  f32.add
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/Equation/Equation#computeGq (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  f32.load offset=88
  local.set $5
  local.get $3
  f32.load offset=88
  local.set $6
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $7
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $8
  local.get $0
  local.get $1
  local.get $7
  local.get $5
  local.get $8
  local.get $6
  call $assembly/equations/Equation/Equation#gmult
  local.get $0
  f32.load offset=32
  f32.add
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/math/vec2/Vec2#multiply (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/Equation/Equation#computeGiMf (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.eqz
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  f32.load offset=108
  local.set $5
  local.get $2
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=108
  local.set $7
  local.get $1
  f32.load offset=48
  local.set $8
  local.get $2
  f32.load offset=48
  local.set $9
  local.get $1
  f32.load offset=52
  local.set $10
  local.get $2
  f32.load offset=52
  local.set $11
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $12
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $13
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $14
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $4
  local.get $8
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $1
  i32.load offset=60
  local.get $13
  call $assembly/math/vec2/Vec2#multiply
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $6
  local.get $9
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $2
  i32.load offset=60
  local.get $14
  call $assembly/math/vec2/Vec2#multiply
  call $~lib/rt/pure/__release
  local.get $0
  local.get $12
  local.get $13
  local.get $5
  local.get $10
  f32.mul
  local.get $14
  local.get $7
  local.get $11
  f32.mul
  call $assembly/equations/Equation/Equation#gmult
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/Equation/Equation#computeB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f64)
  (local $8 f32)
  (local $9 f32)
  local.get $0
  call $assembly/equations/Equation/Equation#computeGW
  local.set $4
  local.get $0
  call $assembly/equations/Equation/Equation#computeGq@virtual
  local.set $5
  local.get $0
  f32.load offset=8
  local.set $6
  local.get $5
  f64.promote_f32
  local.set $7
  local.get $7
  f64.abs
  local.get $6
  f64.promote_f32
  f64.gt
  if
   local.get $5
   f32.const 0
   f32.gt
   if (result f32)
    local.get $6
   else
    local.get $6
    f32.neg
   end
   local.set $5
  end
  local.get $0
  call $assembly/equations/Equation/Equation#computeGiMf
  local.set $8
  local.get $5
  f32.neg
  local.get $1
  f32.mul
  local.get $4
  local.get $2
  f32.mul
  f32.sub
  local.get $8
  local.get $3
  f32.mul
  f32.sub
  local.set $9
  local.get $9
 )
 (func $assembly/equations/Equation/Equation#computeGWlambda (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.load offset=80
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=80
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=84
  local.set $7
  local.get $3
  f32.load offset=84
  local.set $8
  local.get $0
  local.get $1
  local.get $5
  local.get $7
  local.get $6
  local.get $8
  call $assembly/equations/Equation/Equation#gmult
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/Equation/Equation#computeGiMGt (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.eqz
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  f32.load offset=48
  local.set $4
  local.get $2
  f32.load offset=48
  local.set $5
  local.get $1
  f32.load offset=52
  local.set $6
  local.get $2
  f32.load offset=52
  local.set $7
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $4
  f32.mul
  local.get $1
  i32.load offset=60
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $4
  f32.mul
  local.get $1
  i32.load offset=60
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $6
  f32.mul
  f32.add
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $5
  f32.mul
  local.get $2
  i32.load offset=60
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $5
  f32.mul
  local.get $2
  i32.load offset=60
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $7
  f32.mul
  f32.add
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/Equation/Equation#updateJacobian (param $0 i32)
  nop
 )
 (func $assembly/equations/Equation/addToVLambda (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  local.get $3
  f32.mul
  local.get $4
  f32.mul
  local.get $5
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  local.get $3
  f32.mul
  local.get $4
  f32.mul
  local.get $5
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/Equation/Equation#addToWlambda (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  f32.load offset=48
  local.set $4
  local.get $3
  f32.load offset=48
  local.set $5
  local.get $2
  f32.load offset=52
  local.set $6
  local.get $3
  f32.load offset=52
  local.set $7
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $2
  i32.load offset=80
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  local.get $1
  local.get $2
  i32.load offset=60
  call $assembly/equations/Equation/addToVLambda
  local.get $2
  local.get $2
  f32.load offset=84
  local.get $6
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  f32.mul
  f32.add
  f32.store offset=84
  local.get $3
  i32.load offset=80
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  local.get $1
  local.get $3
  i32.load offset=60
  call $assembly/equations/Equation/addToVLambda
  local.get $3
  local.get $3
  f32.load offset=84
  local.get $7
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  f32.mul
  f32.add
  f32.store offset=84
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/Equation/Equation#computeInvC (param $0 i32) (param $1 f32) (result f32)
  (local $2 f32)
  f32.const 1
  local.get $0
  call $assembly/equations/Equation/Equation#computeGiMGt
  local.get $1
  f32.add
  f32.div
  local.set $2
  local.get $2
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#get:angle (param $0 i32) (result f32)
  local.get $0
  f32.load offset=96
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#set:angle (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=96
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#get:ratio (param $0 i32) (result f32)
  local.get $0
  f32.load offset=100
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#set:ratio (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=100
 )
 (func $assembly/equations/angle-lock-equation/AngleLockEquation#setMaxTorque (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
  local.get $0
  local.get $1
  f32.neg
  f32.store
 )
 (func $assembly/math/vec2/Vec2#squaredDistance (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $4
  local.get $3
  local.get $3
  f32.mul
  local.get $4
  local.get $4
  f32.mul
  f32.add
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/collision/broadphase/Broadphase.boundingRadiusCheck (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=64
  local.get $1
  i32.load offset=64
  call $assembly/math/vec2/Vec2#squaredDistance
  local.set $2
  local.get $0
  f32.load offset=124
  local.get $1
  f32.load offset=124
  f32.add
  local.set $3
  local.get $2
  local.get $3
  local.get $3
  f32.mul
  f32.le
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<assembly/shapes/shape/Shape>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/shapes/shape/Shape>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<assembly/shapes/shape/Shape>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/shapes/shape/Shape>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/shapes/shape/Shape#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  unreachable
 )
 (func $assembly/objects/body/Body#updateAABB (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/array/Array<assembly/shapes/shape/Shape>#get:length
  local.set $2
  global.get $assembly/objects/body/_tmp
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  f32.load offset=88
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   i32.const 65535
   i32.and
   local.get $2
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $1
    local.get $5
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/shapes/shape/Shape>#__get
    local.set $9
    local.get $9
    f32.load offset=8
    local.get $4
    f32.add
    local.set $8
    global.get $assembly/math/vec2/vec2
    local.get $3
    local.get $9
    i32.load offset=4
    local.get $4
    call $assembly/math/vec2/Vec2#rotate
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $3
    local.get $3
    local.get $0
    i32.load offset=64
    call $assembly/math/vec2/Vec2#add
    call $~lib/rt/pure/__release
    local.get $9
    local.get $0
    i32.load offset=192
    local.get $3
    local.get $8
    call $assembly/shapes/shape/Shape#computeAABB@virtual
    local.get $5
    i32.const 65535
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $0
     i32.load offset=128
     local.get $0
     i32.load offset=192
     call $assembly/collision/aabb/AABB#copy
    else
     local.get $0
     i32.load offset=128
     local.get $0
     i32.load offset=192
     call $assembly/collision/aabb/AABB#extend
    end
    local.get $9
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $0
  i32.const 0
  i32.store8 offset=132
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/body/Body#getAABB (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=132
  if
   local.get $0
   call $assembly/objects/body/Body#updateAABB
  end
  local.get $0
  i32.load offset=128
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/broadphase/Broadphase.aabbCheck (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $assembly/objects/body/Body#getAABB
  local.tee $2
  local.get $1
  call $assembly/objects/body/Body#getAABB
  local.tee $3
  call $assembly/collision/aabb/AABB#overlaps
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/collision/broadphase/Broadphase.canCollide (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/objects/body/Body.KINEMATIC
  local.set $2
  global.get $assembly/objects/body/Body.STATIC
  local.set $3
  local.get $0
  f32.load offset=120
  local.set $4
  local.get $1
  f32.load offset=120
  local.set $5
  local.get $4
  local.get $3
  f32.convert_i32_u
  f32.eq
  if (result i32)
   local.get $5
   local.get $3
   f32.convert_i32_u
   f32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  local.get $2
  f32.convert_i32_u
  f32.eq
  if (result i32)
   local.get $5
   local.get $3
   f32.convert_i32_u
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $4
   local.get $3
   f32.convert_i32_u
   f32.eq
   if (result i32)
    local.get $5
    local.get $2
    f32.convert_i32_u
    f32.eq
   else
    i32.const 0
   end
  end
  if
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  local.get $2
  f32.convert_i32_u
  f32.eq
  if (result i32)
   local.get $5
   local.get $2
   f32.convert_i32_u
   f32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $0
  i32.load16_u offset=136
  global.get $assembly/objects/body/Body.SLEEPING
  i32.eq
  if (result i32)
   local.get $1
   i32.load16_u offset=136
   global.get $assembly/objects/body/Body.SLEEPING
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $0
  i32.load16_u offset=136
  global.get $assembly/objects/body/Body.SLEEPING
  i32.eq
  if (result i32)
   local.get $5
   local.get $3
   f32.convert_i32_u
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load16_u offset=136
   global.get $assembly/objects/body/Body.SLEEPING
   i32.eq
   if (result i32)
    local.get $4
    local.get $3
    f32.convert_i32_u
    f32.eq
   else
    i32.const 0
   end
  end
  if
   i32.const 0
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  i32.const 1
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/collision/broadphase/Broadphase#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 14
   i32.const 42
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store16
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 22
  i32.const 1888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  global.get $assembly/collision/broadphase/Broadphase.AABB
  i32.store16 offset=12
  local.get $0
  local.get $1
  i32.const 65535
  i32.and
  if (result i32)
   local.get $1
  else
   i32.const 1
  end
  i32.store16
  local.get $0
 )
 (func $assembly/collision/broadphase/Broadphase#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load16_u
 )
 (func $assembly/collision/broadphase/Broadphase#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $assembly/collision/broadphase/Broadphase#get:result (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/broadphase/Broadphase#set:result (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/collision/broadphase/Broadphase#get:world (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/broadphase/Broadphase#set:world (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $assembly/collision/broadphase/Broadphase#get:boundingVolumeType (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=12
 )
 (func $assembly/collision/broadphase/Broadphase#set:boundingVolumeType (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=12
 )
 (func $assembly/collision/broadphase/Broadphase#setWorld (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/broadphase/Broadphase#getCollisionPairs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  i32.const 2
  i32.const 22
  i32.const 1904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 2212
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 2212
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2212
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2212
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2640
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 2640
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-continue|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 3680
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|0
   end
  else
   loop $do-continue|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 3680
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    local.set $7
    local.get $7
    br_if $do-continue|1
   end
  end
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2016
   i32.const 2144
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 2208
   return
  end
  i32.const 0
  local.set $2
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $2
   local.get $2
   local.set $6
   local.get $0
   local.set $5
   local.get $3
   local.set $4
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $3
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.set $2
    local.get $2
    local.set $6
    local.get $0
    local.set $5
    local.get $3
    local.set $4
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $6
    local.get $5
    i64.extend_i32_u
    local.get $4
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.set $3
    local.get $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tlsf/__alloc
    local.set $2
    local.get $2
    local.get $0
    i64.extend_i32_u
    local.get $3
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/number/U16#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  local.get $1
  call $~lib/util/number/utoa32
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 3776
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 1072
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.const 3776
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/collision/broadphase/Broadphase#boundingVolumeCheck (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $0
      i32.load16_u offset=12
      local.set $4
      local.get $4
      global.get $assembly/collision/broadphase/Broadphase.BOUNDING_CIRCLE
      i32.eq
      br_if $case0|0
      local.get $4
      global.get $assembly/collision/broadphase/Broadphase.AABB
      i32.eq
      br_if $case1|0
      br $case2|0
     end
     local.get $1
     local.get $2
     call $assembly/collision/broadphase/Broadphase.boundingRadiusCheck
     local.set $3
     br $break|0
    end
    local.get $1
    local.get $2
    call $assembly/collision/broadphase/Broadphase.aabbCheck
    local.set $3
    br $break|0
   end
   i32.const 1920
   local.get $0
   i32.load16_u offset=12
   i32.const 10
   call $~lib/number/U16#toString
   local.tee $4
   call $~lib/string/String.__concat
   local.tee $5
   i32.const 3808
   i32.const 109
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/collision/broadphase/Broadphase#aabbQuery (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/shape/Shape#updateBoundingRadius (param $0 i32) (result f32)
  unreachable
 )
 (func $assembly/shapes/shape/Shape#updateArea (param $0 i32) (result f32)
  unreachable
 )
 (func $assembly/shapes/shape/Shape#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 41
   i32.const 29
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $0
  f32.const 0
  f32.store offset=8
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  f32.const 0
  f32.store offset=20
  local.get $0
  i32.const 1
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store8 offset=26
  local.get $0
  i32.const 1
  i32.store16 offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  i32.const 0
  i32.store8 offset=40
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  if
   local.get $2
   i32.load
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   i32.const 0
   i32.ne
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=4
    local.get $3
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $0
   local.get $2
   f32.load offset=4
   f32.store offset=8
   local.get $0
   local.get $1
   i32.store16 offset=12
   local.get $0
   local.get $2
   i32.load16_s offset=8
   i32.store16 offset=24
   local.get $0
   local.get $2
   i32.load8_u offset=10
   i32.store8 offset=26
   local.get $0
   local.get $2
   i32.load16_s offset=12
   i32.store16 offset=28
   local.get $0
   local.tee $4
   local.get $2
   i32.load offset=16
   local.tee $5
   local.get $4
   i32.load offset=32
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   i32.store offset=32
   local.get $0
   local.get $2
   i32.load8_u offset=20
   i32.store8 offset=40
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  global.get $assembly/shapes/shape/Shape.idCounter
  i32.const 1
  i32.add
  global.set $assembly/shapes/shape/Shape.idCounter
  global.get $assembly/shapes/shape/Shape.idCounter
  i32.store offset=16
  local.get $0
  i32.load16_u offset=12
  if
   local.get $0
   call $assembly/shapes/shape/Shape#updateBoundingRadius@virtual
   drop
  end
  local.get $0
  call $assembly/shapes/shape/Shape#updateArea@virtual
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/capsule/Capsule#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 52
   i32.const 83
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 1
  f32.store offset=44
  local.get $0
  f32.const 1
  f32.store offset=48
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/shape/Shape.CAPSULE
  local.get $1
  call $assembly/shapes/shape/Shape#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.get $1
   f32.load offset=24
   f32.store offset=44
   local.get $0
   local.get $1
   f32.load offset=28
   f32.store offset=48
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/shape/Shape#get:body (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/shape/Shape#set:body (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/shapes/shape/Shape#get:position (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/shape/Shape#set:position (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/shapes/shape/Shape#get:angle (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $assembly/shapes/shape/Shape#set:angle (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $assembly/shapes/shape/Shape#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=12
 )
 (func $assembly/shapes/shape/Shape#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=12
 )
 (func $assembly/shapes/shape/Shape#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $assembly/shapes/shape/Shape#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $assembly/shapes/shape/Shape#get:boundingRadius (param $0 i32) (result f32)
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/shape/Shape#set:boundingRadius (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=20
 )
 (func $assembly/shapes/shape/Shape#get:collisionGroup (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=24
 )
 (func $assembly/shapes/shape/Shape#set:collisionGroup (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=24
 )
 (func $assembly/shapes/shape/Shape#get:collisionResponse (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=26
 )
 (func $assembly/shapes/shape/Shape#set:collisionResponse (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=26
 )
 (func $assembly/shapes/shape/Shape#get:collisionMask (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=28
 )
 (func $assembly/shapes/shape/Shape#set:collisionMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=28
 )
 (func $assembly/shapes/shape/Shape#get:material (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/shape/Shape#set:material (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=32
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=32
 )
 (func $assembly/shapes/shape/Shape#get:area (param $0 i32) (result f32)
  local.get $0
  f32.load offset=36
 )
 (func $assembly/shapes/shape/Shape#set:area (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=36
 )
 (func $assembly/shapes/shape/Shape#get:sensor (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=40
 )
 (func $assembly/shapes/shape/Shape#set:sensor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=40
 )
 (func $~lib/math/NativeMathf.pow (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 i64)
  (local $24 i64)
  local.get $1
  f32.abs
  f32.const 2
  f32.le
  if
   local.get $1
   f32.const 2
   f32.eq
   if
    local.get $0
    local.get $0
    f32.mul
    return
   end
   local.get $1
   f32.const 0.5
   f32.eq
   if
    local.get $0
    f32.sqrt
    f32.abs
    f32.const inf
    local.get $0
    f32.const inf
    f32.neg
    f32.ne
    select
    return
   end
   local.get $1
   f32.const -1
   f32.eq
   if
    f32.const 1
    local.get $0
    f32.div
    return
   end
   local.get $1
   f32.const 1
   f32.eq
   if
    local.get $0
    return
   end
   local.get $1
   f32.const 0
   f32.eq
   if
    f32.const 1
    return
   end
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  block $~lib/util/math/powf_lut|inlined.0 (result f32)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i32.reinterpret_f32
   local.set $5
   local.get $2
   i32.reinterpret_f32
   local.set $6
   i32.const 0
   local.set $7
   local.get $5
   i32.const 8388608
   i32.sub
   i32.const 2139095040
   i32.const 8388608
   i32.sub
   i32.ge_u
   local.get $6
   local.set $8
   local.get $8
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.const 2139095040
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.ge_u
   i32.const 0
   i32.ne
   local.tee $7
   i32.or
   if
    local.get $7
    if
     local.get $6
     i32.const 1
     i32.shl
     i32.const 0
     i32.eq
     if
      f32.const 1
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1065353216
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2139095040
     i32.const 1
     i32.shl
     i32.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i32.const 1
      i32.shl
      i32.const 2139095040
      i32.const 1
      i32.shl
      i32.gt_u
     end
     if
      local.get $3
      local.get $2
      f32.add
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 1065353216
     i32.const 1
     i32.shl
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 1065353216
     i32.const 1
     i32.shl
     i32.lt_u
     local.get $6
     i32.const 31
     i32.shr_u
     i32.eqz
     i32.eq
     if
      f32.const 0
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $2
     local.get $2
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    local.set $8
    local.get $8
    i32.const 1
    i32.shl
    i32.const 1
    i32.sub
    i32.const 2139095040
    i32.const 1
    i32.shl
    i32.const 1
    i32.sub
    i32.ge_u
    if
     local.get $3
     local.get $3
     f32.mul
     local.set $9
     local.get $5
     i32.const 31
     i32.shr_u
     if (result i32)
      block $~lib/util/math/checkintf|inlined.0 (result i32)
       local.get $6
       local.set $8
       local.get $8
       i32.const 23
       i32.shr_u
       i32.const 255
       i32.and
       local.set $10
       local.get $10
       i32.const 127
       i32.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $10
       i32.const 127
       i32.const 23
       i32.add
       i32.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 1
       i32.const 127
       i32.const 23
       i32.add
       local.get $10
       i32.sub
       i32.shl
       local.set $10
       local.get $8
       local.get $10
       i32.const 1
       i32.sub
       i32.and
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $8
       local.get $10
       i32.and
       if
        i32.const 1
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $9
      f32.neg
      local.set $9
     end
     local.get $6
     i32.const 31
     i32.shr_u
     if (result f32)
      f32.const 1
      local.get $9
      f32.div
     else
      local.get $9
     end
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    i32.const 31
    i32.shr_u
    if
     block $~lib/util/math/checkintf|inlined.1 (result i32)
      local.get $6
      local.set $8
      local.get $8
      i32.const 23
      i32.shr_u
      i32.const 255
      i32.and
      local.set $10
      local.get $10
      i32.const 127
      i32.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $10
      i32.const 127
      i32.const 23
      i32.add
      i32.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 1
      i32.const 127
      i32.const 23
      i32.add
      local.get $10
      i32.sub
      i32.shl
      local.set $10
      local.get $8
      local.get $10
      i32.const 1
      i32.sub
      i32.and
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $8
      local.get $10
      i32.and
      if
       i32.const 1
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 2
     end
     local.set $10
     local.get $10
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f32.sub
      local.get $3
      local.get $3
      f32.sub
      f32.div
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $10
     i32.const 1
     i32.eq
     if
      i32.const 65536
      local.set $4
     end
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
    end
    local.get $5
    i32.const 8388608
    i32.lt_u
    if
     local.get $3
     f32.const 8388608
     f32.mul
     i32.reinterpret_f32
     local.set $5
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
     local.get $5
     i32.const 23
     i32.const 23
     i32.shl
     i32.sub
     local.set $5
    end
   end
   local.get $5
   local.set $8
   local.get $8
   i32.const 1060306944
   i32.sub
   local.set $10
   local.get $10
   i32.const 23
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 15
   i32.and
   local.set $11
   local.get $10
   i32.const -8388608
   i32.and
   local.set $12
   local.get $8
   local.get $12
   i32.sub
   local.set $13
   local.get $12
   i32.const 23
   i32.shr_s
   local.set $14
   i32.const 3872
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $15
   i32.const 3872
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $16
   local.get $13
   f32.reinterpret_i32
   f64.promote_f32
   local.set $17
   local.get $17
   local.get $15
   f64.mul
   f64.const 1
   f64.sub
   local.set $18
   local.get $16
   local.get $14
   f64.convert_i32_s
   f64.add
   local.set $19
   f64.const 0.288457581109214
   local.get $18
   f64.mul
   f64.const -0.36092606229713164
   f64.add
   local.set $20
   f64.const 0.480898481472577
   local.get $18
   f64.mul
   f64.const -0.7213474675006291
   f64.add
   local.set $21
   f64.const 1.4426950408774342
   local.get $18
   f64.mul
   local.get $19
   f64.add
   local.set $22
   local.get $18
   local.get $18
   f64.mul
   local.set $18
   local.get $22
   local.get $21
   local.get $18
   f64.mul
   f64.add
   local.set $22
   local.get $20
   local.get $18
   local.get $18
   f64.mul
   f64.mul
   local.get $22
   f64.add
   local.set $20
   local.get $20
   local.set $22
   local.get $2
   f64.promote_f32
   local.get $22
   f64.mul
   local.set $21
   local.get $21
   i64.reinterpret_f64
   i64.const 47
   i64.shr_u
   i64.const 65535
   i64.and
   i64.const 32959
   i64.ge_u
   if
    local.get $21
    f64.const 127.99999995700433
    f64.gt
    if
     local.get $4
     local.set $8
     local.get $8
     local.set $10
     i32.const 1879048192
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $10
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $21
    f64.const -150
    f64.le
    if
     local.get $4
     local.set $11
     local.get $11
     local.set $12
     i32.const 268435456
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $12
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
   end
   local.get $21
   local.set $15
   local.get $4
   local.set $13
   local.get $15
   f64.const 211106232532992
   f64.add
   local.set $20
   local.get $20
   i64.reinterpret_f64
   local.set $23
   local.get $15
   local.get $20
   f64.const 211106232532992
   f64.sub
   f64.sub
   local.set $19
   i32.const 4128
   local.get $23
   i32.wrap_i64
   i32.const 31
   i32.and
   i32.const 3
   i32.shl
   i32.add
   i64.load
   local.set $24
   local.get $24
   local.get $23
   local.get $13
   i64.extend_i32_u
   i64.add
   i64.const 52
   i64.const 5
   i64.sub
   i64.shl
   i64.add
   local.set $24
   local.get $24
   f64.reinterpret_i64
   local.set $16
   f64.const 0.05550361559341535
   local.get $19
   f64.mul
   f64.const 0.2402284522445722
   f64.add
   local.set $18
   f64.const 0.6931471806916203
   local.get $19
   f64.mul
   f64.const 1
   f64.add
   local.set $17
   local.get $17
   local.get $18
   local.get $19
   local.get $19
   f64.mul
   f64.mul
   f64.add
   local.set $17
   local.get $17
   local.get $16
   f64.mul
   local.set $17
   local.get $17
   f32.demote_f64
  end
  return
 )
 (func $assembly/shapes/capsule/capsuleA (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  f32.const 2
  f32.mul
  local.get $1
  f32.mul
  global.get $~lib/math/NativeMathf.PI
  local.get $1
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.mul
  f32.add
 )
 (func $assembly/shapes/capsule/semiC (param $0 f32) (result f32)
  f32.const 4
  local.get $0
  f32.mul
  f32.const 3
  global.get $~lib/math/NativeMathf.PI
  f32.mul
  f32.div
 )
 (func $assembly/shapes/capsule/boxI (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.mul
  local.get $0
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $1
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  f32.mul
  f32.const 12
  f32.div
 )
 (func $assembly/shapes/capsule/semiI (param $0 f32) (result f32)
  global.get $~lib/math/NativeMathf.PI
  f32.const 4
  f32.div
  f32.const 8
  f32.const 9
  global.get $~lib/math/NativeMathf.PI
  f32.mul
  f32.div
  f32.sub
  local.get $0
  f32.const 4
  call $~lib/math/NativeMathf.pow
  f32.mul
 )
 (func $assembly/shapes/capsule/semiA (param $0 f32) (result f32)
  global.get $~lib/math/NativeMathf.PI
  local.get $0
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.mul
  f32.const 2
  f32.div
 )
 (func $assembly/shapes/capsule/capsuleI (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  local.get $0
  f32.const 2
  f32.div
  local.get $1
  call $assembly/shapes/capsule/semiC
  f32.add
  local.set $2
  local.get $0
  f32.const 2
  local.get $1
  f32.mul
  call $assembly/shapes/capsule/boxI
  f32.const 2
  local.get $1
  call $assembly/shapes/capsule/semiI
  local.get $1
  call $assembly/shapes/capsule/semiA
  local.get $2
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.mul
  f32.add
  f32.mul
  f32.add
 )
 (func $assembly/shapes/capsule/Capsule#computeMomentOfInertia (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  f32.load offset=48
  local.set $1
  local.get $0
  f32.load offset=44
  local.set $2
  local.get $2
  local.get $1
  call $assembly/shapes/capsule/capsuleA
  local.set $3
  local.get $3
  f32.const 0
  f32.gt
  if (result f32)
   local.get $2
   local.get $1
   call $assembly/shapes/capsule/capsuleI
   local.get $3
   f32.div
  else
   f32.const 0
  end
 )
 (func $assembly/shapes/capsule/Capsule#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  local.get $0
  f32.load offset=48
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  f32.add
  f32.store offset=20
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/capsule/Capsule#updateArea (param $0 i32) (result f32)
  local.get $0
  global.get $~lib/math/NativeMathf.PI
  local.get $0
  f32.load offset=48
  f32.mul
  local.get $0
  f32.load offset=48
  f32.mul
  local.get $0
  f32.load offset=48
  f32.const 2
  f32.mul
  local.get $0
  f32.load offset=44
  f32.mul
  f32.add
  f32.store offset=36
  local.get $0
  f32.load offset=36
 )
 (func $assembly/shapes/capsule/Capsule#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $4
  local.get $0
  f32.load offset=48
  local.set $5
  global.get $assembly/math/vec2/vec2
  local.get $4
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $3
  f32.const 0
  f32.ne
  if
   global.get $assembly/math/vec2/vec2
   local.get $4
   local.get $4
   local.get $3
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
  end
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load offset=4
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.add
  local.set $7
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  local.get $5
  f32.add
  local.set $6
  local.get $7
  local.get $6
  f32.max
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.add
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  local.get $5
  f32.add
  local.set $6
  local.get $7
  local.get $6
  f32.max
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.sub
  local.set $7
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  local.get $5
  f32.sub
  local.set $6
  local.get $7
  local.get $6
  f32.min
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.sub
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  local.get $5
  f32.sub
  local.set $6
  local.get $7
  local.get $6
  f32.min
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $1
  i32.load
  local.get $2
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $2
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/math/vec2/Vec2#toGlobalFrame (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $4
  call $~lib/math/NativeMathf.cos
  local.set $5
  local.get $4
  call $~lib/math/NativeMathf.sin
  local.set $6
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $8
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $9
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $10
  local.get $1
  i32.const 0
  local.get $5
  local.get $7
  f32.mul
  local.get $6
  local.get $8
  f32.mul
  f32.sub
  local.get $9
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $6
  local.get $7
  f32.mul
  local.get $5
  local.get $8
  f32.mul
  f32.add
  local.get $10
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $5
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $6
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $8
  local.get $6
  f32.neg
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  local.get $5
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  f32.add
  local.get $7
  f32.neg
  local.get $6
  f32.mul
  local.get $5
  local.get $8
  f32.mul
  f32.add
  f32.div
  local.set $9
  local.get $7
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  local.get $8
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  f32.sub
  local.get $7
  f32.neg
  local.get $6
  f32.mul
  local.get $5
  local.get $8
  f32.mul
  f32.add
  f32.div
  local.set $10
  local.get $9
  f32.const 0
  f32.ge
  if (result i32)
   local.get $9
   f32.const 1
   f32.le
  else
   i32.const 0
  end
  if (result i32)
   local.get $10
   f32.const 0
   f32.ge
  else
   i32.const 0
  end
  if (result i32)
   local.get $10
   f32.const 1
   f32.le
  else
   i32.const 0
  end
  if
   local.get $10
   local.set $11
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $11
   return
  end
  f32.const -1
  local.set $11
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $assembly/math/vec2/Vec2#dot (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/collision/raycast-result/RaycastResult#set (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load
  local.get $1
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  local.get $0
  local.tee $6
  local.get $2
  local.tee $7
  local.get $6
  i32.load offset=4
  local.tee $8
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=4
  local.get $0
  local.tee $8
  local.get $3
  local.tee $7
  local.get $8
  i32.load offset=8
  local.tee $6
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=8
  local.get $0
  local.get $4
  f32.store offset=16
  local.get $0
  local.get $5
  i32.store offset=12
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/raycast-result/RaycastResult#hasHit (param $0 i32) (result i32)
  local.get $0
  f32.load offset=16
  f32.const -1
  f32.ne
 )
 (func $assembly/collision/ray/Ray#reportIntersection (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=28
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 1728
   i32.const 4400
   i32.const 277
   i32.const 15
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  i32.load offset=32
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 1728
   i32.const 4400
   i32.const 278
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $0
  i32.load8_u offset=9
  if (result i32)
   global.get $assembly/math/vec2/vec2
   local.get $3
   local.get $0
   i32.load offset=20
   call $assembly/math/vec2/Vec2#dot
   f32.const 0
   f32.gt
  else
   i32.const 0
  end
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   return
  end
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $0
      i32.load16_u offset=14
      local.set $5
      local.get $5
      global.get $assembly/collision/ray/Ray.ALL
      i32.eq
      br_if $case0|0
      local.get $5
      global.get $assembly/collision/ray/Ray.CLOSEST
      i32.eq
      br_if $case1|0
      local.get $5
      global.get $assembly/collision/ray/Ray.ANY
      i32.eq
      br_if $case2|0
      br $break|0
     end
     local.get $1
     local.get $3
     local.get $6
     local.get $7
     local.get $2
     local.get $4
     call $assembly/collision/raycast-result/RaycastResult#set
     local.get $1
     i32.const 1
     global.set $~argumentsLength
     local.get $0
     i32.load offset=16
     i32.load
     call_indirect (type $i32_=>_none)
     br $break|0
    end
    local.get $2
    local.get $1
    f32.load offset=16
    f32.lt
    if (result i32)
     i32.const 1
    else
     local.get $1
     call $assembly/collision/raycast-result/RaycastResult#hasHit
     i32.eqz
    end
    if
     local.get $1
     local.get $3
     local.get $6
     local.get $7
     local.get $2
     local.get $4
     call $assembly/collision/raycast-result/RaycastResult#set
    end
    br $break|0
   end
   local.get $1
   local.get $3
   local.get $6
   local.get $7
   local.get $2
   local.get $4
   call $assembly/collision/raycast-result/RaycastResult#set
   br $break|0
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/raycast-result/RaycastResult#shouldStop (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load8_u offset=20
  i32.const 0
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $0
   f32.load offset=16
   f32.const -1
   f32.ne
   if (result i32)
    local.get $1
    i32.load16_u offset=14
    global.get $assembly/collision/ray/Ray.ANY
    i32.eq
   else
    i32.const 0
   end
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/math/vec2/Vec2#lerp (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32) (result i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $6
  local.get $1
  i32.const 0
  local.get $5
  local.get $4
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.sub
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $6
  local.get $4
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $6
  f32.sub
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $assembly/shapes/capsule/Capsule#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 f32)
  (local $13 i32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/capsule/intersectCapsule_hitPointWorld
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/capsule/intersectCapsule_normal
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/shapes/capsule/intersectCapsule_l0
  call $~lib/rt/pure/__retain
  local.set $9
  global.get $assembly/shapes/capsule/intersectCapsule_l1
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  local.set $11
  f32.const 0
  local.set $12
  loop $for-loop|0
   local.get $12
   f32.const 2
   f32.lt
   local.set $13
   local.get $13
   if
    local.get $0
    f32.load offset=48
    local.get $12
    f32.const 2
    f32.mul
    f32.const 1
    f32.sub
    f32.mul
    local.set $14
    global.get $assembly/math/vec2/vec2
    local.get $9
    local.get $11
    f32.neg
    local.get $14
    call $assembly/math/vec2/Vec2#set
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $10
    local.get $11
    local.get $14
    call $assembly/math/vec2/Vec2#set
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $9
    local.get $9
    local.get $3
    local.get $4
    call $assembly/math/vec2/Vec2#toGlobalFrame
    global.get $assembly/math/vec2/vec2
    local.get $10
    local.get $10
    local.get $3
    local.get $4
    call $assembly/math/vec2/Vec2#toGlobalFrame
    global.get $assembly/math/vec2/vec2
    local.get $5
    local.get $6
    local.get $9
    local.get $10
    call $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction
    local.set $15
    local.get $15
    f32.const 0
    f32.ge
    if
     global.get $assembly/math/vec2/vec2
     local.get $8
     global.get $assembly/shapes/capsule/intersectCapsule_unit_y
     local.get $4
     call $assembly/math/vec2/Vec2#rotate
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $8
     local.get $8
     local.get $12
     f32.const 2
     f32.mul
     f32.const 1
     f32.sub
     call $assembly/math/vec2/Vec2#scale
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $15
     local.get $8
     i32.const -1
     call $assembly/collision/ray/Ray#reportIntersection
     local.get $1
     local.get $2
     call $assembly/collision/raycast-result/RaycastResult#shouldStop
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $5
      call $~lib/rt/pure/__release
      local.get $6
      call $~lib/rt/pure/__release
      local.get $7
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
      local.get $9
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      return
     end
    end
    local.get $12
    f32.const 1
    f32.add
    local.set $12
    br $for-loop|0
   end
  end
  local.get $0
  f32.load offset=48
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $11
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  local.set $12
  f32.const 0
  local.set $15
  loop $for-loop|1
   local.get $15
   f32.const 2
   f32.lt
   local.set $13
   local.get $13
   if
    block $for-continue|1
     global.get $assembly/math/vec2/vec2
     local.get $9
     local.get $11
     local.get $15
     f32.const 2
     f32.mul
     f32.const 1
     f32.sub
     f32.mul
     f32.const 0
     call $assembly/math/vec2/Vec2#set
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $9
     local.get $9
     local.get $3
     local.get $4
     call $assembly/math/vec2/Vec2#toGlobalFrame
     local.get $5
     i32.const 0
     call $~lib/typedarray/Float32Array#__get
     local.get $9
     i32.const 0
     call $~lib/typedarray/Float32Array#__get
     f32.sub
     local.set $14
     local.get $5
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     local.get $9
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     f32.sub
     local.set $16
     local.get $6
     i32.const 0
     call $~lib/typedarray/Float32Array#__get
     local.get $5
     i32.const 0
     call $~lib/typedarray/Float32Array#__get
     f32.sub
     local.set $17
     local.get $6
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     local.get $5
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     f32.sub
     local.set $18
     local.get $17
     local.get $18
     local.get $18
     f32.mul
     f32.add
     local.set $19
     f32.const 2
     local.get $17
     local.get $14
     f32.mul
     local.get $18
     local.get $16
     f32.mul
     f32.add
     f32.mul
     local.set $20
     local.get $14
     local.get $14
     f32.mul
     local.get $16
     local.get $16
     f32.mul
     f32.add
     local.get $0
     f32.load offset=48
     local.get $0
     f32.load offset=48
     f32.mul
     f32.sub
     local.set $21
     local.get $20
     local.get $20
     f32.mul
     f32.const 4
     local.get $19
     f32.mul
     local.get $21
     f32.mul
     f32.sub
     local.set $22
     local.get $22
     f32.const 0
     f32.lt
     if
      br $for-continue|1
     else
      local.get $22
      f32.const 0
      f32.eq
      if
       global.get $assembly/math/vec2/vec2
       local.get $7
       local.get $5
       local.get $6
       local.get $22
       call $assembly/math/vec2/Vec2#lerp
       call $~lib/rt/pure/__release
       global.get $assembly/math/vec2/vec2
       local.get $7
       local.get $3
       call $assembly/math/vec2/Vec2#squaredDistance
       local.get $12
       f32.gt
       if
        global.get $assembly/math/vec2/vec2
        local.get $8
        local.get $7
        local.get $9
        call $assembly/math/vec2/Vec2#subtract
        call $~lib/rt/pure/__release
        global.get $assembly/math/vec2/vec2
        local.get $8
        local.get $8
        call $assembly/math/vec2/Vec2#normalize
        call $~lib/rt/pure/__release
        local.get $2
        local.get $1
        local.get $22
        local.get $8
        i32.const -1
        call $assembly/collision/ray/Ray#reportIntersection
        local.get $1
        local.get $2
        call $assembly/collision/raycast-result/RaycastResult#shouldStop
        if
         local.get $1
         call $~lib/rt/pure/__release
         local.get $2
         call $~lib/rt/pure/__release
         local.get $3
         call $~lib/rt/pure/__release
         local.get $5
         call $~lib/rt/pure/__release
         local.get $6
         call $~lib/rt/pure/__release
         local.get $7
         call $~lib/rt/pure/__release
         local.get $8
         call $~lib/rt/pure/__release
         local.get $9
         call $~lib/rt/pure/__release
         local.get $10
         call $~lib/rt/pure/__release
         return
        end
       end
      else
       local.get $22
       local.set $23
       local.get $23
       f32.sqrt
       local.set $23
       f32.const 1
       f32.const 2
       local.get $19
       f32.mul
       f32.div
       local.set $24
       local.get $20
       f32.neg
       local.get $23
       f32.sub
       local.get $24
       f32.mul
       local.set $25
       local.get $20
       f32.neg
       local.get $23
       f32.add
       local.get $24
       f32.mul
       local.set $26
       local.get $25
       f32.const 0
       f32.ge
       if (result i32)
        local.get $25
        f32.const 1
        f32.le
       else
        i32.const 0
       end
       if
        global.get $assembly/math/vec2/vec2
        local.get $7
        local.get $5
        local.get $6
        local.get $25
        call $assembly/math/vec2/Vec2#lerp
        call $~lib/rt/pure/__release
        global.get $assembly/math/vec2/vec2
        local.get $7
        local.get $3
        call $assembly/math/vec2/Vec2#squaredDistance
        local.get $12
        f32.gt
        if
         global.get $assembly/math/vec2/vec2
         local.get $8
         local.get $7
         local.get $9
         call $assembly/math/vec2/Vec2#subtract
         call $~lib/rt/pure/__release
         global.get $assembly/math/vec2/vec2
         local.get $8
         local.get $8
         call $assembly/math/vec2/Vec2#normalize
         call $~lib/rt/pure/__release
         local.get $2
         local.get $1
         local.get $25
         local.get $8
         i32.const -1
         call $assembly/collision/ray/Ray#reportIntersection
         local.get $1
         local.get $2
         call $assembly/collision/raycast-result/RaycastResult#shouldStop
         if
          local.get $1
          call $~lib/rt/pure/__release
          local.get $2
          call $~lib/rt/pure/__release
          local.get $3
          call $~lib/rt/pure/__release
          local.get $5
          call $~lib/rt/pure/__release
          local.get $6
          call $~lib/rt/pure/__release
          local.get $7
          call $~lib/rt/pure/__release
          local.get $8
          call $~lib/rt/pure/__release
          local.get $9
          call $~lib/rt/pure/__release
          local.get $10
          call $~lib/rt/pure/__release
          return
         end
        end
       end
       local.get $26
       f32.const 0
       f32.ge
       if (result i32)
        local.get $26
        f32.const 1
        f32.le
       else
        i32.const 0
       end
       if
        global.get $assembly/math/vec2/vec2
        local.get $7
        local.get $5
        local.get $6
        local.get $26
        call $assembly/math/vec2/Vec2#lerp
        call $~lib/rt/pure/__release
        global.get $assembly/math/vec2/vec2
        local.get $7
        local.get $3
        call $assembly/math/vec2/Vec2#squaredDistance
        local.get $12
        f32.gt
        if
         global.get $assembly/math/vec2/vec2
         local.get $8
         local.get $7
         local.get $9
         call $assembly/math/vec2/Vec2#subtract
         call $~lib/rt/pure/__release
         global.get $assembly/math/vec2/vec2
         local.get $8
         local.get $8
         call $assembly/math/vec2/Vec2#normalize
         call $~lib/rt/pure/__release
         local.get $2
         local.get $1
         local.get $26
         local.get $8
         i32.const -1
         call $assembly/collision/ray/Ray#reportIntersection
         local.get $1
         local.get $2
         call $assembly/collision/raycast-result/RaycastResult#shouldStop
         if
          local.get $1
          call $~lib/rt/pure/__release
          local.get $2
          call $~lib/rt/pure/__release
          local.get $3
          call $~lib/rt/pure/__release
          local.get $5
          call $~lib/rt/pure/__release
          local.get $6
          call $~lib/rt/pure/__release
          local.get $7
          call $~lib/rt/pure/__release
          local.get $8
          call $~lib/rt/pure/__release
          local.get $9
          call $~lib/rt/pure/__release
          local.get $10
          call $~lib/rt/pure/__release
          return
         end
        end
       end
      end
     end
    end
    local.get $15
    f32.const 1
    f32.add
    local.set $15
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/capsule/Capsule#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  f32.load offset=48
  local.set $2
  local.get $0
  f32.load offset=44
  f32.const 0.5
  f32.mul
  local.set $3
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $4
  f32.abs
  local.get $3
  f32.le
  if (result i32)
   local.get $1
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.set $4
   local.get $4
   f32.abs
   local.get $2
   f32.le
  else
   i32.const 0
  end
  if
   i32.const 1
   local.set $5
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.sub
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  local.get $2
  local.get $2
  f32.mul
  f32.le
  if
   i32.const 1
   local.set $5
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.add
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  local.get $2
  local.get $2
  f32.mul
  f32.le
  if
   i32.const 1
   local.set $5
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  i32.const 0
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/math/vec2/Vec2#toLocalFrame (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32) (result i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $4
  f32.neg
  call $~lib/math/NativeMathf.cos
  local.set $5
  local.get $4
  f32.neg
  call $~lib/math/NativeMathf.sin
  local.set $6
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $7
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $8
  local.get $1
  i32.const 0
  local.get $5
  local.get $7
  f32.mul
  local.get $6
  local.get $8
  f32.mul
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  local.get $6
  local.get $7
  f32.mul
  local.get $5
  local.get $8
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  local.set $9
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/shapes/shape/Shape#worldPointToLocal (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $3
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $0
  i32.load offset=4
  local.get $4
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $3
  local.get $4
  i32.load offset=64
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  f32.load offset=88
  local.get $0
  f32.load offset=8
  f32.add
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/capsule/Capsule#get:length (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
 )
 (func $assembly/shapes/capsule/Capsule#set:length (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=44
 )
 (func $assembly/shapes/capsule/Capsule#get:radius (param $0 i32) (result f32)
  local.get $0
  f32.load offset=48
 )
 (func $assembly/shapes/capsule/Capsule#set:radius (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=48
 )
 (func $assembly/shapes/circle/Circle#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 48
   i32.const 85
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 1
  f32.store offset=44
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/Shape/Shape.CIRCLE
  local.get $1
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.get $1
   f32.load offset=24
   f32.store offset=44
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/Shape/Shape#get:body (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Shape/Shape#set:body (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/shapes/Shape/Shape#get:position (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Shape/Shape#set:position (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/shapes/Shape/Shape#get:angle (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $assembly/shapes/Shape/Shape#set:angle (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $assembly/shapes/Shape/Shape#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=12
 )
 (func $assembly/shapes/Shape/Shape#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=12
 )
 (func $assembly/shapes/Shape/Shape#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $assembly/shapes/Shape/Shape#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $assembly/shapes/Shape/Shape#get:boundingRadius (param $0 i32) (result f32)
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/Shape/Shape#set:boundingRadius (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=20
 )
 (func $assembly/shapes/Shape/Shape#get:collisionGroup (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=24
 )
 (func $assembly/shapes/Shape/Shape#set:collisionGroup (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=24
 )
 (func $assembly/shapes/Shape/Shape#get:collisionResponse (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=26
 )
 (func $assembly/shapes/Shape/Shape#set:collisionResponse (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=26
 )
 (func $assembly/shapes/Shape/Shape#get:collisionMask (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=28
 )
 (func $assembly/shapes/Shape/Shape#set:collisionMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=28
 )
 (func $assembly/shapes/Shape/Shape#get:material (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Shape/Shape#set:material (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=32
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=32
 )
 (func $assembly/shapes/Shape/Shape#get:area (param $0 i32) (result f32)
  local.get $0
  f32.load offset=36
 )
 (func $assembly/shapes/Shape/Shape#set:area (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=36
 )
 (func $assembly/shapes/Shape/Shape#get:sensor (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=40
 )
 (func $assembly/shapes/Shape/Shape#set:sensor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=40
 )
 (func $assembly/shapes/circle/Circle#computeMomentOfInertia (param $0 i32) (result f32)
  (local $1 f32)
  local.get $0
  f32.load offset=44
  local.set $1
  local.get $1
  local.get $1
  f32.mul
  f32.const 2
  f32.div
 )
 (func $assembly/shapes/circle/Circle#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  local.get $0
  f32.load offset=44
  f32.store offset=20
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/circle/Circle#updateArea (param $0 i32) (result f32)
  local.get $0
  global.get $~lib/math/NativeMathf.PI
  local.get $0
  f32.load offset=44
  f32.mul
  local.get $0
  f32.load offset=44
  f32.mul
  f32.store offset=36
  local.get $0
  f32.load offset=36
 )
 (func $assembly/shapes/circle/Circle#computeAABB (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  f32.load offset=44
  local.set $3
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load offset=4
  local.get $3
  local.get $3
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $3
  f32.neg
  local.get $3
  f32.neg
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $2
  if
   global.get $assembly/math/vec2/vec2
   local.get $1
   i32.load
   local.get $1
   i32.load
   local.get $2
   call $assembly/math/vec2/Vec2#add
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $1
   i32.load offset=4
   local.get $1
   i32.load offset=4
   local.get $2
   call $assembly/math/vec2/Vec2#add
   call $~lib/rt/pure/__release
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/circle/Circle#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  f32.load offset=44
  local.set $6
  local.get $5
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $5
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  local.set $7
  f32.const 2
  local.get $5
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  local.get $5
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  f32.add
  f32.mul
  local.set $8
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.const 2
  call $~lib/math/NativeMathf.pow
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.add
  local.get $6
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.sub
  local.set $9
  local.get $8
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.const 4
  local.get $7
  f32.mul
  local.get $9
  f32.mul
  f32.sub
  local.set $10
  global.get $assembly/shapes/circle/Ray_intersectSphere_intersectionPoint
  call $~lib/rt/pure/__retain
  local.set $11
  global.get $assembly/shapes/circle/Ray_intersectSphere_normal
  call $~lib/rt/pure/__retain
  local.set $12
  local.get $10
  f32.const 0
  f32.lt
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   return
  else
   local.get $10
   f32.const 0
   f32.eq
   if
    global.get $assembly/math/vec2/vec2
    local.get $11
    local.get $4
    local.get $5
    local.get $10
    call $assembly/math/vec2/Vec2#lerp
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $12
    local.get $11
    local.get $3
    call $assembly/math/vec2/Vec2#subtract
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $12
    local.get $12
    call $assembly/math/vec2/Vec2#normalize
    call $~lib/rt/pure/__release
    local.get $2
    local.get $1
    local.get $10
    local.get $12
    i32.const -1
    call $assembly/collision/ray/Ray#reportIntersection
   else
    local.get $10
    local.set $13
    local.get $13
    f32.sqrt
    local.set $13
    f32.const 1
    f32.const 2
    local.get $7
    f32.mul
    f32.div
    local.set $14
    local.get $8
    f32.neg
    local.get $13
    f32.sub
    local.get $14
    f32.mul
    local.set $15
    local.get $8
    f32.neg
    local.get $13
    f32.add
    local.get $14
    f32.mul
    local.set $16
    local.get $15
    f32.const 0
    f32.ge
    if (result i32)
     local.get $15
     f32.const 1
     f32.le
    else
     i32.const 0
    end
    if
     global.get $assembly/math/vec2/vec2
     local.get $11
     local.get $4
     local.get $5
     local.get $15
     call $assembly/math/vec2/Vec2#lerp
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $12
     local.get $11
     local.get $3
     call $assembly/math/vec2/Vec2#subtract
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $12
     local.get $12
     call $assembly/math/vec2/Vec2#normalize
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $15
     local.get $12
     i32.const -1
     call $assembly/collision/ray/Ray#reportIntersection
     local.get $1
     local.get $2
     call $assembly/collision/raycast-result/RaycastResult#shouldStop
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $4
      call $~lib/rt/pure/__release
      local.get $5
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
      local.get $12
      call $~lib/rt/pure/__release
      return
     end
    end
    local.get $16
    f32.const 0
    f32.ge
    if (result i32)
     local.get $16
     f32.const 1
     f32.le
    else
     i32.const 0
    end
    if
     global.get $assembly/math/vec2/vec2
     local.get $11
     local.get $4
     local.get $5
     local.get $16
     call $assembly/math/vec2/Vec2#lerp
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $12
     local.get $11
     local.get $3
     call $assembly/math/vec2/Vec2#subtract
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $12
     local.get $12
     call $assembly/math/vec2/Vec2#normalize
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $16
     local.get $12
     i32.const -1
     call $assembly/collision/ray/Ray#reportIntersection
    end
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/circle/Circle#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  f32.load offset=44
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  call $assembly/math/vec2/Vec2#squaredLength
  local.get $2
  local.get $2
  f32.mul
  f32.le
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/Shape/Shape#worldPointToLocal (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $3
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   return
  end
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $0
  i32.load offset=4
  local.get $4
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $3
  local.get $4
  i32.load offset=64
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  f32.load offset=88
  local.get $0
  f32.load offset=8
  f32.add
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/circle/Circle#get:radius (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
 )
 (func $assembly/shapes/circle/Circle#set:radius (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=44
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const -2128831035
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_u
    local.set $4
    local.get $4
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     local.set $10
     local.get $0
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $10
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $5
     local.get $1
     call $~lib/rt/pure/__release
     local.get $5
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   drop
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#find
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const 4496
   i32.const 4560
   i32.const 104
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $5
     local.get $1
     call $~lib/rt/pure/__release
     local.get $5
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   drop
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#find
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const 4496
   i32.const 4560
   i32.const 104
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<~lib/object/Object>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/object/Object>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/object/Object>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<~lib/object/Object>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/events/event-emitter/EventEmitter#emit (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#get
  local.set $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#get
  local.set $3
  local.get $1
  local.tee $4
  local.get $0
  local.tee $5
  local.get $4
  i32.load offset=4
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=4
  i32.const 0
  i32.const 2
  i32.const 13
  i32.const 4608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  i32.const 2
  i32.const 16
  i32.const 4624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#get:length
  local.set $4
  loop $for-loop|1
   local.get $7
   i32.const 65535
   i32.and
   local.get $4
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $10
   local.get $10
   if
    local.get $5
    local.get $2
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__get
    local.tee $9
    call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#push
    drop
    local.get $6
    local.get $3
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/object/Object>#__get
    local.tee $11
    call $~lib/array/Array<~lib/object/Object>#push
    drop
    local.get $9
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $7
  local.get $2
  call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#get:length
  local.set $4
  loop $for-loop|3
   local.get $7
   i32.const 65535
   i32.and
   local.get $4
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $2
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__get
    local.set $11
    local.get $3
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/object/Object>#__get
    local.set $12
    local.get $1
    i32.const 1
    global.set $~argumentsLength
    local.get $11
    i32.load
    call_indirect (type $i32_=>_none)
    local.get $11
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|3
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/objects/body/Body#wakeUp (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load16_u offset=136
  local.set $1
  local.get $0
  global.get $assembly/objects/body/Body.AWAKE
  i32.store16 offset=136
  local.get $0
  f32.const 0
  f32.store offset=164
  local.get $1
  global.get $assembly/objects/body/Body.AWAKE
  i32.ne
  if
   local.get $0
   global.get $assembly/objects/body/wakeUpEvent
   call $assembly/events/event-emitter/EventEmitter#emit
   call $~lib/rt/pure/__release
  end
 )
 (func $assembly/constraints/constraint/Constraint#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.eqz
  if
   i32.const 17
   i32.const 43
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store16
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1
  i32.store8 offset=16
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  local.get $3
  i32.store16
  local.get $0
  local.tee $5
  i32.const 0
  i32.const 2
  i32.const 25
  i32.const 4480
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $6
  i32.store offset=4
  local.get $0
  local.tee $6
  local.get $1
  local.tee $5
  local.get $6
  i32.load offset=8
  local.tee $7
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $0
  local.tee $7
  local.get $2
  local.tee $5
  local.get $7
  i32.load offset=12
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $4
  if
   local.get $0
   local.get $4
   i32.load8_u
   i32.store8 offset=16
   local.get $4
   i32.load8_u offset=1
   if
    local.get $1
    call $assembly/objects/body/Body#wakeUp
    local.get $2
    call $assembly/objects/body/Body#wakeUp
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/constraints/constraint/Constraint#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load16_u
 )
 (func $assembly/constraints/constraint/Constraint#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16
 )
 (func $assembly/constraints/constraint/Constraint#get:equations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/constraints/constraint/Constraint#set:equations (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/constraints/constraint/Constraint#get:bodyA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/constraints/constraint/Constraint#set:bodyA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $assembly/constraints/constraint/Constraint#get:bodyB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $assembly/constraints/constraint/Constraint#set:bodyB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $assembly/constraints/constraint/Constraint#get:collideConnected (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=16
 )
 (func $assembly/constraints/constraint/Constraint#set:collideConnected (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=16
 )
 (func $assembly/constraints/constraint/Constraint#update (param $0 i32)
  i32.const 4640
  i32.const 4784
  i32.const 87
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/equations/equation/Equation>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/constraints/constraint/Constraint#setStiffness (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.const 65535
   i32.and
   local.get $2
   call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $6
    local.get $6
    local.get $1
    f32.store offset=20
    local.get $6
    i32.const 1
    i32.store8 offset=52
    local.get $6
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/constraints/constraint/Constraint#setRelaxation (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.const 65535
   i32.and
   local.get $2
   call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $6
    local.get $6
    local.get $1
    f32.store offset=24
    local.get $6
    i32.const 1
    i32.store8 offset=52
    local.get $6
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/constraints/constraint/Constraint#setMaxBias (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.const 65535
   i32.and
   local.get $2
   call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $6
    local.get $6
    local.get $1
    f32.store offset=8
    local.get $6
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/equation/Equation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 f32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.eqz
  if
   i32.const 96
   i32.const 24
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 0
  f32.store
  local.get $0
  f32.const 0
  f32.store offset=4
  local.get $0
  f32.const inf
  f32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=20
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_RELAXATION
  f32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  f32.const 0
  f32.store offset=32
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  f32.const 0
  f32.store offset=40
  local.get $0
  f32.const 0
  f32.store offset=44
  local.get $0
  f32.const 1
  f32.const 60
  f32.div
  f32.store offset=48
  local.get $0
  i32.const 1
  i32.store8 offset=52
  local.get $0
  f32.const 0
  f32.store offset=56
  local.get $0
  f32.const 0
  f32.store offset=60
  local.get $0
  i32.const 1
  i32.store8 offset=64
  local.get $0
  f32.const 0
  f32.store offset=68
  local.get $0
  f32.const 0
  f32.store offset=72
  local.get $0
  f32.const 0
  f32.store offset=76
  local.get $0
  f32.const 0
  f32.store offset=80
  local.get $0
  f32.const 0
  f32.store offset=84
  local.get $0
  i64.const -1
  i64.store offset=88
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $3
  f32.store
  local.get $0
  local.get $4
  f32.store offset=4
  local.get $0
  f32.const inf
  f32.store offset=8
  local.get $0
  local.tee $6
  local.get $1
  local.tee $5
  if (result i32)
   local.get $5
  else
   i32.const 0
  end
  local.tee $5
  local.get $6
  i32.load offset=12
  local.tee $7
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $0
  local.tee $7
  local.get $2
  local.tee $6
  if (result i32)
   local.get $6
  else
   i32.const 0
  end
  local.tee $5
  local.get $7
  i32.load offset=16
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=16
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=20
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_RELAXATION
  f32.store offset=24
  local.get $0
  local.tee $6
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Float32Array#constructor
  local.set $5
  local.get $6
  i32.load offset=28
  call $~lib/rt/pure/__release
  local.get $5
  i32.store offset=28
  i32.const 0
  local.set $6
  loop $for-loop|1
   local.get $6
   i32.const 65535
   i32.and
   i32.const 6
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $0
    i32.load offset=28
    local.get $6
    i32.const 65535
    i32.and
    f32.const 0
    call $~lib/typedarray/Float32Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/contact-equation/ContactEquation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 128
   i32.const 28
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=96
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=100
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=104
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=108
  local.get $0
  f32.const 0
  f32.store offset=112
  local.get $0
  i32.const 0
  i32.store8 offset=116
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=120
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=124
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  f32.const 0
  f32.const inf
  call $assembly/equations/equation/Equation#constructor
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/equation/Equation#get:minForce (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/equations/equation/Equation#set:minForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $assembly/equations/equation/Equation#get:maxForce (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $assembly/equations/equation/Equation#set:maxForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $assembly/equations/equation/Equation#get:maxBias (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $assembly/equations/equation/Equation#set:maxBias (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $assembly/equations/equation/Equation#get:bodyA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/equation/Equation#set:bodyA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $assembly/equations/equation/Equation#get:bodyB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/equation/Equation#set:bodyB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=16
 )
 (func $assembly/equations/equation/Equation#get:stiffness (param $0 i32) (result f32)
  local.get $0
  f32.load offset=20
 )
 (func $assembly/equations/equation/Equation#set:stiffness (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=20
 )
 (func $assembly/equations/equation/Equation#get:relaxation (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/equations/equation/Equation#set:relaxation (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/equations/equation/Equation#get:G (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/equation/Equation#set:G (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=28
 )
 (func $assembly/equations/equation/Equation#get:offset (param $0 i32) (result f32)
  local.get $0
  f32.load offset=32
 )
 (func $assembly/equations/equation/Equation#set:offset (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=32
 )
 (func $assembly/equations/equation/Equation#get:a (param $0 i32) (result f32)
  local.get $0
  f32.load offset=36
 )
 (func $assembly/equations/equation/Equation#set:a (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=36
 )
 (func $assembly/equations/equation/Equation#get:b (param $0 i32) (result f32)
  local.get $0
  f32.load offset=40
 )
 (func $assembly/equations/equation/Equation#set:b (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=40
 )
 (func $assembly/equations/equation/Equation#get:epsilon (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
 )
 (func $assembly/equations/equation/Equation#set:epsilon (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=44
 )
 (func $assembly/equations/equation/Equation#get:timeStep (param $0 i32) (result f32)
  local.get $0
  f32.load offset=48
 )
 (func $assembly/equations/equation/Equation#set:timeStep (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=48
 )
 (func $assembly/equations/equation/Equation#get:needsUpdate (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=52
 )
 (func $assembly/equations/equation/Equation#set:needsUpdate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=52
 )
 (func $assembly/equations/equation/Equation#get:multiplier (param $0 i32) (result f32)
  local.get $0
  f32.load offset=56
 )
 (func $assembly/equations/equation/Equation#set:multiplier (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=56
 )
 (func $assembly/equations/equation/Equation#get:relativeVelocity (param $0 i32) (result f32)
  local.get $0
  f32.load offset=60
 )
 (func $assembly/equations/equation/Equation#set:relativeVelocity (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=60
 )
 (func $assembly/equations/equation/Equation#get:enabled (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=64
 )
 (func $assembly/equations/equation/Equation#set:enabled (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=64
 )
 (func $assembly/equations/equation/Equation#get:maxForceDt (param $0 i32) (result f32)
  local.get $0
  f32.load offset=68
 )
 (func $assembly/equations/equation/Equation#set:maxForceDt (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=68
 )
 (func $assembly/equations/equation/Equation#get:minForceDt (param $0 i32) (result f32)
  local.get $0
  f32.load offset=72
 )
 (func $assembly/equations/equation/Equation#set:minForceDt (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=72
 )
 (func $assembly/equations/equation/Equation#get:invC (param $0 i32) (result f32)
  local.get $0
  f32.load offset=76
 )
 (func $assembly/equations/equation/Equation#set:invC (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=76
 )
 (func $assembly/equations/equation/Equation#get:B (param $0 i32) (result f32)
  local.get $0
  f32.load offset=80
 )
 (func $assembly/equations/equation/Equation#set:B (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=80
 )
 (func $assembly/equations/equation/Equation#get:lambda (param $0 i32) (result f32)
  local.get $0
  f32.load offset=84
 )
 (func $assembly/equations/equation/Equation#set:lambda (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=84
 )
 (func $assembly/equations/equation/Equation#get:index (param $0 i32) (result i64)
  local.get $0
  i64.load offset=88
 )
 (func $assembly/equations/equation/Equation#set:index (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store offset=88
 )
 (func $assembly/equations/equation/Equation#gmult (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 i32) (param $5 f32) (result f32)
  (local $6 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.get $3
  f32.mul
  f32.add
  local.get $1
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $1
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  f32.mul
  f32.add
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/equations/equation/Equation#computeGq (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  f32.load offset=88
  local.set $5
  local.get $3
  f32.load offset=88
  local.set $6
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $7
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $8
  local.get $0
  local.get $1
  local.get $7
  local.get $5
  local.get $8
  local.get $6
  call $assembly/equations/equation/Equation#gmult
  local.get $0
  f32.load offset=32
  f32.add
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/equation/Equation#update (param $0 i32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  f32.load offset=20
  local.set $1
  local.get $0
  f32.load offset=24
  local.set $2
  local.get $0
  f32.load offset=48
  local.set $3
  local.get $0
  f32.const 4
  local.get $3
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.mul
  f32.div
  f32.store offset=36
  local.get $0
  f32.const 4
  local.get $2
  f32.mul
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.div
  f32.store offset=40
  local.get $0
  f32.const 4
  local.get $3
  local.get $3
  f32.mul
  local.get $1
  f32.mul
  f32.const 1
  f32.const 4
  local.get $2
  f32.mul
  f32.add
  f32.mul
  f32.div
  f32.store offset=44
  local.get $0
  i32.const 0
  i32.store8 offset=52
 )
 (func $assembly/math/vec2/Vec2#crossLength (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.sub
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/equation/Equation#computeGW (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.load offset=76
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=76
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=100
  local.set $7
  local.get $3
  f32.load offset=100
  local.set $8
  local.get $0
  local.get $1
  local.get $5
  local.get $7
  local.get $6
  local.get $8
  call $assembly/equations/equation/Equation#gmult
  local.get $0
  f32.load offset=60
  f32.add
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/contact-equation/addSubSub (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.add
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.add
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/equation/Equation#computeGiMf (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.eqz
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  f32.load offset=108
  local.set $5
  local.get $2
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=108
  local.set $7
  local.get $1
  f32.load offset=48
  local.set $8
  local.get $2
  f32.load offset=48
  local.set $9
  local.get $1
  f32.load offset=52
  local.set $10
  local.get $2
  f32.load offset=52
  local.set $11
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $12
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $13
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $14
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $4
  local.get $8
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $1
  i32.load offset=60
  local.get $13
  call $assembly/math/vec2/Vec2#multiply
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $6
  local.get $9
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $2
  i32.load offset=60
  local.get $14
  call $assembly/math/vec2/Vec2#multiply
  call $~lib/rt/pure/__release
  local.get $0
  local.get $12
  local.get $13
  local.get $5
  local.get $10
  f32.mul
  local.get $14
  local.get $7
  local.get $11
  f32.mul
  call $assembly/equations/equation/Equation#gmult
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/contact-equation/ContactEquation#computeB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 i32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.load offset=96
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $4
  if (result i32)
   local.get $4
   i32.load offset=64
   call $~lib/rt/pure/__retain
  else
   i32.const 0
   i32.const 2
   call $~lib/typedarray/Float32Array#constructor
  end
  local.set $8
  local.get $5
  if (result i32)
   local.get $5
   i32.load offset=64
   call $~lib/rt/pure/__retain
  else
   i32.const 0
   i32.const 2
   call $~lib/typedarray/Float32Array#constructor
  end
  local.set $9
  local.get $0
  i32.load offset=108
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $11
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $10
  call $assembly/math/vec2/Vec2#crossLength
  local.set $12
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $10
  call $assembly/math/vec2/Vec2#crossLength
  local.set $13
  local.get $11
  i32.const 0
  local.get $10
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 1
  local.get $10
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 2
  local.get $12
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 3
  local.get $10
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 4
  local.get $10
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 5
  local.get $13
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.load8_u offset=116
  if (result i32)
   local.get $0
   f32.load offset=112
   f32.const 0
   f32.ne
  else
   i32.const 0
  end
  if
   f32.const 0
   local.set $15
   f32.const 1
   local.get $2
   f32.div
   f32.const 1
   local.get $0
   f32.load offset=112
   f32.add
   f32.mul
   local.get $0
   call $assembly/equations/equation/Equation#computeGW
   f32.mul
   local.set $14
  else
   local.get $0
   i32.load offset=100
   call $~lib/rt/pure/__retain
   local.set $16
   local.get $16
   local.get $9
   local.get $7
   local.get $8
   local.get $6
   call $assembly/equations/contact-equation/addSubSub
   global.get $assembly/math/vec2/vec2
   local.get $10
   local.get $16
   call $assembly/math/vec2/Vec2#dot
   local.get $0
   f32.load offset=32
   f32.add
   local.set $15
   local.get $0
   call $assembly/equations/equation/Equation#computeGW
   local.set $14
   local.get $16
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $assembly/equations/equation/Equation#computeGiMf
  local.set $17
  local.get $15
  f32.neg
  local.get $1
  f32.mul
  local.get $14
  local.get $2
  f32.mul
  f32.sub
  local.get $3
  local.get $17
  f32.mul
  f32.sub
  local.set $18
  local.get $18
  local.set $19
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $19
 )
 (func $assembly/equations/equation/Equation#computeGWlambda (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   f32.const 0
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.load offset=80
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.load offset=80
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  f32.load offset=84
  local.set $7
  local.get $3
  f32.load offset=84
  local.set $8
  local.get $0
  local.get $1
  local.get $5
  local.get $7
  local.get $6
  local.get $8
  call $assembly/equations/equation/Equation#gmult
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/equation/Equation#computeGiMGt (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.eqz
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  f32.load offset=48
  local.set $4
  local.get $2
  f32.load offset=48
  local.set $5
  local.get $1
  f32.load offset=52
  local.set $6
  local.get $2
  f32.load offset=52
  local.set $7
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $4
  f32.mul
  local.get $1
  i32.load offset=60
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $4
  f32.mul
  local.get $1
  i32.load offset=60
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $6
  f32.mul
  f32.add
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $5
  f32.mul
  local.get $2
  i32.load offset=60
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $5
  f32.mul
  local.get $2
  i32.load offset=60
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $7
  f32.mul
  f32.add
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/equation/Equation#updateJacobian (param $0 i32)
  nop
 )
 (func $assembly/equations/equation/addToVLambda (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (param $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.const 0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  local.get $3
  f32.mul
  local.get $4
  f32.mul
  local.get $5
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $2
  local.get $3
  f32.mul
  local.get $4
  f32.mul
  local.get $5
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/equation/Equation#addToWlambda (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.eqz
  end
  if
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  f32.load offset=48
  local.set $4
  local.get $3
  f32.load offset=48
  local.set $5
  local.get $2
  f32.load offset=52
  local.set $6
  local.get $3
  f32.load offset=52
  local.set $7
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $2
  i32.load offset=80
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $4
  local.get $1
  local.get $2
  i32.load offset=60
  call $assembly/equations/equation/addToVLambda
  local.get $2
  local.get $2
  f32.load offset=84
  local.get $6
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  f32.mul
  f32.add
  f32.store offset=84
  local.get $3
  i32.load offset=80
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.get $8
  i32.const 4
  call $~lib/typedarray/Float32Array#__get
  local.get $5
  local.get $1
  local.get $3
  i32.load offset=60
  call $assembly/equations/equation/addToVLambda
  local.get $3
  local.get $3
  f32.load offset=84
  local.get $7
  local.get $8
  i32.const 5
  call $~lib/typedarray/Float32Array#__get
  f32.mul
  local.get $1
  f32.mul
  f32.add
  f32.store offset=84
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $assembly/equations/equation/Equation#computeInvC (param $0 i32) (param $1 f32) (result f32)
  (local $2 f32)
  f32.const 1
  local.get $0
  call $assembly/equations/equation/Equation#computeGiMGt
  local.get $1
  f32.add
  f32.div
  local.set $2
  local.get $2
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:contactPointA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=96
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:contactPointA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=96
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=96
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:penetrationVec (param $0 i32) (result i32)
  local.get $0
  i32.load offset=100
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:penetrationVec (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=100
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=100
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:contactPointB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=104
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:contactPointB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=104
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=104
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:normalA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=108
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:normalA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=108
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=108
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:restitution (param $0 i32) (result f32)
  local.get $0
  f32.load offset=112
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:restitution (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=112
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:firstImpact (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=116
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:firstImpact (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=116
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:shapeA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=120
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:shapeA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=120
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=120
 )
 (func $assembly/equations/contact-equation/ContactEquation#get:shapeB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=124
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/contact-equation/ContactEquation#set:shapeB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=124
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=124
 )
 (func $assembly/math/vec2/Vec2#crossVZ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  global.get $~lib/math/NativeMathf.PI
  f32.neg
  f32.const 2
  f32.div
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $1
  local.get $3
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/objects/body/Body#getVelocityAtPoint (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  local.get $0
  f32.load offset=100
  call $assembly/math/vec2/Vec2#crossVZ
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $0
  i32.load offset=76
  local.get $1
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  local.get $1
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/contact-equation/ContactEquation#getVelocityAlongNormal (param $0 i32) (result f32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 1728
   i32.const 4880
   i32.const 137
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/equations/contact-equation/vi
  local.get $0
  i32.load offset=96
  call $assembly/objects/body/Body#getVelocityAtPoint
  call $~lib/rt/pure/__release
  local.get $0
  i32.load offset=16
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 1728
   i32.const 4880
   i32.const 138
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/equations/contact-equation/vj
  local.get $0
  i32.load offset=104
  call $assembly/objects/body/Body#getVelocityAtPoint
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/equations/contact-equation/relVel
  global.get $assembly/equations/contact-equation/vi
  global.get $assembly/equations/contact-equation/vj
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=108
  global.get $assembly/equations/contact-equation/relVel
  call $assembly/math/vec2/Vec2#dot
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 4976
   i32.const 560
   i32.const 300
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#create (param $0 i32) (result i32)
  i32.const 0
  i32.const 0
  i32.const 0
  call $assembly/equations/contact-equation/ContactEquation#constructor
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#resize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  loop $while-continue|0
   local.get $2
   call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length
   local.get $1
   i32.gt_s
   local.set $3
   local.get $3
   if
    local.get $2
    call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#pop
    call $~lib/rt/pure/__release
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $2
   call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length
   local.get $1
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $2
    local.get $0
    call $assembly/utils/contact-equation-pool/ContactEquationPool#create
    local.tee $4
    call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#push
    drop
    local.get $4
    call $~lib/rt/pure/__release
    br $while-continue|1
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 35
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 32
  i32.const 5024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $1
  call $assembly/utils/contact-equation-pool/ContactEquationPool#resize
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#get:objects (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#set:objects (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#get (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length
  if (result i32)
   local.get $1
   call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#pop
  else
   local.get $0
   call $assembly/utils/contact-equation-pool/ContactEquationPool#create
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#destroy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  local.tee $6
  local.get $1
  local.tee $2
  i32.const 0
  local.tee $3
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=16
  local.get $3
  local.tee $5
  local.get $6
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/utils/contact-equation-pool/ContactEquationPool#release (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  call $assembly/utils/contact-equation-pool/ContactEquationPool#destroy
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#push
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/material/contact-material/ContactMaterial#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 44
   i32.const 40
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  f32.const 0.30000001192092896
  f32.store offset=12
  local.get $0
  f32.const 0
  f32.store offset=16
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=20
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_RELAXATION
  f32.store offset=24
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_STIFFNESS
  f32.store offset=28
  local.get $0
  global.get $assembly/equations/equation/Equation.DEFAULT_RELAXATION
  f32.store offset=32
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  f32.const 0.004999999888241291
  f32.store offset=40
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   i32.const 1
   i32.eqz
  end
  drop
  local.get $0
  global.get $assembly/material/contact-material/ContactMaterial.idCounter
  i32.const 1
  i32.add
  global.set $assembly/material/contact-material/ContactMaterial.idCounter
  global.get $assembly/material/contact-material/ContactMaterial.idCounter
  i32.store
  local.get $0
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load offset=4
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=4
  local.get $0
  local.tee $6
  local.get $2
  local.tee $5
  local.get $6
  i32.load offset=8
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $3
  if
   local.get $0
   local.get $3
   f32.load
   f32.store offset=12
   local.get $0
   local.get $3
   f32.load offset=4
   f32.store offset=16
   local.get $0
   local.get $3
   f32.load offset=8
   f32.store offset=20
   local.get $0
   local.get $3
   f32.load offset=12
   f32.store offset=24
   local.get $0
   local.get $3
   f32.load offset=16
   f32.store offset=28
   local.get $0
   local.get $3
   f32.load offset=20
   f32.store offset=32
   local.get $0
   local.get $3
   f32.load offset=24
   f32.store offset=36
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/material/contact-material/ContactMaterial#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $assembly/material/contact-material/ContactMaterial#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $assembly/material/contact-material/ContactMaterial#get:materialA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/material/contact-material/ContactMaterial#set:materialA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/material/contact-material/ContactMaterial#get:materialB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/material/contact-material/ContactMaterial#set:materialB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $assembly/material/contact-material/ContactMaterial#get:friction (param $0 i32) (result f32)
  local.get $0
  f32.load offset=12
 )
 (func $assembly/material/contact-material/ContactMaterial#set:friction (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=12
 )
 (func $assembly/material/contact-material/ContactMaterial#get:restitution (param $0 i32) (result f32)
  local.get $0
  f32.load offset=16
 )
 (func $assembly/material/contact-material/ContactMaterial#set:restitution (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=16
 )
 (func $assembly/material/contact-material/ContactMaterial#get:stiffness (param $0 i32) (result f32)
  local.get $0
  f32.load offset=20
 )
 (func $assembly/material/contact-material/ContactMaterial#set:stiffness (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=20
 )
 (func $assembly/material/contact-material/ContactMaterial#get:relaxation (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/material/contact-material/ContactMaterial#set:relaxation (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/material/contact-material/ContactMaterial#get:frictionStiffness (param $0 i32) (result f32)
  local.get $0
  f32.load offset=28
 )
 (func $assembly/material/contact-material/ContactMaterial#set:frictionStiffness (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=28
 )
 (func $assembly/material/contact-material/ContactMaterial#get:frictionRelaxation (param $0 i32) (result f32)
  local.get $0
  f32.load offset=32
 )
 (func $assembly/material/contact-material/ContactMaterial#set:frictionRelaxation (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=32
 )
 (func $assembly/material/contact-material/ContactMaterial#get:surfaceVelocity (param $0 i32) (result f32)
  local.get $0
  f32.load offset=36
 )
 (func $assembly/material/contact-material/ContactMaterial#set:surfaceVelocity (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=36
 )
 (func $assembly/material/contact-material/ContactMaterial#get:contactSkinSize (param $0 i32) (result f32)
  local.get $0
  f32.load offset=40
 )
 (func $assembly/material/contact-material/ContactMaterial#set:contactSkinSize (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=40
 )
 (func $assembly/shapes/convex/Convex.triangleArea (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  f32.mul
  f32.sub
  f32.const 0.5
  f32.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/convex/Convex#updateBoundingRadius (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  f32.const 0
  local.set $2
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 0
   i32.eq
  end
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.ne
   local.set $6
   local.get $6
   if
    global.get $assembly/math/vec2/vec2
    local.get $1
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.tee $7
    call $assembly/math/vec2/Vec2#squaredLength
    local.set $3
    local.get $3
    local.get $2
    f32.gt
    if
     local.get $3
     local.set $2
    end
    local.get $7
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $2
  local.set $3
  local.get $3
  f32.sqrt
  f32.store offset=20
  local.get $0
  f32.load offset=20
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/convex/Convex#updateTriangles (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=52
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Uint16Array>#set:length
  i32.const 0
  i32.const 2
  i32.const 63
  i32.const 5088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   i32.const 65535
   i32.and
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $0
    i32.load offset=44
    local.get $1
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $5
    local.get $2
    local.get $5
    i32.const 0
    call $~lib/typedarray/Float32Array#__get
    call $~lib/array/Array<f32>#push
    drop
    local.get $2
    local.get $5
    i32.const 1
    call $~lib/typedarray/Float32Array#__get
    call $~lib/array/Array<f32>#push
    drop
    local.get $5
    call $~lib/rt/pure/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  local.get $2
  call $assembly/math/polyk/Triangulate
  local.set $1
  i32.const 0
  local.set $4
  loop $for-loop|3
   local.get $4
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<u16>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $1
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $8
    local.get $1
    local.get $4
    i32.const 1
    i32.add
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $7
    local.get $1
    local.get $4
    i32.const 2
    i32.add
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    local.set $6
    i32.const 0
    i32.const 3
    call $~lib/typedarray/Uint16Array#constructor
    local.set $10
    local.get $10
    i32.const 0
    local.get $8
    call $~lib/typedarray/Uint16Array#__set
    local.get $10
    i32.const 1
    local.get $7
    call $~lib/typedarray/Uint16Array#__set
    local.get $10
    i32.const 2
    local.get $6
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.load offset=52
    local.get $10
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#push
    drop
    local.get $10
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 3
    i32.add
    local.set $4
    br $for-loop|3
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#updateArea (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  local.get $0
  i32.load offset=44
  i32.eqz
  if
   f32.const 0
   return
  end
  local.get $0
  call $assembly/shapes/convex/Convex#updateTriangles
  local.get $0
  f32.const 0
  f32.store offset=36
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint16Array>#get:length
   i32.ne
   local.set $4
   local.get $4
   if
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#__get
    local.set $5
    local.get $2
    local.get $5
    i32.const 0
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $6
    local.get $2
    local.get $5
    i32.const 1
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $7
    local.get $2
    local.get $5
    i32.const 2
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $8
    local.get $6
    local.get $7
    local.get $8
    call $assembly/shapes/convex/Convex.triangleArea
    local.set $9
    local.get $0
    local.get $0
    f32.load offset=36
    local.get $9
    f32.add
    f32.store offset=36
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  f32.load offset=36
  local.set $9
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $assembly/shapes/convex/Convex#updateNormals (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=48
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $5
    local.get $1
    local.get $3
    i32.const 1
    i32.add
    local.get $1
    call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
    i32.rem_s
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $6
    local.get $2
    local.get $3
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $7
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $6
    local.get $5
    call $assembly/math/vec2/Vec2#subtract
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $7
    call $assembly/math/vec2/Vec2#rotate90cw
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $7
    call $assembly/math/vec2/Vec2#normalize
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#updateCenterOfMass (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  (local $17 i32)
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=56
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/shapes/convex/updateCenterOfMass_centroid
  call $~lib/rt/pure/__retain
  local.set $4
  global.get $assembly/shapes/convex/updateCenterOfMass_a
  call $~lib/rt/pure/__retain
  local.set $5
  global.get $assembly/shapes/convex/updateCenterOfMass_b
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/convex/updateCenterOfMass_c
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/convex/updateCenterOfMass_centroid_times_mass
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/math/vec2/vec2
  local.get $3
  f32.const 0
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  f32.const 0
  local.set $9
  i32.const 0
  local.set $10
  loop $for-loop|1
   local.get $10
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<~lib/typedarray/Uint16Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $15
   local.get $15
   if
    local.get $1
    local.get $10
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Uint16Array>#__get
    local.set $14
    local.get $2
    local.get $14
    i32.const 0
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $13
    local.get $2
    local.get $14
    i32.const 1
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $12
    local.get $2
    local.get $14
    i32.const 2
    call $~lib/typedarray/Uint16Array#__get
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $17
    global.get $assembly/math/vec2/vec2
    local.get $4
    local.get $13
    local.get $12
    local.get $17
    call $assembly/math/vec2/Vec2#centroid
    call $~lib/rt/pure/__release
    local.get $13
    local.get $12
    local.get $17
    call $assembly/shapes/convex/Convex.triangleArea
    local.set $16
    local.get $9
    local.get $16
    f32.add
    local.set $9
    global.get $assembly/math/vec2/vec2
    local.get $8
    local.get $4
    local.get $16
    call $assembly/math/vec2/Vec2#scale
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $3
    local.get $3
    local.get $8
    call $assembly/math/vec2/Vec2#add
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $17
    call $~lib/rt/pure/__release
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|1
   end
  end
  global.get $assembly/math/vec2/vec2
  local.get $3
  local.get $3
  f32.const 1
  local.get $9
  f32.div
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.eqz
  if
   i32.const 60
   i32.const 87
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 5200
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=44
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 5216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=48
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 62
  i32.const 5232
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=52
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=56
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  i32.const 65535
  i32.and
  if (result i32)
   local.get $1
  else
   global.get $assembly/shapes/Shape/Shape.CONVEX
  end
  local.get $3
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  i32.const 0
  local.set $4
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $2
   local.tee $5
   local.get $4
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $4
  else
   i32.const 0
   i32.const 2
   i32.const 6
   i32.const 5040
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   local.set $4
  end
  local.get $0
  local.tee $5
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 5056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.load offset=44
  call $~lib/rt/pure/__release
  local.get $6
  i32.store offset=44
  local.get $0
  local.tee $5
  i32.const 0
  i32.const 2
  i32.const 6
  i32.const 5072
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $5
  i32.load offset=48
  call $~lib/rt/pure/__release
  local.get $6
  i32.store offset=48
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $4
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $0
    i32.load offset=44
    global.get $assembly/math/vec2/vec2
    local.get $4
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.tee $7
    call $assembly/math/vec2/Vec2#clone
    local.tee $8
    call $~lib/array/Array<~lib/typedarray/Float32Array>#push
    drop
    local.get $0
    i32.load offset=48
    global.get $assembly/math/vec2/vec2
    call $assembly/math/vec2/Vec2#create
    local.tee $9
    call $~lib/array/Array<~lib/typedarray/Float32Array>#push
    drop
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  call $assembly/shapes/convex/Convex#updateBoundingRadius
  drop
  local.get $0
  call $assembly/shapes/convex/Convex#updateArea
  drop
  local.get $0
  call $assembly/shapes/convex/Convex#updateNormals
  local.get $0
  local.tee $7
  i32.const 0
  i32.const 2
  i32.const 62
  i32.const 5104
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $7
  i32.load offset=52
  call $~lib/rt/pure/__release
  local.get $8
  i32.store offset=52
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  if
   local.get $0
   call $assembly/shapes/convex/Convex#updateTriangles
   local.get $0
   call $assembly/shapes/convex/Convex#updateCenterOfMass
  end
  local.get $0
  f32.const 0
  f32.store offset=20
  local.get $0
  call $assembly/shapes/convex/Convex#updateBoundingRadius
  drop
  local.get $0
  call $assembly/shapes/convex/Convex#updateArea
  drop
  local.get $0
  f32.load offset=36
  f32.const 0
  f32.lt
  if
   i32.const 800
   i32.const 5120
   i32.const 118
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/convex/Convex#computeMomentOfInertia (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  f32.const 0
  local.set $1
  f32.const 0
  local.set $2
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  local.set $3
  local.get $3
  i32.const 1
  i32.sub
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $0
    i32.load offset=44
    local.get $4
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $7
    local.get $0
    i32.load offset=44
    local.get $5
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $8
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $8
    call $assembly/math/vec2/Vec2#crossLength
    local.set $9
    local.get $9
    f32.abs
    local.set $9
    global.get $assembly/math/vec2/vec2
    local.get $8
    local.get $8
    call $assembly/math/vec2/Vec2#dot
    global.get $assembly/math/vec2/vec2
    local.get $8
    local.get $7
    call $assembly/math/vec2/Vec2#dot
    f32.add
    global.get $assembly/math/vec2/vec2
    local.get $7
    local.get $7
    call $assembly/math/vec2/Vec2#dot
    f32.add
    local.set $10
    local.get $1
    local.get $9
    local.get $10
    f32.mul
    f32.add
    local.set $1
    local.get $2
    local.get $9
    f32.add
    local.set $2
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $5
    local.set $4
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  f32.const 1
  f32.const 6
  f32.div
  local.get $1
  local.get $2
  f32.div
  f32.mul
 )
 (func $assembly/shapes/convex/Convex#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  local.get $0
  i32.load offset=44
  local.get $2
  local.get $3
  f32.const 0
  call $assembly/collision/aabb/AABB#setFromPoints
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/shapes/convex/intersectConvex_rayStart
  call $~lib/rt/pure/__retain
  local.set $5
  global.get $assembly/shapes/convex/intersectConvex_rayEnd
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/convex/intersectConvex_normal
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/math/vec2/vec2
  local.get $5
  local.get $2
  i32.load
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $2
  i32.load offset=4
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  local.set $9
  i32.const 0
  local.set $10
  loop $for-loop|0
   local.get $10
   local.get $9
   i32.lt_s
   if (result i32)
    local.get $1
    local.get $2
    call $assembly/collision/raycast-result/RaycastResult#shouldStop
    i32.eqz
   else
    i32.const 0
   end
   local.set $11
   local.get $11
   if
    local.get $8
    local.get $10
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $12
    local.get $8
    local.get $10
    i32.const 1
    i32.add
    local.get $9
    i32.rem_s
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $13
    global.get $assembly/math/vec2/vec2
    local.get $5
    local.get $6
    local.get $12
    local.get $13
    call $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction
    local.set $14
    local.get $14
    f32.const 0
    f32.ge
    if
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $13
     local.get $12
     call $assembly/math/vec2/Vec2#subtract
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     global.get $~lib/math/NativeMathf.PI
     f32.neg
     f32.const 2
     f32.div
     local.get $4
     f32.add
     call $assembly/math/vec2/Vec2#rotate
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     call $assembly/math/vec2/Vec2#normalize
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $14
     local.get $7
     local.get $10
     call $assembly/collision/ray/Ray#reportIntersection
    end
    local.get $12
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|0
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/shapes/convex/pic_r0
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/shapes/convex/pic_r1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $4
  f32.const -1
  local.set $5
  local.get $4
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $7
   i32.const 65535
   i32.and
   local.get $6
   i32.const 1
   i32.add
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $10
   local.get $10
   if
    local.get $4
    local.get $7
    i32.const 65535
    i32.and
    local.get $6
    i32.const 65535
    i32.and
    i32.rem_u
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $9
    local.get $4
    local.get $7
    i32.const 1
    i32.add
    i32.const 65535
    i32.and
    local.get $6
    i32.const 65535
    i32.and
    i32.rem_u
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $12
    global.get $assembly/math/vec2/vec2
    local.get $2
    local.get $9
    local.get $1
    call $assembly/math/vec2/Vec2#subtract
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $3
    local.get $12
    local.get $1
    call $assembly/math/vec2/Vec2#subtract
    call $~lib/rt/pure/__release
    global.get $assembly/math/vec2/vec2
    local.get $2
    local.get $3
    call $assembly/math/vec2/Vec2#crossLength
    local.set $11
    local.get $5
    f32.const -1
    f32.eq
    if
     local.get $11
     local.set $5
    end
    local.get $11
    local.get $5
    f32.mul
    f32.const 0
    f32.lt
    if
     i32.const 0
     local.set $13
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
     local.get $12
     call $~lib/rt/pure/__release
     local.get $13
     return
    end
    local.get $11
    local.set $5
    local.get $9
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  i32.const 1
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $assembly/shapes/convex/Convex#get:vertices (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/convex/Convex#set:vertices (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=44
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=44
 )
 (func $assembly/shapes/convex/Convex#get:normals (param $0 i32) (result i32)
  local.get $0
  i32.load offset=48
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/convex/Convex#set:normals (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=48
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=48
 )
 (func $assembly/shapes/convex/Convex#get:triangles (param $0 i32) (result i32)
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/convex/Convex#set:triangles (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=52
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=52
 )
 (func $assembly/shapes/convex/Convex#get:centerOfMass (param $0 i32) (result i32)
  local.get $0
  i32.load offset=56
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/convex/Convex#set:centerOfMass (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=56
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=56
 )
 (func $assembly/shapes/convex/Convex#projectOntoLocalAxis (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  f32.const inf
  f32.neg
  local.set $3
  f32.const inf
  local.set $4
  i32.const 0
  local.set $5
  f32.const 0
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $7
   i32.const 65535
   i32.and
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $0
    i32.load offset=44
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $10
    local.get $5
    call $~lib/rt/pure/__release
    local.get $10
    local.set $5
    global.get $assembly/math/vec2/vec2
    local.get $5
    local.get $1
    call $assembly/math/vec2/Vec2#dot
    local.set $6
    local.get $6
    local.get $3
    f32.gt
    if
     local.get $6
     local.set $3
    end
    local.get $6
    local.get $4
    f32.lt
    if
     local.get $6
     local.set $4
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  local.get $4
  local.get $3
  f32.gt
  if
   local.get $4
   local.set $11
   local.get $3
   local.set $4
   local.get $11
   local.set $3
  end
  global.get $assembly/math/vec2/vec2
  local.get $2
  local.get $4
  local.get $3
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/convex/Convex#ConvexprojectOntoWorldAxis (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $assembly/shapes/convex/Convex#projectOntoLocalAxis
  local.get $3
  f32.const 0
  f32.ne
  if
   global.get $assembly/math/vec2/vec2
   global.get $assembly/shapes/convex/worldAxis
   local.get $1
   local.get $3
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
  else
   local.get $1
   local.tee $5
   global.get $assembly/shapes/convex/worldAxis
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   global.set $assembly/shapes/convex/worldAxis
  end
  global.get $assembly/math/vec2/vec2
  local.get $2
  global.get $assembly/shapes/convex/worldAxis
  call $assembly/math/vec2/Vec2#dot
  local.set $7
  global.get $assembly/math/vec2/vec2
  local.get $4
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $7
  f32.add
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $7
  f32.add
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $assembly/math/vec2/Vec2#length (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $2
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  local.get $2
  local.get $2
  f32.mul
  local.get $3
  local.get $3
  f32.mul
  f32.add
  local.set $4
  local.get $4
  f32.sqrt
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/equations/distance-equation/DistanceEquation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32) (param $5 f32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.eqz
  if
   i32.const 112
   i32.const 90
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store offset=96
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=100
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=104
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=108
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  call $assembly/equations/equation/Equation#constructor
  local.set $0
  local.get $0
  local.tee $6
  local.get $1
  local.tee $7
  local.get $6
  i32.load offset=96
  local.tee $8
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=96
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#setMaxForce (param $0 i32) (param $1 f32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<assembly/equations/equation/Equation>#__get
  local.set $2
  local.get $2
  local.get $1
  f32.neg
  f32.store
  local.get $2
  local.get $1
  f32.store offset=4
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.eqz
  if
   i32.const 56
   i32.const 88
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=20
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=24
  local.get $0
  f32.const 0
  f32.store offset=28
  local.get $0
  f32.const inf
  f32.store offset=32
  local.get $0
  i32.const 0
  i32.store8 offset=36
  local.get $0
  f32.const 1
  f32.store offset=40
  local.get $0
  i32.const 0
  i32.store8 offset=44
  local.get $0
  f32.const 0
  f32.store offset=48
  local.get $0
  f32.const 0
  f32.store offset=52
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  global.get $assembly/constraints/constraint/Constraint.DISTANCE
  local.get $3
  call $assembly/constraints/constraint/Constraint#constructor
  local.set $0
  local.get $3
  if
   local.get $3
   i32.load offset=4
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=20
    local.get $3
    i32.load offset=4
    local.tee $4
    if (result i32)
     local.get $4
    else
     i32.const 1728
     i32.const 5248
     i32.const 113
     i32.const 58
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.load offset=8
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=24
    local.get $3
    i32.load offset=8
    local.tee $4
    if (result i32)
     local.get $4
    else
     i32.const 1728
     i32.const 5248
     i32.const 114
     i32.const 58
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $0
   local.get $3
   f32.load offset=12
   f32.store offset=28
   local.get $0
   local.get $3
   f32.load offset=16
   f32.store offset=32
  end
  local.get $0
  f32.load offset=28
  f32.const -1
  f32.eq
  if
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
   local.set $4
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
   local.set $5
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
   local.set $6
   global.get $assembly/math/vec2/vec2
   local.get $4
   local.get $0
   i32.load offset=20
   local.get $1
   f32.load offset=88
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $5
   local.get $0
   i32.load offset=24
   local.get $2
   f32.load offset=88
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $6
   local.get $2
   i32.load offset=64
   local.get $5
   call $assembly/math/vec2/Vec2#add
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $6
   local.get $6
   local.get $4
   call $assembly/math/vec2/Vec2#subtract
   call $~lib/rt/pure/__release
   global.get $assembly/math/vec2/vec2
   local.get $6
   local.get $6
   local.get $1
   i32.load offset=64
   call $assembly/math/vec2/Vec2#subtract
   call $~lib/rt/pure/__release
   local.get $0
   global.get $assembly/math/vec2/vec2
   local.get $6
   call $assembly/math/vec2/Vec2#length
   f32.store offset=28
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
  end
  i32.const 0
  local.get $0
  local.get $1
  local.get $2
  local.get $0
  f32.load offset=32
  f32.neg
  local.get $0
  f32.load offset=32
  call $assembly/equations/distance-equation/DistanceEquation#constructor
  local.set $6
  local.get $0
  local.tee $7
  i32.const 1
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $4
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $5
  local.set $5
  local.get $7
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $5
  i32.store offset=4
  local.get $0
  local.get $0
  f32.load offset=32
  call $assembly/constraints/distance-constraint/DistanceConstraint#setMaxForce
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#update (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load offset=64
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load offset=64
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<assembly/equations/equation/Equation>#__get
  local.set $5
  local.get $5
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/ri
  local.get $0
  i32.load offset=20
  local.get $1
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/rj
  local.get $0
  i32.load offset=24
  local.get $2
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/n
  local.get $4
  global.get $assembly/constraints/distance-constraint/rj
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/n
  global.get $assembly/constraints/distance-constraint/n
  global.get $assembly/constraints/distance-constraint/ri
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/n
  global.get $assembly/constraints/distance-constraint/n
  local.get $3
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  local.get $0
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/n
  call $assembly/math/vec2/Vec2#length
  f32.store offset=52
  i32.const 0
  local.set $7
  local.get $0
  i32.load8_u offset=36
  if
   local.get $0
   f32.load offset=52
   local.get $0
   f32.load offset=40
   f32.gt
   if
    local.get $5
    f32.const 0
    f32.store offset=4
    local.get $5
    local.get $0
    f32.load offset=32
    f32.neg
    f32.store
    local.get $0
    local.get $0
    f32.load offset=40
    f32.store offset=28
    i32.const 1
    local.set $7
   end
  end
  local.get $0
  i32.load8_u offset=44
  if
   local.get $0
   f32.load offset=52
   local.get $0
   f32.load offset=48
   f32.lt
   if
    local.get $5
    local.get $0
    f32.load offset=32
    f32.store offset=4
    local.get $5
    f32.const 0
    f32.store
    local.get $0
    local.get $0
    f32.load offset=48
    f32.store offset=28
    i32.const 1
    local.set $7
   end
  end
  local.get $0
  i32.load8_u offset=44
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load8_u offset=36
  end
  if (result i32)
   local.get $7
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $5
   i32.const 0
   i32.store8 offset=64
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   return
  end
  local.get $5
  i32.const 1
  i32.store8 offset=64
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/n
  global.get $assembly/constraints/distance-constraint/n
  call $assembly/math/vec2/Vec2#normalize
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/ri
  global.get $assembly/constraints/distance-constraint/n
  call $assembly/math/vec2/Vec2#crossLength
  local.set $8
  global.get $assembly/math/vec2/vec2
  global.get $assembly/constraints/distance-constraint/rj
  global.get $assembly/constraints/distance-constraint/n
  call $assembly/math/vec2/Vec2#crossLength
  local.set $9
  local.get $6
  i32.const 0
  global.get $assembly/constraints/distance-constraint/n
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $6
  i32.const 1
  global.get $assembly/constraints/distance-constraint/n
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $6
  i32.const 2
  local.get $8
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $6
  i32.const 3
  global.get $assembly/constraints/distance-constraint/n
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $6
  i32.const 4
  global.get $assembly/constraints/distance-constraint/n
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $6
  i32.const 5
  local.get $9
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:localAnchorA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
  call $~lib/rt/pure/__retain
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:localAnchorA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=20
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:localAnchorB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=24
  call $~lib/rt/pure/__retain
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:localAnchorB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=24
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=24
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:distance (param $0 i32) (result f32)
  local.get $0
  f32.load offset=28
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:distance (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=28
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:maxForce (param $0 i32) (result f32)
  local.get $0
  f32.load offset=32
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:maxForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=32
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:upperLimitEnabled (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=36
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:upperLimitEnabled (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=36
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:upperLimit (param $0 i32) (result f32)
  local.get $0
  f32.load offset=40
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:upperLimit (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=40
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:lowerLimitEnabled (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=44
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:lowerLimitEnabled (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=44
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:lowerLimit (param $0 i32) (result f32)
  local.get $0
  f32.load offset=48
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:lowerLimit (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=48
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#get:position (param $0 i32) (result f32)
  local.get $0
  f32.load offset=52
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#set:position (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=52
 )
 (func $assembly/constraints/distance-constraint/DistanceConstraint#getMaxForce (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  local.get $0
  i32.load offset=4
  i32.const 0
  call $~lib/array/Array<assembly/equations/equation/Equation>#__get
  local.set $1
  local.get $1
  f32.load offset=4
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/equations/equation/Equation#computeB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f64)
  (local $8 f32)
  (local $9 f32)
  local.get $0
  call $assembly/equations/equation/Equation#computeGW
  local.set $4
  local.get $0
  call $assembly/equations/equation/Equation#computeGq@virtual
  local.set $5
  local.get $0
  f32.load offset=8
  local.set $6
  local.get $5
  f64.promote_f32
  local.set $7
  local.get $7
  f64.abs
  local.get $6
  f64.promote_f32
  f64.gt
  if
   local.get $5
   f32.const 0
   f32.gt
   if (result f32)
    local.get $6
   else
    local.get $6
    f32.neg
   end
   local.set $5
  end
  local.get $0
  call $assembly/equations/equation/Equation#computeGiMf
  local.set $8
  local.get $5
  f32.neg
  local.get $1
  f32.mul
  local.get $4
  local.get $2
  f32.mul
  f32.sub
  local.get $8
  local.get $3
  f32.mul
  f32.sub
  local.set $9
  local.get $9
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 224
   i32.const 272
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 17
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
 )
 (func $assembly/events/event-emitter/EventEmitter#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#constructor
  i32.store
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#constructor
  i32.store offset=4
  local.get $0
 )
 (func $assembly/events/event-emitter/EventEmitter#get:_listeners (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/events/event-emitter/EventEmitter#set:_listeners (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/events/event-emitter/EventEmitter#get:_contexts (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/events/event-emitter/EventEmitter#set:_contexts (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   drop
   local.get $2
   call $~lib/util/hash/hashStr
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
  end
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#find
  i32.const 0
  i32.ne
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<~lib/string/String>|inlined.4 (result i32)
      local.get $10
      i32.load
      call $~lib/rt/pure/__retain
      local.set $12
      i32.const 1
      drop
      local.get $12
      call $~lib/util/hash/hashStr
      local.set $13
      local.get $12
      call $~lib/rt/pure/__release
      local.get $13
      br $~lib/util/hash/HASH<~lib/string/String>|inlined.4
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $3
   i32.const 1
   drop
   local.get $3
   call $~lib/util/hash/hashStr
   local.set $4
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  local.set $5
  local.get $0
  local.get $1
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#find
  local.set $6
  local.get $6
  if
   i32.const 1
   drop
   local.get $6
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $6
    local.get $2
    call $~lib/rt/pure/__retain
    i32.store offset=4
    local.get $3
    call $~lib/rt/pure/__release
   end
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.set $6
   local.get $6
   local.get $1
   call $~lib/rt/pure/__retain
   i32.store
   local.get $6
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $5
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $6
   local.get $4
   i32.load
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<~lib/string/String>|inlined.6 (result i32)
      local.get $10
      i32.load
      call $~lib/rt/pure/__retain
      local.set $12
      i32.const 1
      drop
      local.get $12
      call $~lib/util/hash/hashStr
      local.set $13
      local.get $12
      call $~lib/rt/pure/__release
      local.get $13
      br $~lib/util/hash/HASH<~lib/string/String>|inlined.6
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.5 (result i32)
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $3
   i32.const 1
   drop
   local.get $3
   call $~lib/util/hash/hashStr
   local.set $4
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.5
  end
  local.set $5
  local.get $0
  local.get $1
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#find
  local.set $6
  local.get $6
  if
   i32.const 1
   drop
   local.get $6
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $6
    local.get $2
    call $~lib/rt/pure/__retain
    i32.store offset=4
    local.get $3
    call $~lib/rt/pure/__release
   end
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.set $6
   local.get $6
   local.get $1
   call $~lib/rt/pure/__retain
   i32.store
   local.get $6
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $5
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $4
   local.get $6
   local.get $4
   i32.load
   i32.store offset=8
   local.get $4
   local.get $6
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     local.set $5
     local.get $1
     call $~lib/rt/pure/__release
     local.get $5
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/events/event-emitter/EventEmitter#on (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#has
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $1
   i32.const 0
   i32.const 2
   i32.const 13
   i32.const 5360
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#set
   call $~lib/rt/pure/__release
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 0
   i32.const 2
   i32.const 16
   i32.const 5376
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $6
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#set
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#get
  local.set $6
  local.get $6
  local.get $2
  i32.const 0
  call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#indexOf
  i32.const -1
  i32.eq
  if
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#get
   local.set $5
   local.get $6
   local.get $2
   call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#push
   drop
   local.get $5
   local.get $3
   call $~lib/array/Array<~lib/object/Object>#push
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $~lib/array/Array<~lib/object/Object>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 16
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $assembly/events/event-emitter/EventEmitter#off (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#has
  i32.eqz
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#get
  local.set $3
  local.get $3
  local.get $2
  i32.const 0
  call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#indexOf
  local.set $4
  local.get $4
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#get
   local.set $5
   local.get $3
   local.get $4
   i32.const 1
   call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#splice
   call $~lib/rt/pure/__release
   local.get $5
   local.get $4
   i32.const 1
   call $~lib/array/Array<~lib/object/Object>#splice
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/events/event-emitter/EventEmitter#has (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#has
   if (result i32)
    local.get $0
    i32.load
    local.get $1
    call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#get
    local.tee $3
    local.get $2
    i32.const 0
    call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#indexOf
    i32.const -1
    i32.ne
    local.set $4
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
   else
    i32.const 0
   end
   if
    i32.const 1
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  else
   local.get $0
   i32.load
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#has
   i32.eqz
   if
    i32.const 1
    local.set $3
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/equations/friction-equation/FrictionEquation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (result i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 124
   i32.const 33
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=96
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=100
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=104
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 32
  i32.const 5392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=108
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=112
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=116
  local.get $0
  f32.const 0.30000001192092896
  f32.store offset=120
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  f32.neg
  local.get $3
  call $assembly/equations/equation/Equation#constructor
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/friction-equation/FrictionEquation#computeB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  local.get $0
  i32.load offset=96
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=100
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.load offset=104
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.const 0
  local.get $6
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $7
  i32.const 1
  local.get $6
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $7
  i32.const 2
  global.get $assembly/math/vec2/vec2
  local.get $4
  local.get $6
  call $assembly/math/vec2/Vec2#crossLength
  f32.neg
  call $~lib/typedarray/Float32Array#__set
  local.get $7
  i32.const 3
  local.get $6
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $7
  i32.const 4
  local.get $6
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  call $~lib/typedarray/Float32Array#__set
  local.get $7
  i32.const 5
  global.get $assembly/math/vec2/vec2
  local.get $5
  local.get $6
  call $assembly/math/vec2/Vec2#crossLength
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $assembly/equations/equation/Equation#computeGW
  local.set $8
  local.get $0
  call $assembly/equations/equation/Equation#computeGiMf
  local.set $9
  local.get $8
  f32.neg
  local.get $2
  f32.mul
  local.get $3
  local.get $9
  f32.mul
  f32.sub
  local.set $10
  local.get $10
  local.set $11
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:contactPointA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=96
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:contactPointA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=96
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=96
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:contactPointB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=100
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:contactPointB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=100
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=100
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:t (param $0 i32) (result i32)
  local.get $0
  i32.load offset=104
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:t (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=104
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=104
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:contactEquations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=108
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:contactEquations (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=108
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=108
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:shapeA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=112
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:shapeA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=112
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=112
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:shapeB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=116
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:shapeB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=116
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=116
 )
 (func $assembly/equations/friction-equation/FrictionEquation#get:frictionCoefficient (param $0 i32) (result f32)
  local.get $0
  f32.load offset=120
 )
 (func $assembly/equations/friction-equation/FrictionEquation#set:frictionCoefficient (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=120
 )
 (func $assembly/equations/friction-equation/FrictionEquation#setSlipForce (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
  local.get $0
  local.get $1
  f32.neg
  f32.store
 )
 (func $assembly/equations/friction-equation/FrictionEquation#getSlipForce (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $assembly/equations/distance-equation/DistanceEquation#computeGq (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  i32.load offset=12
  local.tee $1
  if (result i32)
   local.get $1
  else
   i32.const 1728
   i32.const 5408
   i32.const 19
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=16
  local.tee $2
  if (result i32)
   local.get $2
  else
   i32.const 1728
   i32.const 5408
   i32.const 20
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load offset=64
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load offset=64
  call $~lib/rt/pure/__retain
  local.set $4
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=104
  local.get $0
  i32.load offset=96
  i32.load offset=20
  local.get $1
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=108
  local.get $0
  i32.load offset=96
  i32.load offset=24
  local.get $2
  f32.load offset=88
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=100
  local.get $4
  local.get $0
  i32.load offset=108
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=100
  local.get $0
  i32.load offset=100
  local.get $0
  i32.load offset=104
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=100
  local.get $0
  i32.load offset=100
  local.get $3
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load offset=100
  call $assembly/math/vec2/Vec2#length
  local.get $0
  i32.load offset=96
  f32.load offset=28
  f32.sub
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/equations/distance-equation/DistanceEquation#get:distanceConstraint (param $0 i32) (result i32)
  local.get $0
  i32.load offset=96
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/distance-equation/DistanceEquation#set:distanceConstraint (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=96
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=96
 )
 (func $assembly/equations/distance-equation/DistanceEquation#get:r (param $0 i32) (result i32)
  local.get $0
  i32.load offset=100
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/distance-equation/DistanceEquation#set:r (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=100
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=100
 )
 (func $assembly/equations/distance-equation/DistanceEquation#get:ri (param $0 i32) (result i32)
  local.get $0
  i32.load offset=104
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/distance-equation/DistanceEquation#set:ri (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=104
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=104
 )
 (func $assembly/equations/distance-equation/DistanceEquation#get:rj (param $0 i32) (result i32)
  local.get $0
  i32.load offset=108
  call $~lib/rt/pure/__retain
 )
 (func $assembly/equations/distance-equation/DistanceEquation#set:rj (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=108
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=108
 )
 (func $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 4976
   i32.const 560
   i32.const 300
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#create (param $0 i32) (result i32)
  i32.const 0
  i32.const 0
  i32.const 0
  f32.const inf
  call $assembly/equations/friction-equation/FrictionEquation#constructor
 )
 (func $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#resize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  loop $while-continue|0
   local.get $2
   call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#get:length
   local.get $1
   i32.gt_s
   local.set $3
   local.get $3
   if
    local.get $2
    call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#pop
    call $~lib/rt/pure/__release
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $2
   call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#get:length
   local.get $1
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $2
    local.get $0
    call $assembly/utils/friction-equation-pool/FrictionEquationPool#create
    local.tee $4
    call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#push
    drop
    local.get $4
    call $~lib/rt/pure/__release
    br $while-continue|1
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 36
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 34
  i32.const 5504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $1
  call $assembly/utils/friction-equation-pool/FrictionEquationPool#resize
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#get:objects (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#set:objects (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#get (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#get:length
  if (result i32)
   local.get $1
   call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#pop
  else
   local.get $0
   call $assembly/utils/friction-equation-pool/FrictionEquationPool#create
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#destroy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  local.tee $6
  local.get $1
  local.tee $2
  i32.const 0
  local.tee $3
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=16
  local.get $3
  local.tee $5
  local.get $6
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $assembly/utils/friction-equation-pool/FrictionEquationPool#release (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  call $assembly/utils/friction-equation-pool/FrictionEquationPool#destroy
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#push
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/solver/solver/Solver#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 23
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store16 offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $assembly/events/event-emitter/EventEmitter#constructor
  local.set $0
  local.get $0
  local.get $2
  i32.store16 offset=8
  local.get $0
  local.tee $3
  i32.const 0
  i32.const 2
  i32.const 25
  i32.const 5520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $3
  i32.load offset=12
  call $~lib/rt/pure/__release
  local.get $4
  i32.store offset=12
  local.get $1
  if
   local.get $0
   local.tee $4
   local.get $1
   i32.load
   local.tee $3
   local.get $4
   i32.load offset=16
   local.tee $5
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $3
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store offset=16
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/solver/gs-solver/GSSolver#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 36
   i32.const 92
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 10
  i32.store offset=20
  local.get $0
  f32.const 1.0000000116860974e-07
  f32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  global.get $assembly/solver/solver/Solver.GS
  call $assembly/solver/solver/Solver#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.load offset=4
   i32.store offset=20
   local.get $0
   local.get $1
   f32.load offset=8
   f32.store offset=24
   local.get $0
   local.get $1
   i32.load offset=12
   i32.store offset=28
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/solver/solver/Solver#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=8
 )
 (func $assembly/solver/solver/Solver#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=8
 )
 (func $assembly/solver/solver/Solver#get:equations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $assembly/solver/solver/Solver#set:equations (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $assembly/solver/solver/Solver#get:equationSortFunction (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $assembly/solver/solver/Solver#set:equationSortFunction (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=16
 )
 (func $~lib/util/sort/insertionSort<assembly/equations/equation/Equation> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $6
    block $while-break|1
     loop $while-continue|1
      local.get $6
      i32.const 0
      i32.ge_s
      local.set $7
      local.get $7
      if
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       i32.load
       call $~lib/rt/pure/__retain
       local.set $8
       local.get $5
       local.get $8
       i32.const 2
       global.set $~argumentsLength
       local.get $2
       i32.load
       call_indirect (type $i32_i32_=>_i32)
       i32.const 0
       i32.lt_s
       if
        local.get $0
        local.get $6
        local.tee $9
        i32.const 1
        i32.sub
        local.set $6
        local.get $9
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        i32.store
       else
        local.get $8
        call $~lib/rt/pure/__release
        br $while-break|1
       end
       local.get $8
       call $~lib/rt/pure/__release
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $6
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store
    local.get $5
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $4
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $4
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   local.get $5
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   i32.load
   call_indirect (type $i32_i32_=>_i32)
   i32.const 0
   i32.lt_s
   if
    local.get $4
    local.get $5
    i32.store offset=4
    local.get $4
    local.get $3
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  local.get $4
  local.set $5
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $6
  i32.const 1
  drop
  local.get $5
  local.get $3
  local.get $6
  call $~lib/util/sort/insertionSort<assembly/equations/equation/Equation>
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/solver/solver/Solver#sortEquations (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=16
  if
   local.get $0
   i32.load offset=12
   local.get $0
   i32.load offset=16
   local.tee $1
   if (result i32)
    local.get $1
   else
    i32.const 1728
    i32.const 5536
    i32.const 57
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/array/Array<assembly/equations/equation/Equation>#sort
   call $~lib/rt/pure/__release
  end
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/objects/body/Body>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/objects/body/Body#updateSolveMassProperties (param $0 i32)
  local.get $0
  i32.load16_u offset=136
  global.get $assembly/objects/body/Body.SLEEPING
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $0
   f32.load offset=120
   global.get $assembly/objects/body/Body.KINEMATIC
   f32.convert_i32_u
   f32.eq
  end
  if
   local.get $0
   f32.const 0
   f32.store offset=48
   local.get $0
   f32.const 0
   f32.store offset=52
  else
   local.get $0
   local.get $0
   f32.load offset=36
   f32.store offset=48
   local.get $0
   local.get $0
   f32.load offset=44
   f32.store offset=52
  end
 )
 (func $assembly/objects/body/Body#resetConstraintVelocity (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=80
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $2
  f32.const 0
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  f32.const 0
  f32.store offset=84
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/solver/gs-solver/iterateEquation (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  f32.load offset=80
  local.set $1
  local.get $0
  f32.load offset=44
  local.set $2
  local.get $0
  f32.load offset=76
  local.set $3
  local.get $0
  f32.load offset=84
  local.set $4
  local.get $0
  call $assembly/equations/equation/Equation#computeGWlambda
  local.set $5
  local.get $0
  f32.load offset=68
  local.set $6
  local.get $0
  f32.load offset=72
  local.set $7
  local.get $3
  local.get $1
  local.get $5
  f32.sub
  local.get $2
  local.get $4
  f32.mul
  f32.sub
  f32.mul
  local.set $8
  local.get $4
  local.get $8
  f32.add
  local.set $9
  local.get $9
  local.get $7
  f32.lt
  if
   local.get $7
   local.get $4
   f32.sub
   local.set $8
  else
   local.get $9
   local.get $6
   f32.gt
   if
    local.get $6
    local.get $4
    f32.sub
    local.set $8
   end
  end
  local.get $0
  local.get $0
  f32.load offset=84
  local.get $8
  f32.add
  f32.store offset=84
  local.get $0
  local.get $8
  call $assembly/equations/equation/Equation#addToWlambda
  local.get $8
  local.set $10
  local.get $0
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $assembly/solver/gs-solver/updateMultipliers (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
  local.set $2
  loop $while-continue|0
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   local.set $3
   local.get $3
   if
    local.get $0
    local.get $2
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $4
    local.get $4
    local.get $4
    f32.load offset=84
    local.get $1
    f32.mul
    f32.store offset=56
    local.get $4
    call $~lib/rt/pure/__release
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/rt/__instanceof (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.set $2
  global.get $~lib/rt/__rtti_base
  local.set $3
  local.get $2
  local.get $3
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    i32.const 4
    i32.add
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    local.set $4
    local.get $4
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 336
   i32.const 560
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 608
   i32.const 560
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $assembly/objects/body/Body#addConstraintVelocity (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=76
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $2
  local.get $2
  local.get $1
  i32.load offset=80
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  local.get $1
  local.get $1
  f32.load offset=100
  local.get $1
  f32.load offset=84
  f32.add
  f32.store offset=100
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/solver/gs-solver/GSSolver#solve (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 f32)
  (local $18 f32)
  (local $19 i32)
  (local $20 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  call $assembly/solver/solver/Solver#sortEquations
  local.get $0
  i32.load offset=20
  local.set $3
  local.get $0
  i32.load offset=28
  local.set $4
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $5
  call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
  local.set $6
  local.get $0
  f32.load offset=24
  local.get $6
  f32.convert_i32_s
  f32.mul
  local.get $0
  f32.load offset=24
  local.get $6
  f32.convert_i32_s
  f32.mul
  f32.mul
  local.set $7
  local.get $2
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  call $~lib/array/Array<assembly/objects/body/Body>#get:length
  local.set $9
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $6
  if
   i32.const 0
   local.set $10
   loop $for-loop|0
    local.get $10
    local.get $9
    i32.lt_s
    local.set $11
    local.get $11
    if
     local.get $8
     local.get $10
     call $~lib/array/Array<assembly/objects/body/Body>#__get
     local.set $12
     local.get $12
     call $assembly/objects/body/Body#updateSolveMassProperties
     local.get $12
     call $~lib/rt/pure/__release
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $for-loop|0
    end
   end
  end
  i32.const 0
  local.set $10
  loop $for-loop|1
   local.get $10
   local.get $6
   i32.lt_s
   local.set $11
   local.get $11
   if
    local.get $5
    local.get $10
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $12
    local.get $12
    f32.const 0
    f32.store offset=84
    local.get $12
    f32.load offset=48
    local.get $1
    f32.ne
    if (result i32)
     i32.const 1
    else
     local.get $12
     i32.load8_u offset=52
    end
    if
     local.get $12
     local.get $1
     f32.store offset=48
     local.get $12
     call $assembly/equations/equation/Equation#update
    end
    local.get $12
    local.get $12
    local.get $12
    f32.load offset=36
    local.get $12
    f32.load offset=40
    local.get $1
    call $assembly/equations/equation/Equation#computeB@virtual
    f32.store offset=80
    local.get $12
    local.get $12
    local.get $12
    f32.load offset=44
    call $assembly/equations/equation/Equation#computeInvC
    f32.store offset=76
    local.get $12
    local.get $12
    f32.load offset=4
    local.get $1
    f32.mul
    f32.store offset=68
    local.get $12
    local.get $12
    f32.load
    local.get $1
    f32.mul
    f32.store offset=72
    local.get $12
    call $~lib/rt/pure/__release
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $10
  local.get $6
  i32.const 0
  i32.ne
  if
   i32.const 0
   local.set $11
   loop $for-loop|2
    local.get $11
    local.get $9
    i32.lt_s
    local.set $12
    local.get $12
    if
     local.get $8
     local.get $11
     call $~lib/array/Array<assembly/objects/body/Body>#__get
     local.set $14
     local.get $14
     call $assembly/objects/body/Body#resetConstraintVelocity
     local.get $14
     call $~lib/rt/pure/__release
     local.get $11
     i32.const 1
     i32.add
     local.set $11
     br $for-loop|2
    end
   end
   local.get $4
   if
    i32.const 0
    local.set $11
    block $for-break3
     loop $for-loop|3
      local.get $11
      local.get $4
      i32.ne
      local.set $12
      local.get $12
      if
       f32.const 0
       local.set $13
       i32.const 0
       local.set $14
       loop $for-loop|4
        local.get $14
        local.get $6
        i32.lt_s
        local.set $15
        local.get $15
        if
         local.get $5
         local.get $14
         call $~lib/array/Array<assembly/equations/equation/Equation>#__get
         local.set $16
         local.get $10
         call $~lib/rt/pure/__release
         local.get $16
         local.set $10
         local.get $10
         call $assembly/solver/gs-solver/iterateEquation
         local.set $17
         local.get $13
         local.get $17
         local.set $18
         local.get $18
         f32.abs
         f32.add
         local.set $13
         local.get $14
         i32.const 1
         i32.add
         local.set $14
         br $for-loop|4
        end
       end
       local.get $0
       local.get $0
       i32.load offset=32
       i32.const 1
       i32.add
       i32.store offset=32
       local.get $13
       local.get $13
       f32.mul
       local.get $7
       f32.le
       if
        br $for-break3
       end
       local.get $11
       i32.const 1
       i32.add
       local.set $11
       br $for-loop|3
      end
     end
    end
    local.get $5
    f32.const 1
    local.get $1
    f32.div
    call $assembly/solver/gs-solver/updateMultipliers
    i32.const 0
    local.set $11
    loop $for-loop|5
     local.get $11
     local.get $6
     i32.lt_s
     local.set $12
     local.get $12
     if
      local.get $5
      local.get $11
      call $~lib/array/Array<assembly/equations/equation/Equation>#__get
      local.set $14
      local.get $14
      local.tee $15
      i32.eqz
      if (result i32)
       i32.const 0
      else
       local.get $15
       i32.const 33
       call $~lib/rt/__instanceof
      end
      if
       local.get $14
       local.tee $15
       i32.const 33
       call $~lib/rt/__instanceof
       if (result i32)
        local.get $15
       else
        i32.const 5616
        i32.const 5680
        i32.const 185
        i32.const 35
        call $~lib/builtins/abort
        unreachable
       end
       call $~lib/rt/pure/__retain
       local.set $15
       f32.const 0
       local.set $17
       i32.const 0
       local.set $16
       loop $for-loop|6
        local.get $16
        local.get $15
        i32.load offset=108
        call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length
        i32.lt_s
        local.set $19
        local.get $19
        if
         local.get $17
         local.get $15
         i32.load offset=108
         local.get $16
         call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__get
         local.tee $20
         f32.load offset=56
         f32.add
         local.set $17
         local.get $20
         call $~lib/rt/pure/__release
         local.get $16
         i32.const 1
         i32.add
         local.set $16
         br $for-loop|6
        end
       end
       local.get $17
       local.get $15
       f32.load offset=120
       local.get $15
       i32.load offset=108
       call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#get:length
       f32.convert_i32_s
       f32.div
       f32.mul
       local.set $17
       local.get $15
       local.get $17
       f32.store offset=4
       local.get $15
       local.get $17
       f32.neg
       f32.store
       local.get $15
       local.get $17
       local.get $1
       f32.mul
       f32.store offset=68
       local.get $15
       local.get $17
       f32.neg
       local.get $1
       f32.mul
       f32.store offset=72
       local.get $15
       call $~lib/rt/pure/__release
      end
      local.get $14
      call $~lib/rt/pure/__release
      local.get $11
      i32.const 1
      i32.add
      local.set $11
      br $for-loop|5
     end
    end
   end
   i32.const 0
   local.set $11
   block $for-break7
    loop $for-loop|7
     local.get $11
     local.get $3
     i32.lt_s
     local.set $12
     local.get $12
     if
      f32.const 0
      local.set $13
      i32.const 0
      local.set $14
      loop $for-loop|8
       local.get $14
       local.get $6
       i32.lt_s
       local.set $15
       local.get $15
       if
        local.get $5
        local.get $14
        call $~lib/array/Array<assembly/equations/equation/Equation>#__get
        local.set $20
        local.get $10
        call $~lib/rt/pure/__release
        local.get $20
        local.set $10
        local.get $10
        call $assembly/solver/gs-solver/iterateEquation
        local.set $17
        local.get $13
        local.get $17
        local.set $18
        local.get $18
        f32.abs
        f32.add
        local.set $13
        local.get $14
        i32.const 1
        i32.add
        local.set $14
        br $for-loop|8
       end
      end
      local.get $0
      local.get $0
      i32.load offset=32
      i32.const 1
      i32.add
      i32.store offset=32
      local.get $13
      local.get $13
      f32.mul
      local.get $7
      f32.lt
      if
       br $for-break7
      end
      local.get $11
      i32.const 1
      i32.add
      local.set $11
      br $for-loop|7
     end
    end
   end
   i32.const 0
   local.set $11
   loop $for-loop|9
    local.get $11
    local.get $9
    i32.lt_s
    local.set $12
    local.get $12
    if
     local.get $8
     local.get $11
     call $~lib/array/Array<assembly/objects/body/Body>#__get
     local.tee $14
     call $assembly/objects/body/Body#addConstraintVelocity
     local.get $14
     call $~lib/rt/pure/__release
     local.get $11
     i32.const 1
     i32.add
     local.set $11
     br $for-loop|9
    end
   end
   local.get $5
   f32.const 1
   local.get $1
   f32.div
   call $assembly/solver/gs-solver/updateMultipliers
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/solver/solver/Solver#addEquation (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load8_u offset=64
  if
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/array/Array<assembly/equations/equation/Equation>#push
   drop
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/solver/solver/Solver#addEquations (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $3
  local.get $1
  call $~lib/array/Array<assembly/equations/equation/Equation>#get:length
  local.set $2
  loop $for-loop|1
   local.get $3
   i32.const 65535
   i32.and
   local.get $2
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $1
    local.get $3
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/equations/equation/Equation>#__get
    local.set $6
    local.get $6
    i32.load8_u offset=64
    if
     local.get $0
     i32.load offset=12
     local.get $6
     call $~lib/array/Array<assembly/equations/equation/Equation>#push
     drop
    end
    local.get $6
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   local.set $4
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     local.set $5
     local.get $1
     call $~lib/rt/pure/__release
     local.get $5
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 25
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $assembly/solver/solver/Solver#removeEquation (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.get $1
  i32.const 0
  call $~lib/array/Array<assembly/equations/equation/Equation>#indexOf
  local.set $2
  local.get $2
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.load offset=12
   local.get $2
   i32.const 1
   call $~lib/array/Array<assembly/equations/equation/Equation>#splice
   call $~lib/rt/pure/__release
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#set:length (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $4
   local.get $3
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $5
   loop $do-continue|0
    local.get $4
    i32.load
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 4
    i32.add
    local.tee $4
    local.get $5
    i32.lt_u
    local.set $6
    local.get $6
    br_if $do-continue|0
   end
  else
   local.get $0
   local.get $1
   i32.const 2
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $assembly/solver/solver/Solver#removeAllEquations (param $0 i32)
  local.get $0
  i32.load offset=12
  i32.const 0
  call $~lib/array/Array<assembly/equations/equation/Equation>#set:length
 )
 (func $assembly/solver/gs-solver/GSSolver#get:iterations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $assembly/solver/gs-solver/GSSolver#set:iterations (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $assembly/solver/gs-solver/GSSolver#get:tolerance (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/solver/gs-solver/GSSolver#set:tolerance (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/solver/gs-solver/GSSolver#get:frictionIterations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
 )
 (func $assembly/solver/gs-solver/GSSolver#set:frictionIterations (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
 )
 (func $assembly/solver/gs-solver/GSSolver#get:usedIterations (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
 )
 (func $assembly/solver/gs-solver/GSSolver#set:usedIterations (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
 )
 (func $~lib/array/Array<f32>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $3
  local.get $3
  i32.const 2
  i32.const 63
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $8
  i32.const 0
  drop
  local.get $7
  local.get $8
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $6
 )
 (func $assembly/shapes/heightfield/Heightfield#updateArea (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  f32.const 0
  local.set $2
  local.get $1
  i32.eqz
  if
   f32.const 0
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $1
   call $~lib/array/Array<f32>#get:length
   i32.const 1
   i32.sub
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $1
    local.get $4
    call $~lib/array/Array<f32>#__get
    local.get $1
    local.get $4
    i32.const 1
    i32.add
    call $~lib/array/Array<f32>#__get
    f32.add
    f32.const 2
    f32.div
    local.get $0
    f32.load offset=56
    f32.mul
    f32.add
    local.set $2
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $0
  local.get $2
  f32.store offset=36
  local.get $0
  f32.load offset=36
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/heightfield/Heightfield#updateMaxMinValues (param $0 i32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $2
  local.get $1
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $3
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   i32.const 65535
   i32.and
   local.get $1
   call $~lib/array/Array<f32>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $1
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<f32>#__get
    local.set $6
    local.get $6
    local.get $2
    f32.gt
    if
     local.get $6
     local.set $2
    end
    local.get $6
    local.get $3
    f32.lt
    if
     local.get $6
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $2
  f32.store offset=48
  local.get $0
  local.get $3
  f32.store offset=52
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/heightfield/Heightfield#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 60
   i32.const 94
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 63
  i32.const 5760
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  i32.store offset=44
  local.get $0
  f32.const 0
  f32.store offset=48
  local.get $0
  f32.const 0
  f32.store offset=52
  local.get $0
  f32.const 0.10000000149011612
  f32.store offset=56
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/Shape/Shape.HEIGHTFIELD
  local.get $1
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.tee $2
   local.get $1
   i32.load offset=24
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<f32>#slice
   local.set $3
   local.get $2
   i32.load offset=44
   call $~lib/rt/pure/__release
   local.get $3
   i32.store offset=44
   local.get $0
   local.get $1
   f32.load offset=28
   f32.store offset=56
  end
  local.get $0
  call $assembly/shapes/heightfield/Heightfield#updateArea
  drop
  local.get $0
  call $assembly/shapes/heightfield/Heightfield#updateMaxMinValues
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/heightfield/Heightfield#computeMomentOfInertia (param $0 i32) (result f32)
  f32.const inf
 )
 (func $assembly/shapes/heightfield/Heightfield#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  f32.const inf
  f32.store offset=20
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/heightfield/Heightfield#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 4
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=8
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=12
  local.get $4
  local.set $5
  global.get $assembly/math/vec2/vec2
  local.get $5
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $4
  f32.const 0
  local.get $0
  f32.load offset=48
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $5
  i32.const 1
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $6
  local.get $0
  f32.load offset=56
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<f32>#get:length
  f32.convert_i32_s
  f32.mul
  local.get $0
  f32.load offset=48
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $5
  i32.const 2
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $7
  local.get $0
  f32.load offset=56
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<f32>#get:length
  f32.convert_i32_s
  f32.mul
  local.get $0
  f32.load offset=52
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $5
  i32.const 3
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $8
  f32.const 0
  local.get $0
  f32.load offset=52
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  local.get $5
  local.get $2
  local.get $3
  f32.const 0
  call $assembly/collision/aabb/AABB#setFromPoints
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/heightfield/Heightfield#getSegmentIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $0
  f32.load offset=56
  f32.div
  local.set $2
  local.get $2
  f32.floor
  i32.trunc_f32_s
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/heightfield/Heightfield#getClampedSegmentIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  call $assembly/shapes/heightfield/Heightfield#getSegmentIndex
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $2
  end
  local.get $2
  local.get $0
  i32.load offset=44
  call $~lib/array/Array<f32>#get:length
  i32.gt_s
  if
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<f32>#get:length
   local.set $2
  end
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/heightfield/Heightfield#getLineSegment (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  f32.load offset=56
  local.set $5
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $3
  f32.convert_i32_s
  local.get $5
  f32.mul
  local.get $4
  local.get $3
  call $~lib/array/Array<f32>#__get
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $2
  local.get $3
  f32.convert_i32_s
  f32.const 1
  f32.add
  local.get $5
  f32.mul
  local.get $4
  local.get $3
  i32.const 1
  i32.add
  call $~lib/array/Array<f32>#__get
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/heightfield/Heightfield#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/heightfield/intersectHeightfield_worldNormal
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/heightfield/intersectHeightfield_l0
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/shapes/heightfield/intersectHeightfield_l1
  call $~lib/rt/pure/__retain
  local.set $9
  global.get $assembly/shapes/heightfield/intersectHeightfield_localFrom
  call $~lib/rt/pure/__retain
  local.set $10
  global.get $assembly/shapes/heightfield/intersectHeightfield_localTo
  call $~lib/rt/pure/__retain
  local.set $11
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $5
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $11
  local.get $6
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $0
  local.get $10
  call $assembly/shapes/heightfield/Heightfield#getClampedSegmentIndex
  local.set $12
  local.get $0
  local.get $11
  call $assembly/shapes/heightfield/Heightfield#getClampedSegmentIndex
  local.set $13
  local.get $12
  local.get $13
  i32.gt_s
  if
   local.get $12
   local.set $14
   local.get $13
   local.set $12
   local.get $14
   local.set $13
  end
  i32.const 0
  local.set $14
  loop $for-loop|0
   local.get $14
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<f32>#get:length
   i32.const 1
   i32.sub
   i32.lt_s
   local.set $15
   local.get $15
   if
    local.get $0
    local.get $8
    local.get $9
    local.get $14
    call $assembly/shapes/heightfield/Heightfield#getLineSegment
    global.get $assembly/math/vec2/vec2
    local.get $10
    local.get $11
    local.get $8
    local.get $9
    call $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction
    local.set $16
    local.get $16
    f32.const 0
    f32.ge
    if
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $9
     local.get $8
     call $assembly/math/vec2/Vec2#subtract
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     local.get $4
     global.get $~lib/math/NativeMathf.PI
     f32.const 2
     f32.div
     f32.add
     call $assembly/math/vec2/Vec2#rotate
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     call $assembly/math/vec2/Vec2#normalize
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $16
     local.get $7
     i32.const -1
     call $assembly/collision/ray/Ray#reportIntersection
     local.get $1
     local.get $2
     call $assembly/collision/raycast-result/RaycastResult#shouldStop
     if
      local.get $1
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      local.get $3
      call $~lib/rt/pure/__release
      local.get $5
      call $~lib/rt/pure/__release
      local.get $6
      call $~lib/rt/pure/__release
      local.get $7
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
      local.get $9
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
      return
     end
    end
    local.get $14
    i32.const 1
    i32.add
    local.set $14
    br $for-loop|0
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Shape/Shape#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/shapes/heightfield/Heightfield#get:heights (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/heightfield/Heightfield#set:heights (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=44
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=44
 )
 (func $assembly/shapes/heightfield/Heightfield#get:maxValue (param $0 i32) (result f32)
  local.get $0
  f32.load offset=48
 )
 (func $assembly/shapes/heightfield/Heightfield#set:maxValue (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=48
 )
 (func $assembly/shapes/heightfield/Heightfield#get:minValue (param $0 i32) (result f32)
  local.get $0
  f32.load offset=52
 )
 (func $assembly/shapes/heightfield/Heightfield#set:minValue (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=52
 )
 (func $assembly/shapes/heightfield/Heightfield#get:elementWidth (param $0 i32) (result f32)
  local.get $0
  f32.load offset=56
 )
 (func $assembly/shapes/heightfield/Heightfield#set:elementWidth (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=56
 )
 (func $assembly/shapes/line/Line#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 48
   i32.const 96
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 1
  f32.store offset=44
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/Shape/Shape.LINE
  local.get $1
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.get $1
   f32.load offset=24
   f32.store offset=44
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/line/Line#computeMomentOfInertia (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
  f32.const 2
  call $~lib/math/NativeMathf.pow
  f32.const 12
  f32.div
 )
 (func $assembly/shapes/line/Line#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  f32.store offset=20
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/line/Line#updateArea (param $0 i32) (result f32)
  f32.const 0
 )
 (func $assembly/shapes/line/Line#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 2
  i32.const 2
  i32.const 6
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $4
  local.set $6
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  local.set $7
  global.get $assembly/math/vec2/vec2
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $5
  local.get $7
  f32.neg
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $6
  i32.const 1
  call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
  local.tee $4
  local.get $7
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  local.get $6
  local.get $2
  local.get $3
  f32.const 0
  call $assembly/collision/aabb/AABB#setFromPoints
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/line/Line#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/line/raycast_l0
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/line/raycast_l1
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $0
  f32.load offset=44
  f32.const 2
  f32.div
  local.set $9
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $9
  f32.neg
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $9
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $7
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toGlobalFrame
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $8
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toGlobalFrame
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $8
  local.get $5
  local.get $6
  call $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction
  local.set $10
  local.get $10
  f32.const 0
  f32.ge
  if
   global.get $assembly/shapes/line/raycast_normal
   call $~lib/rt/pure/__retain
   local.set $11
   global.get $assembly/math/vec2/vec2
   local.get $11
   global.get $assembly/shapes/line/raycast_unit_y
   local.get $4
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
   local.get $2
   local.get $1
   local.get $10
   local.get $11
   i32.const -1
   call $assembly/collision/ray/Ray#reportIntersection
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/line/Line#get:length (param $0 i32) (result f32)
  local.get $0
  f32.load offset=44
 )
 (func $assembly/shapes/line/Line#set:length (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=44
 )
 (func $assembly/material/material/Material#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 46
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  global.get $assembly/material/material/Material.idCounter
  i32.const 1
  i32.add
  global.set $assembly/material/material/Material.idCounter
  global.get $assembly/material/material/Material.idCounter
  i32.store
  local.get $0
 )
 (func $assembly/material/material/Material#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $assembly/material/material/Material#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $assembly/collision/naive-broadphase/NaiveBroadphase#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 14
   i32.const 98
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/collision/broadphase/Broadphase.NAIVE
  call $assembly/collision/broadphase/Broadphase#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#set:length (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.get $1
  i32.gt_s
  if
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $4
   local.get $3
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   local.set $5
   loop $do-continue|0
    local.get $4
    i32.load
    call $~lib/rt/pure/__release
    local.get $4
    i32.const 4
    i32.add
    local.tee $4
    local.get $5
    i32.lt_u
    local.set $6
    local.get $6
    br_if $do-continue|0
   end
  else
   local.get $0
   local.get $1
   i32.const 2
   call $~lib/array/ensureSize
  end
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/collision/naive-broadphase/NaiveBroadphase#getCollisionPairs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/array/Array<assembly/objects/body/Body>#set:length
  i32.const 0
  local.set $5
  local.get $2
  call $~lib/array/Array<assembly/objects/body/Body>#get:length
  local.set $4
  loop $for-loop|3
   local.get $5
   i32.const 65535
   i32.and
   local.get $4
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $5
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/objects/body/Body>#__get
    local.set $8
    i32.const 0
    local.set $10
    loop $for-loop|5
     local.get $10
     i32.const 65535
     i32.and
     local.get $5
     i32.const 65535
     i32.and
     i32.lt_u
     local.set $12
     local.get $12
     if
      local.get $2
      local.get $10
      i32.const 65535
      i32.and
      call $~lib/array/Array<assembly/objects/body/Body>#__get
      local.set $13
      local.get $8
      local.get $13
      call $assembly/collision/broadphase/Broadphase.canCollide
      if (result i32)
       local.get $0
       local.get $8
       local.get $13
       call $assembly/collision/broadphase/Broadphase#boundingVolumeCheck
      else
       i32.const 0
      end
      if
       local.get $3
       local.get $8
       call $~lib/array/Array<assembly/objects/body/Body>#push
       drop
       local.get $3
       local.get $13
       call $~lib/array/Array<assembly/objects/body/Body>#push
       drop
      end
      local.get $13
      call $~lib/rt/pure/__release
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $for-loop|5
     end
    end
    local.get $8
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|3
   end
  end
  local.get $3
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/collision/naive-broadphase/NaiveBroadphase#aabbQuery (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|1
   local.get $5
   i32.const 65535
   i32.and
   local.get $4
   call $~lib/array/Array<assembly/objects/body/Body>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $4
    local.get $5
    i32.const 65535
    i32.and
    call $~lib/array/Array<assembly/objects/body/Body>#__get
    local.set $8
    local.get $8
    i32.load8_u offset=132
    if
     local.get $8
     call $assembly/objects/body/Body#updateAABB
    end
    local.get $8
    i32.load offset=128
    local.get $2
    call $assembly/collision/aabb/AABB#overlaps
    if
     local.get $3
     local.get $8
     call $~lib/array/Array<assembly/objects/body/Body>#push
     drop
    end
    local.get $8
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  local.get $3
  local.set $5
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/shapes/particle/Particle#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 41
   i32.const 99
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/Shape/Shape.PARTICLE
  local.get $1
  call $assembly/shapes/Shape/Shape#constructor
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/particle/Particle#computeMomentOfInertia (param $0 i32) (result f32)
  f32.const 0
 )
 (func $assembly/shapes/particle/Particle#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  f32.const 0
  f32.store offset=20
  f32.const 0
 )
 (func $assembly/shapes/particle/Particle#updateArea (param $0 i32) (result f32)
  f32.const 0
 )
 (func $assembly/shapes/particle/Particle#computeAABB (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $2
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load offset=4
  local.get $2
  call $assembly/math/vec2/Vec2#copy
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/particle/Particle#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/plane/Plane#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 41
   i32.const 100
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/shape/Shape.PLANE
  local.get $1
  call $assembly/shapes/shape/Shape#constructor
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/plane/Plane#computeMomentOfInertia (param $0 i32) (result f32)
  f32.const 0
 )
 (func $assembly/shapes/plane/Plane#updateBoundingRadius (param $0 i32) (result f32)
  local.get $0
  f32.const inf
  f32.store offset=20
  f32.const inf
 )
 (func $assembly/shapes/plane/Plane#updateArea (param $0 i32) (result f32)
  local.get $0
  f32.const inf
  f32.store offset=36
  f32.const inf
 )
 (func $~lib/math/NativeMathf.mod (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  f32.abs
  f32.const 1
  f32.eq
  if
   local.get $0
   local.get $0
   f32.trunc
   f32.sub
   local.get $0
   f32.copysign
   return
  end
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $4
  local.get $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $5
  local.get $2
  i32.const -2147483648
  i32.and
  local.set $6
  local.get $3
  i32.const 1
  i32.shl
  local.set $7
  local.get $7
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.const 255
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $1
   f32.ne
  end
  if
   local.get $0
   local.get $1
   f32.mul
   local.set $8
   local.get $8
   local.get $8
   f32.div
   return
  end
  local.get $2
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $7
  i32.le_u
  if
   local.get $9
   local.get $7
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $0
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $4
   local.get $2
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $4
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $2
  else
   local.get $2
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $2
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  end
  local.get $5
  i32.eqz
  if
   local.get $5
   local.get $3
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $5
   local.get $3
   i32.const 0
   local.get $5
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $3
  else
   local.get $3
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $3
   local.get $3
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $3
  end
  loop $while-continue|0
   local.get $4
   local.get $5
   i32.gt_s
   local.set $10
   local.get $10
   if
    local.get $2
    local.get $3
    i32.ge_u
    if
     local.get $2
     local.get $3
     i32.eq
     if
      f32.const 0
      local.get $0
      f32.mul
      return
     end
     local.get $2
     local.get $3
     i32.sub
     local.set $2
    end
    local.get $2
    i32.const 1
    i32.shl
    local.set $2
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $while-continue|0
   end
  end
  local.get $2
  local.get $3
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $2
   local.get $3
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 8
  i32.shl
  i32.clz
  local.set $11
  local.get $4
  local.get $11
  i32.sub
  local.set $4
  local.get $2
  local.get $11
  i32.shl
  local.set $2
  local.get $4
  i32.const 0
  i32.gt_s
  if
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   local.set $2
   local.get $2
   local.get $4
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  else
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i32.or
  local.set $2
  local.get $2
  f32.reinterpret_i32
 )
 (func $assembly/shapes/plane/Plane#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  f32.const 2
  global.get $~lib/math/NativeMathf.PI
  f32.mul
  call $~lib/math/NativeMathf.mod
  local.set $4
  f32.const 1e7
  local.set $5
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $5
  f32.neg
  local.get $5
  f32.neg
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $5
  local.get $5
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $4
  f32.const 0
  f32.eq
  if
   local.get $7
   i32.const 1
   local.get $2
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   call $~lib/typedarray/Float32Array#__set
  else
   local.get $4
   f64.promote_f32
   global.get $~lib/math/NativeMath.PI
   f64.const 2
   f64.div
   f64.eq
   if
    local.get $6
    i32.const 0
    local.get $2
    i32.const 0
    call $~lib/typedarray/Float32Array#__get
    call $~lib/typedarray/Float32Array#__set
   else
    local.get $4
    f64.promote_f32
    global.get $~lib/math/NativeMath.PI
    f64.eq
    if
     local.get $6
     i32.const 1
     local.get $2
     i32.const 1
     call $~lib/typedarray/Float32Array#__get
     call $~lib/typedarray/Float32Array#__set
    else
     local.get $4
     f64.promote_f32
     f32.const 3
     f64.promote_f32
     global.get $~lib/math/NativeMath.PI
     f64.mul
     f64.const 2
     f64.div
     f64.eq
     if
      local.get $7
      i32.const 0
      local.get $2
      i32.const 0
      call $~lib/typedarray/Float32Array#__get
      call $~lib/typedarray/Float32Array#__set
     end
    end
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/plane/Plane#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $2
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  i32.load offset=20
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/shapes/plane/intersectPlane_planePointToFrom
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/shapes/plane/intersectPlane_normal
  call $~lib/rt/pure/__retain
  local.set $9
  global.get $assembly/shapes/plane/intersectPlane_len
  call $~lib/rt/pure/__retain
  local.set $10
  global.get $assembly/math/vec2/vec2
  local.get $9
  f32.const 0
  f32.const 1
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $9
  local.get $9
  local.get $4
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $5
  local.get $3
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $9
  call $assembly/math/vec2/Vec2#dot
  local.set $11
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $6
  local.get $3
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $9
  call $assembly/math/vec2/Vec2#dot
  local.set $12
  local.get $11
  local.get $12
  f32.mul
  f32.const 0
  f32.gt
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   return
  end
  global.get $assembly/math/vec2/vec2
  local.get $5
  local.get $6
  call $assembly/math/vec2/Vec2#squaredDistance
  local.get $11
  local.get $11
  f32.mul
  f32.lt
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   return
  end
  global.get $assembly/math/vec2/vec2
  local.get $9
  local.get $7
  call $assembly/math/vec2/Vec2#dot
  local.set $13
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $5
  local.get $3
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $9
  local.get $8
  call $assembly/math/vec2/Vec2#dot
  f32.neg
  local.get $13
  f32.div
  local.get $2
  f32.load offset=24
  f32.div
  local.set $14
  local.get $2
  local.get $1
  local.get $14
  local.get $9
  i32.const -1
  call $assembly/collision/ray/Ray#reportIntersection
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/plane/Plane#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 0
  f32.le
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/collision/ray/Ray#update (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=20
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  local.get $0
  global.get $assembly/math/vec2/vec2
  local.get $1
  call $assembly/math/vec2/Vec2#length
  f32.store offset=24
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $1
  call $assembly/math/vec2/Vec2#normalize
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/ray/Ray#constructor~anonymous|0 (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/ray/Ray#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 36
   i32.const 79
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store8 offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=9
  local.get $0
  i32.const 0
  i32.store16 offset=10
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store16 offset=14
  local.get $0
  i32.const 5776
  call $~lib/rt/pure/__retain
  i32.store offset=16
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=20
  local.get $0
  f32.const 1
  f32.store offset=24
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=28
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=32
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  if
   local.get $0
   local.tee $3
   local.get $1
   i32.load
   if (result i32)
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load
    local.get $1
    i32.load
    local.tee $2
    if (result i32)
     local.get $2
    else
     i32.const 1728
     i32.const 4400
     i32.const 109
     i32.const 52
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
   else
    global.get $assembly/math/vec2/vec2
    call $assembly/math/vec2/Vec2#create
   end
   local.set $2
   local.get $3
   i32.load
   call $~lib/rt/pure/__release
   local.get $2
   i32.store
   local.get $0
   local.tee $2
   local.get $1
   i32.load offset=4
   if (result i32)
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=4
    local.get $1
    i32.load offset=4
    local.tee $3
    if (result i32)
     local.get $3
    else
     i32.const 1728
     i32.const 4400
     i32.const 110
     i32.const 46
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
   else
    global.get $assembly/math/vec2/vec2
    call $assembly/math/vec2/Vec2#create
   end
   local.set $3
   local.get $2
   i32.load offset=4
   call $~lib/rt/pure/__release
   local.get $3
   i32.store offset=4
   local.get $0
   local.get $1
   i32.load8_u offset=8
   i32.store8 offset=8
   local.get $0
   local.get $1
   i32.load8_u offset=9
   i32.store8 offset=9
   local.get $0
   local.get $1
   i32.load16_s offset=10
   i32.store16 offset=10
   local.get $0
   local.get $1
   i32.load16_s offset=12
   i32.store16 offset=12
   local.get $0
   local.get $1
   i32.load16_u offset=14
   i32.store16 offset=14
   local.get $0
   local.tee $3
   local.get $1
   i32.load offset=16
   local.tee $2
   local.get $3
   i32.load offset=16
   local.tee $4
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
   end
   local.get $2
   i32.store offset=16
  else
   local.get $0
   local.tee $4
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
   local.set $2
   local.get $4
   i32.load
   call $~lib/rt/pure/__release
   local.get $2
   i32.store
   local.get $0
   local.tee $3
   global.get $assembly/math/vec2/vec2
   call $assembly/math/vec2/Vec2#create
   local.set $2
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__release
   local.get $2
   i32.store offset=4
  end
  local.get $0
  call $assembly/collision/ray/Ray#update
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/collision/ray/Ray#get:from (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:from (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/collision/ray/Ray#get:to (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:to (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/collision/ray/Ray#get:checkCollisionResponse (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $assembly/collision/ray/Ray#set:checkCollisionResponse (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $assembly/collision/ray/Ray#get:skipBackfaces (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=9
 )
 (func $assembly/collision/ray/Ray#set:skipBackfaces (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=9
 )
 (func $assembly/collision/ray/Ray#get:collisionMask (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=10
 )
 (func $assembly/collision/ray/Ray#set:collisionMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=10
 )
 (func $assembly/collision/ray/Ray#get:collisionGroup (param $0 i32) (result i32)
  local.get $0
  i32.load16_s offset=12
 )
 (func $assembly/collision/ray/Ray#set:collisionGroup (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=12
 )
 (func $assembly/collision/ray/Ray#get:mode (param $0 i32) (result i32)
  local.get $0
  i32.load16_u offset=14
 )
 (func $assembly/collision/ray/Ray#set:mode (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=14
 )
 (func $assembly/collision/ray/Ray#get:callback (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:callback (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=16
 )
 (func $assembly/collision/ray/Ray#get:direction (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:direction (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=20
 )
 (func $assembly/collision/ray/Ray#get:length (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/collision/ray/Ray#set:length (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/collision/ray/Ray#get:_currentShape (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:_currentShape (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=28
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=28
 )
 (func $assembly/collision/ray/Ray#get:_currentBody (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/ray/Ray#set:_currentBody (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=32
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=32
 )
 (func $assembly/collision/ray/distanceFromIntersectionSquared (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  global.get $assembly/collision/ray/v0
  local.get $2
  local.get $0
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/collision/ray/v0
  local.get $1
  call $assembly/math/vec2/Vec2#dot
  local.set $3
  global.get $assembly/math/vec2/vec2
  global.get $assembly/collision/ray/intersect
  local.get $1
  local.get $3
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  global.get $assembly/collision/ray/intersect
  global.get $assembly/collision/ray/intersect
  local.get $0
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $2
  global.get $assembly/collision/ray/intersect
  call $assembly/math/vec2/Vec2#squaredDistance
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/shapes/shape/Shape#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  unreachable
 )
 (func $assembly/collision/ray/Ray#intersectShape (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=20
  local.get $4
  call $assembly/collision/ray/distanceFromIntersectionSquared
  local.set $7
  local.get $7
  local.get $2
  f32.load offset=20
  local.get $2
  f32.load offset=20
  f32.mul
  f32.gt
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  local.tee $8
  local.get $5
  local.tee $9
  local.get $8
  i32.load offset=32
  local.tee $10
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=32
  local.get $0
  local.tee $10
  local.get $2
  local.tee $9
  local.get $10
  i32.load offset=28
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=28
  local.get $2
  local.get $1
  local.get $0
  local.get $4
  local.get $3
  call $assembly/shapes/shape/Shape#raycast@virtual
  local.get $0
  local.tee $8
  i32.const 0
  local.tee $9
  local.get $8
  i32.load offset=32
  local.tee $10
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $10
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=32
  local.get $0
  local.tee $10
  i32.const 0
  local.tee $9
  local.get $10
  i32.load offset=28
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=28
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/ray/Ray#intersectBody (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load8_u offset=8
  local.set $3
  local.get $3
  if (result i32)
   local.get $2
   i32.load8_u offset=160
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  global.get $assembly/collision/ray/intersectBody_worldPosition
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  local.get $2
  i32.load offset=28
  call $~lib/array/Array<assembly/shapes/shape/Shape>#get:length
  local.set $6
  block $for-break0
   loop $for-loop|0
    local.get $5
    local.get $6
    i32.lt_s
    local.set $7
    local.get $7
    if
     block $for-continue|0
      local.get $2
      i32.load offset=28
      local.get $5
      call $~lib/array/Array<assembly/shapes/shape/Shape>#__get
      local.set $8
      local.get $3
      if (result i32)
       local.get $8
       i32.load8_u offset=26
       i32.eqz
      else
       i32.const 0
      end
      if
       br $for-continue|0
      end
      local.get $0
      i32.load16_s offset=12
      local.get $8
      i32.load16_s offset=28
      i32.and
      i32.const 0
      i32.eq
      if (result i32)
       i32.const 1
      else
       local.get $8
       i32.load16_s offset=24
       local.get $0
       i32.load16_s offset=10
       i32.and
       i32.const 0
       i32.eq
      end
      if
       br $for-continue|0
      end
      global.get $assembly/math/vec2/vec2
      local.get $4
      local.get $8
      i32.load offset=4
      local.get $2
      f32.load offset=88
      call $assembly/math/vec2/Vec2#rotate
      call $~lib/rt/pure/__release
      global.get $assembly/math/vec2/vec2
      local.get $4
      local.get $4
      local.get $2
      i32.load offset=64
      call $assembly/math/vec2/Vec2#add
      call $~lib/rt/pure/__release
      local.get $8
      f32.load offset=8
      local.get $2
      f32.load offset=88
      f32.add
      local.set $9
      local.get $0
      local.get $1
      local.get $8
      local.get $9
      local.get $4
      local.get $2
      call $assembly/collision/ray/Ray#intersectShape
      local.get $1
      local.get $0
      call $assembly/collision/raycast-result/RaycastResult#shouldStop
      if
       br $for-break0
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/ray/Ray#intersectBodies (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/array/Array<assembly/objects/body/Body>#get:length
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $0
   call $assembly/collision/raycast-result/RaycastResult#shouldStop
   i32.eqz
   if (result i32)
    local.get $3
    local.get $4
    i32.lt_s
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<assembly/objects/body/Body>#__get
    local.set $6
    local.get $6
    call $assembly/objects/body/Body#getAABB
    local.set $7
    local.get $7
    local.get $0
    call $assembly/collision/aabb/AABB#overlapsRay
    f32.const 0
    f32.ge
    if (result i32)
     i32.const 1
    else
     local.get $7
     local.get $0
     i32.load
     call $assembly/collision/aabb/AABB#containsPoint
    end
    if
     local.get $0
     local.get $1
     local.get $6
     call $assembly/collision/ray/Ray#intersectBody
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/ray/Ray#getAABB (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $5
  local.get $4
  f32.min
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $5
  local.get $4
  f32.min
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load offset=4
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $3
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $5
  local.get $4
  f32.max
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $5
  local.get $3
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $4
  local.get $5
  local.get $4
  f32.max
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/raycast-result/RaycastResult#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 21
   i32.const 77
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $0
  i32.const -1
  i32.store offset=12
  local.get $0
  f32.const -1
  f32.store offset=16
  local.get $0
  i32.const 0
  i32.store8 offset=20
  local.get $0
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:normal (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:normal (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:shape (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:shape (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=4
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:body (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:body (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:faceIndex (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:faceIndex (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:fraction (param $0 i32) (result f32)
  local.get $0
  f32.load offset=16
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:fraction (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=16
 )
 (func $assembly/collision/raycast-result/RaycastResult#get:isStopped (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=20
 )
 (func $assembly/collision/raycast-result/RaycastResult#set:isStopped (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=20
 )
 (func $assembly/collision/raycast-result/RaycastResult#reset (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $assembly/math/vec2/vec2
  local.get $0
  i32.load
  f32.const 0
  f32.const 0
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $0
  local.tee $1
  i32.const 0
  local.tee $2
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
  i32.store offset=4
  local.get $0
  local.tee $3
  i32.const 0
  local.tee $2
  local.get $3
  i32.load offset=8
  local.tee $1
  i32.ne
  if
   local.get $2
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
  end
  local.get $2
  i32.store offset=8
  local.get $0
  i32.const -1
  i32.store offset=12
  local.get $0
  f32.const -1
  f32.store offset=16
  local.get $0
  i32.const 0
  i32.store8 offset=20
 )
 (func $assembly/math/vec2/Vec2#distance (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $3
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $1
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.sub
  local.set $4
  local.get $3
  local.get $3
  f32.mul
  local.get $4
  local.get $4
  f32.mul
  f32.add
  local.set $5
  local.get $5
  f32.sqrt
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $assembly/collision/raycast-result/RaycastResult#getHitDistance (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  global.get $assembly/math/vec2/vec2
  local.get $1
  i32.load
  local.get $1
  i32.load offset=4
  call $assembly/math/vec2/Vec2#distance
  local.get $0
  f32.load offset=16
  f32.mul
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/collision/raycast-result/RaycastResult#getHitPoint (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  i32.load
  local.get $2
  i32.load offset=4
  local.get $0
  f32.load offset=16
  call $assembly/math/vec2/Vec2#lerp
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/collision/raycast-result/RaycastResult#stop (param $0 i32)
  local.get $0
  i32.const 1
  i32.store8 offset=20
 )
 (func $assembly/shapes/Box/Box#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 68
   i32.const 101
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 1
  f32.store offset=60
  local.get $0
  f32.const 1
  f32.store offset=64
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  global.get $assembly/shapes/shape/Shape.BOX
  local.get $1
  if (result i32)
   i32.const 4
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $2
   i32.load offset=4
   local.set $3
   local.get $3
   global.get $assembly/math/vec2/vec2
   local.get $1
   f32.load offset=24
   f32.neg
   f32.const 2
   f32.div
   local.get $1
   f32.load offset=28
   f32.neg
   f32.const 2
   f32.div
   call $assembly/math/vec2/Vec2#fromValues
   i32.store
   local.get $3
   global.get $assembly/math/vec2/vec2
   local.get $1
   f32.load offset=24
   f32.const 2
   f32.div
   local.get $1
   f32.load offset=28
   f32.neg
   f32.const 2
   f32.div
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=4
   local.get $3
   global.get $assembly/math/vec2/vec2
   local.get $1
   f32.load offset=24
   f32.const 2
   f32.div
   local.get $1
   f32.load offset=28
   f32.const 2
   f32.div
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=8
   local.get $3
   global.get $assembly/math/vec2/vec2
   local.get $1
   f32.load offset=24
   f32.neg
   f32.const 2
   f32.div
   local.get $1
   f32.load offset=28
   f32.const 2
   f32.div
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=12
   local.get $2
   local.tee $3
   local.tee $2
  else
   i32.const 4
   i32.const 2
   i32.const 6
   i32.const 0
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $2
   i32.load offset=4
   local.set $4
   local.get $4
   global.get $assembly/math/vec2/vec2
   f32.const -0.5
   f32.const -0.5
   call $assembly/math/vec2/Vec2#fromValues
   i32.store
   local.get $4
   global.get $assembly/math/vec2/vec2
   f32.const 0.5
   f32.const -0.5
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=4
   local.get $4
   global.get $assembly/math/vec2/vec2
   f32.const 0.5
   f32.const 0.5
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=8
   local.get $4
   global.get $assembly/math/vec2/vec2
   f32.const -0.5
   f32.const 0.5
   call $assembly/math/vec2/Vec2#fromValues
   i32.store offset=12
   local.get $2
   local.tee $4
   local.tee $5
  end
  local.get $1
  call $assembly/shapes/Convex/Convex#constructor
  local.set $0
  local.get $1
  if
   local.get $0
   local.get $1
   f32.load offset=28
   f32.store offset=64
   local.get $0
   local.get $1
   f32.load offset=24
   f32.store offset=60
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/shapes/Box/Box#computeMomentOfInertia (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  local.get $0
  f32.load offset=60
  local.set $1
  local.get $0
  f32.load offset=64
  local.set $2
  local.get $2
  local.get $2
  f32.mul
  local.get $1
  local.get $1
  f32.mul
  f32.add
  f32.const 12
  f32.div
 )
 (func $assembly/shapes/Box/Box#updateBoundingRadius (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  f32.load offset=60
  local.set $1
  local.get $0
  f32.load offset=64
  local.set $2
  local.get $0
  local.get $1
  local.get $1
  f32.mul
  local.get $2
  local.get $2
  f32.mul
  f32.add
  local.set $3
  local.get $3
  f32.sqrt
  f32.const 2
  f32.div
  f32.store offset=20
  local.get $0
  f32.load offset=20
 )
 (func $assembly/shapes/Box/Box#updateArea (param $0 i32) (result f32)
  local.get $0
  local.get $0
  f32.load offset=60
  local.get $0
  f32.load offset=64
  f32.mul
  f32.store offset=36
  local.get $0
  f32.load offset=36
 )
 (func $assembly/shapes/Box/Box#computeAABB (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/math/NativeMathf.cos
  local.set $4
  local.get $4
  f32.abs
  local.set $5
  local.get $3
  call $~lib/math/NativeMathf.sin
  local.set $4
  local.get $4
  f32.abs
  local.set $6
  local.get $0
  f32.load offset=60
  local.set $7
  local.get $0
  f32.load offset=64
  local.set $8
  local.get $7
  local.get $6
  f32.mul
  local.get $8
  local.get $5
  f32.mul
  f32.add
  f32.const 0.5
  f32.mul
  local.set $9
  local.get $8
  local.get $6
  f32.mul
  local.get $7
  local.get $5
  f32.mul
  f32.add
  f32.const 0.5
  f32.mul
  local.set $10
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $1
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $12
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $13
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $14
  local.get $11
  i32.const 0
  local.get $13
  local.get $10
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $11
  i32.const 1
  local.get $14
  local.get $9
  f32.sub
  call $~lib/typedarray/Float32Array#__set
  local.get $12
  i32.const 0
  local.get $13
  local.get $10
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $12
  i32.const 1
  local.get $14
  local.get $9
  f32.add
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Convex/Convex#raycast (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  global.get $assembly/shapes/Convex/intersectConvex_rayStart
  call $~lib/rt/pure/__retain
  local.set $5
  global.get $assembly/shapes/Convex/intersectConvex_rayEnd
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/shapes/Convex/intersectConvex_normal
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/math/vec2/vec2
  local.get $5
  local.get $2
  i32.load
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $2
  i32.load offset=4
  local.get $3
  local.get $4
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
  local.set $9
  i32.const 0
  local.set $10
  loop $for-loop|0
   local.get $10
   local.get $9
   i32.lt_s
   if (result i32)
    local.get $1
    local.get $2
    call $assembly/collision/raycast-result/RaycastResult#shouldStop
    i32.eqz
   else
    i32.const 0
   end
   local.set $11
   local.get $11
   if
    local.get $8
    local.get $10
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $12
    local.get $8
    local.get $10
    i32.const 1
    i32.add
    local.get $9
    i32.rem_s
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $13
    global.get $assembly/math/vec2/vec2
    local.get $5
    local.get $6
    local.get $12
    local.get $13
    call $assembly/math/vec2/Vec2#getLineSegmentsIntersectionFraction
    local.set $14
    local.get $14
    f32.const 0
    f32.ge
    if
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $13
     local.get $12
     call $assembly/math/vec2/Vec2#subtract
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     global.get $~lib/math/NativeMathf.PI
     f32.neg
     f32.const 2
     f32.div
     local.get $4
     f32.add
     call $assembly/math/vec2/Vec2#rotate
     call $~lib/rt/pure/__release
     global.get $assembly/math/vec2/vec2
     local.get $7
     local.get $7
     call $assembly/math/vec2/Vec2#normalize
     call $~lib/rt/pure/__release
     local.get $2
     local.get $1
     local.get $14
     local.get $7
     local.get $10
     call $assembly/collision/ray/Ray#reportIntersection
    end
    local.get $12
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|0
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Box/Box#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $2
  local.get $2
  f32.abs
  local.get $0
  f32.load offset=60
  f32.const 0.5
  f32.mul
  f32.le
  if (result i32)
   local.get $1
   i32.const 1
   call $~lib/typedarray/Float32Array#__get
   local.set $2
   local.get $2
   f32.abs
   local.get $0
   f32.load offset=64
   f32.const 0.5
   f32.mul
   f32.le
  else
   i32.const 0
  end
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $assembly/shapes/Convex/Convex#get:vertices (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Convex/Convex#set:vertices (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=44
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=44
 )
 (func $assembly/shapes/Convex/Convex#get:normals (param $0 i32) (result i32)
  local.get $0
  i32.load offset=48
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Convex/Convex#set:normals (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=48
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=48
 )
 (func $assembly/shapes/Convex/Convex#get:triangles (param $0 i32) (result i32)
  local.get $0
  i32.load offset=52
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Convex/Convex#set:triangles (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=52
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=52
 )
 (func $assembly/shapes/Convex/Convex#get:centerOfMass (param $0 i32) (result i32)
  local.get $0
  i32.load offset=56
  call $~lib/rt/pure/__retain
 )
 (func $assembly/shapes/Convex/Convex#set:centerOfMass (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=56
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=56
 )
 (func $assembly/shapes/Convex/Convex#projectOntoLocalAxis (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  f32.const inf
  f32.neg
  local.set $3
  f32.const inf
  local.set $4
  i32.const 0
  local.set $5
  f32.const 0
  local.set $6
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $7
   i32.const 65535
   i32.and
   local.get $0
   i32.load offset=44
   call $~lib/array/Array<~lib/typedarray/Float32Array>#get:length
   i32.const 65535
   i32.and
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $0
    i32.load offset=44
    local.get $7
    i32.const 65535
    i32.and
    call $~lib/array/Array<~lib/typedarray/Float32Array>#__get
    local.set $10
    local.get $5
    call $~lib/rt/pure/__release
    local.get $10
    local.set $5
    global.get $assembly/math/vec2/vec2
    local.get $5
    local.get $1
    call $assembly/math/vec2/Vec2#dot
    local.set $6
    local.get $6
    local.get $3
    f32.gt
    if
     local.get $6
     local.set $3
    end
    local.get $6
    local.get $4
    f32.lt
    if
     local.get $6
     local.set $4
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  local.get $4
  local.get $3
  f32.gt
  if
   local.get $4
   local.set $11
   local.get $3
   local.set $4
   local.get $11
   local.set $3
  end
  global.get $assembly/math/vec2/vec2
  local.get $2
  local.get $4
  local.get $3
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Convex/Convex#ConvexprojectOntoWorldAxis (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $assembly/shapes/Convex/Convex#projectOntoLocalAxis
  local.get $3
  f32.const 0
  f32.ne
  if
   global.get $assembly/math/vec2/vec2
   global.get $assembly/shapes/Convex/worldAxis
   local.get $1
   local.get $3
   call $assembly/math/vec2/Vec2#rotate
   call $~lib/rt/pure/__release
  else
   local.get $1
   local.tee $5
   global.get $assembly/shapes/Convex/worldAxis
   local.tee $6
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $5
   global.set $assembly/shapes/Convex/worldAxis
  end
  global.get $assembly/math/vec2/vec2
  local.get $2
  global.get $assembly/shapes/Convex/worldAxis
  call $assembly/math/vec2/Vec2#dot
  local.set $7
  global.get $assembly/math/vec2/vec2
  local.get $4
  local.get $4
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.get $7
  f32.add
  local.get $4
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.get $7
  f32.add
  call $assembly/math/vec2/Vec2#set
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $assembly/shapes/Box/Box#get:width (param $0 i32) (result f32)
  local.get $0
  f32.load offset=60
 )
 (func $assembly/shapes/Box/Box#set:width (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=60
 )
 (func $assembly/shapes/Box/Box#get:height (param $0 i32) (result f32)
  local.get $0
  f32.load offset=64
 )
 (func $assembly/shapes/Box/Box#set:height (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=64
 )
 (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 100
   i32.const 104
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 0
  f32.store offset=96
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  local.get $2
  f32.const inf
  f32.neg
  f32.const inf
  call $assembly/equations/Equation/Equation#constructor
  local.set $0
  local.get $0
  f32.const 1
  f32.store offset=60
  local.get $0
  f32.const 1
  f32.store offset=96
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#computeB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.load offset=28
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.const 2
  f32.const -1
  call $~lib/typedarray/Float32Array#__set
  local.get $4
  i32.const 5
  local.get $0
  f32.load offset=96
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $assembly/equations/Equation/Equation#computeGiMf
  local.set $5
  local.get $0
  call $assembly/equations/Equation/Equation#computeGW
  local.set $6
  local.get $6
  f32.neg
  local.get $2
  f32.mul
  local.get $3
  local.get $5
  f32.mul
  f32.sub
  local.set $7
  local.get $7
  local.set $8
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#get:ratio (param $0 i32) (result f32)
  local.get $0
  f32.load offset=96
 )
 (func $assembly/equations/rotational-velocity-equation/RotationalVelocityEquation#set:ratio (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=96
 )
 (func $assembly/shapes/shape/Shape#computeMomentOfInertia (param $0 i32) (result f32)
  unreachable
 )
 (func $assembly/shapes/shape/Shape#pointTest (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $assembly/solver/solver/Solver#solve (param $0 i32) (param $1 f32) (param $2 i32)
  unreachable
 )
 (func $assembly/objects/spring/Spring#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 19
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 100
  f32.store
  local.get $0
  f32.const 1
  f32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $3
  if
   local.get $0
   local.get $3
   f32.load
   f32.store
   local.get $0
   local.get $3
   f32.load offset=4
   f32.store offset=4
  end
  local.get $0
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  i32.load offset=8
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $0
  local.tee $6
  local.get $2
  local.tee $5
  local.get $6
  i32.load offset=12
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=12
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/objects/spring/Spring#get:stiffness (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $assembly/objects/spring/Spring#set:stiffness (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $assembly/objects/spring/Spring#get:damping (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $assembly/objects/spring/Spring#set:damping (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $assembly/objects/spring/Spring#get:bodyA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $assembly/objects/spring/Spring#set:bodyA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=8
 )
 (func $assembly/objects/spring/Spring#get:bodyB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
 )
 (func $assembly/objects/spring/Spring#set:bodyB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=12
 )
 (func $assembly/objects/spring/Spring#applyForce (param $0 i32)
  unreachable
 )
 (func $assembly/objects/body/Body#toLocalFrame (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  local.get $0
  i32.load offset=64
  local.get $0
  f32.load offset=88
  call $assembly/math/vec2/Vec2#toLocalFrame
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#setWorldAnchorA (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=16
  local.get $1
  call $assembly/objects/body/Body#toLocalFrame
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#setWorldAnchorB (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=20
  local.get $1
  call $assembly/objects/body/Body#toLocalFrame
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/body/Body#toWorldFrame (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $assembly/math/vec2/vec2
  local.get $1
  local.get $2
  local.get $0
  i32.load offset=64
  local.get $0
  f32.load offset=88
  call $assembly/math/vec2/Vec2#toGlobalFrame
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#getWorldAnchorA (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=8
  local.get $1
  local.get $0
  i32.load offset=16
  call $assembly/objects/body/Body#toWorldFrame
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#getWorldAnchorB (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.get $1
  local.get $0
  i32.load offset=20
  call $assembly/objects/body/Body#toWorldFrame
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 105
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=16
  local.get $0
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  i32.store offset=20
  local.get $0
  f32.const 0
  f32.store offset=24
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/objects/spring/Spring#constructor
  local.set $0
  local.get $0
  local.tee $4
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $5
  local.get $4
  i32.load offset=16
  call $~lib/rt/pure/__release
  local.get $5
  i32.store offset=16
  local.get $0
  local.tee $5
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $4
  local.get $5
  i32.load offset=20
  call $~lib/rt/pure/__release
  local.get $4
  i32.store offset=20
  local.get $3
  if
   local.get $3
   i32.load offset=8
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=16
    local.get $3
    i32.load offset=8
    local.tee $5
    if (result i32)
     local.get $5
    else
     i32.const 1728
     i32.const 5808
     i32.const 81
     i32.const 59
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.load offset=12
   if
    global.get $assembly/math/vec2/vec2
    local.get $0
    i32.load offset=20
    local.get $3
    i32.load offset=12
    local.tee $5
    if (result i32)
     local.get $5
    else
     i32.const 1728
     i32.const 5808
     i32.const 82
     i32.const 59
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/math/vec2/Vec2#copy
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.load offset=16
   if
    local.get $0
    local.get $3
    i32.load offset=16
    local.tee $5
    if (result i32)
     local.get $5
    else
     i32.const 1728
     i32.const 5808
     i32.const 83
     i32.const 51
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/objects/linear-spring/LinearSpring#setWorldAnchorA
   end
   local.get $3
   i32.load offset=20
   if
    local.get $0
    local.get $3
    i32.load offset=20
    local.tee $5
    if (result i32)
     local.get $5
    else
     i32.const 1728
     i32.const 5808
     i32.const 84
     i32.const 51
     call $~lib/builtins/abort
     unreachable
    end
    call $assembly/objects/linear-spring/LinearSpring#setWorldAnchorB
   end
  end
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $6
  global.get $assembly/math/vec2/vec2
  call $assembly/math/vec2/Vec2#create
  local.set $7
  local.get $0
  local.get $6
  call $assembly/objects/linear-spring/LinearSpring#getWorldAnchorA
  local.get $0
  local.get $7
  call $assembly/objects/linear-spring/LinearSpring#getWorldAnchorB
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $7
  call $assembly/math/vec2/Vec2#distance
  local.set $8
  local.get $0
  local.get $8
  f32.store offset=24
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/math/vec2/Vec2#crossZV (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  global.get $~lib/math/NativeMathf.PI
  f32.const 2
  f32.div
  call $assembly/math/vec2/Vec2#rotate
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  local.get $1
  local.get $2
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  local.get $1
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $assembly/objects/linear-spring/LinearSpring#applyForce (param $0 i32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  local.get $0
  f32.load
  local.set $1
  local.get $0
  f32.load offset=4
  local.set $2
  local.get $0
  f32.load offset=24
  local.set $3
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $5
  global.get $assembly/objects/linear-spring/applyForce_r
  call $~lib/rt/pure/__retain
  local.set $6
  global.get $assembly/objects/linear-spring/applyForce_r_unit
  call $~lib/rt/pure/__retain
  local.set $7
  global.get $assembly/objects/linear-spring/applyForce_u
  call $~lib/rt/pure/__retain
  local.set $8
  global.get $assembly/objects/linear-spring/applyForce_f
  call $~lib/rt/pure/__retain
  local.set $9
  global.get $assembly/objects/linear-spring/applyForce_tmp
  call $~lib/rt/pure/__retain
  local.set $10
  global.get $assembly/objects/linear-spring/applyForce_worldAnchorA
  call $~lib/rt/pure/__retain
  local.set $11
  global.get $assembly/objects/linear-spring/applyForce_worldAnchorB
  call $~lib/rt/pure/__retain
  local.set $12
  global.get $assembly/objects/linear-spring/applyForce_ri
  call $~lib/rt/pure/__retain
  local.set $13
  global.get $assembly/objects/linear-spring/applyForce_rj
  call $~lib/rt/pure/__retain
  local.set $14
  local.get $0
  local.get $11
  call $assembly/objects/linear-spring/LinearSpring#getWorldAnchorA
  local.get $0
  local.get $12
  call $assembly/objects/linear-spring/LinearSpring#getWorldAnchorB
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $11
  local.get $4
  i32.load offset=64
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $12
  local.get $5
  i32.load offset=64
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $6
  local.get $12
  local.get $11
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $6
  call $assembly/math/vec2/Vec2#length
  local.set $15
  global.get $assembly/math/vec2/vec2
  local.get $7
  local.get $6
  call $assembly/math/vec2/Vec2#normalize
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $5
  i32.load offset=76
  local.get $4
  i32.load offset=76
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $5
  f32.load offset=100
  local.get $14
  call $assembly/math/vec2/Vec2#crossZV
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $8
  local.get $10
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $10
  local.get $4
  f32.load offset=100
  local.get $13
  call $assembly/math/vec2/Vec2#crossZV
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $8
  local.get $10
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $9
  local.get $7
  local.get $1
  f32.neg
  local.get $15
  local.get $3
  f32.sub
  f32.mul
  local.get $2
  global.get $assembly/math/vec2/vec2
  local.get $8
  local.get $7
  call $assembly/math/vec2/Vec2#dot
  f32.mul
  f32.sub
  call $assembly/math/vec2/Vec2#scale
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $4
  i32.load offset=104
  local.get $4
  i32.load offset=104
  local.get $9
  call $assembly/math/vec2/Vec2#subtract
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $5
  i32.load offset=104
  local.get $5
  i32.load offset=104
  local.get $9
  call $assembly/math/vec2/Vec2#add
  call $~lib/rt/pure/__release
  global.get $assembly/math/vec2/vec2
  local.get $13
  local.get $9
  call $assembly/math/vec2/Vec2#crossLength
  local.set $16
  global.get $assembly/math/vec2/vec2
  local.get $14
  local.get $9
  call $assembly/math/vec2/Vec2#crossLength
  local.set $17
  local.get $4
  local.get $4
  f32.load offset=108
  local.get $16
  f32.sub
  f32.store offset=108
  local.get $5
  local.get $5
  f32.load offset=108
  local.get $17
  f32.add
  f32.store offset=108
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/linear-spring/LinearSpring#get:localAnchorA (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
  call $~lib/rt/pure/__retain
 )
 (func $assembly/objects/linear-spring/LinearSpring#set:localAnchorA (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=16
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=16
 )
 (func $assembly/objects/linear-spring/LinearSpring#get:localAnchorB (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
  call $~lib/rt/pure/__retain
 )
 (func $assembly/objects/linear-spring/LinearSpring#set:localAnchorB (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  i32.store offset=20
 )
 (func $assembly/objects/linear-spring/LinearSpring#get:restLength (param $0 i32) (result f32)
  local.get $0
  f32.load offset=24
 )
 (func $assembly/objects/linear-spring/LinearSpring#set:restLength (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=24
 )
 (func $assembly/objects/rotational-spring/RotationalSpring#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 107
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f32.const 0
  f32.store offset=16
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/objects/spring/Spring#constructor
  local.set $0
  local.get $0
  local.get $2
  f32.load offset=88
  local.get $1
  f32.load offset=88
  f32.sub
  f32.store offset=16
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $assembly/objects/rotational-spring/RotationalSpring#applyForce (param $0 i32)
  (local $1 f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  f32.load
  local.set $1
  local.get $0
  f32.load offset=4
  local.set $2
  local.get $0
  f32.load offset=16
  local.set $3
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load offset=12
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $5
  f32.load offset=88
  local.get $4
  f32.load offset=88
  f32.sub
  local.set $6
  local.get $5
  f32.load offset=100
  local.get $4
  f32.load offset=100
  f32.sub
  local.set $7
  local.get $1
  f32.neg
  local.get $6
  local.get $3
  f32.sub
  f32.mul
  local.get $2
  local.get $7
  f32.mul
  f32.sub
  local.set $8
  local.get $4
  local.get $4
  f32.load offset=108
  local.get $8
  f32.sub
  f32.store offset=108
  local.get $5
  local.get $5
  f32.load offset=108
  local.get $8
  f32.add
  f32.store offset=108
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $assembly/objects/rotational-spring/RotationalSpring#get:restAngle (param $0 i32) (result f32)
  local.get $0
  f32.load offset=16
 )
 (func $assembly/objects/rotational-spring/RotationalSpring#set:restAngle (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=16
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~lib/rt/pure/markGray (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/finalize (param $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/scanBlack (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   local.get $0
   call $~lib/rt/pure/finalize
  end
 )
 (func $~lib/rt/pure/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  drop
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  global.get $~lib/rt/pure/CUR
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    i32.load offset=4
    local.set $6
    local.get $6
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $6
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $5
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $5
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else
     local.get $6
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $6
      i32.const 268435455
      i32.and
      i32.eqz
     else
      i32.const 0
     end
     if
      local.get $5
      call $~lib/rt/pure/finalize
     else
      local.get $5
      local.get $6
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    call $~lib/rt/pure/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  local.get $0
  local.set $3
  loop $for-loop|2
   local.get $3
   local.get $1
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $3
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $for-loop|2
   end
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 336
   i32.const 5904
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  i32.const 0
  drop
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   i32.const 0
   drop
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   i32.const 0
   drop
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/finalize
   else
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else
   i32.const 1
   drop
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   drop
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $assembly/shapes/Shape/Shape#updateBoundingRadius@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case6
    block $case5
     block $case4
      block $case3
       block $case2
        block $case1
         block $case0
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          local.set $1
          local.get $1
          i32.const 85
          i32.eq
          br_if $case0
          local.get $1
          i32.const 87
          i32.eq
          br_if $case1
          local.get $1
          i32.const 94
          i32.eq
          br_if $case2
          local.get $1
          i32.const 96
          i32.eq
          br_if $case3
          local.get $1
          i32.const 99
          i32.eq
          br_if $case4
          local.get $1
          i32.const 101
          i32.eq
          br_if $case5
          local.get $1
          i32.const 8
          i32.eq
          br_if $case6
          br $default
         end
         local.get $0
         call $assembly/shapes/circle/Circle#updateBoundingRadius
         return
        end
        local.get $0
        call $assembly/shapes/convex/Convex#updateBoundingRadius
        return
       end
       local.get $0
       call $assembly/shapes/heightfield/Heightfield#updateBoundingRadius
       return
      end
      local.get $0
      call $assembly/shapes/line/Line#updateBoundingRadius
      return
     end
     local.get $0
     call $assembly/shapes/particle/Particle#updateBoundingRadius
     return
    end
    local.get $0
    call $assembly/shapes/Box/Box#updateBoundingRadius
    return
   end
   local.get $0
   call $assembly/shapes/Convex/Convex#updateBoundingRadius
   return
  end
  unreachable
 )
 (func $assembly/shapes/Shape/Shape#updateArea@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case6
    block $case5
     block $case4
      block $case3
       block $case2
        block $case1
         block $case0
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          local.set $1
          local.get $1
          i32.const 85
          i32.eq
          br_if $case0
          local.get $1
          i32.const 87
          i32.eq
          br_if $case1
          local.get $1
          i32.const 94
          i32.eq
          br_if $case2
          local.get $1
          i32.const 96
          i32.eq
          br_if $case3
          local.get $1
          i32.const 99
          i32.eq
          br_if $case4
          local.get $1
          i32.const 101
          i32.eq
          br_if $case5
          local.get $1
          i32.const 8
          i32.eq
          br_if $case6
          br $default
         end
         local.get $0
         call $assembly/shapes/circle/Circle#updateArea
         return
        end
        local.get $0
        call $assembly/shapes/convex/Convex#updateArea
        return
       end
       local.get $0
       call $assembly/shapes/heightfield/Heightfield#updateArea
       return
      end
      local.get $0
      call $assembly/shapes/line/Line#updateArea
      return
     end
     local.get $0
     call $assembly/shapes/particle/Particle#updateArea
     return
    end
    local.get $0
    call $assembly/shapes/Box/Box#updateArea
    return
   end
   local.get $0
   call $assembly/shapes/Convex/Convex#updateArea
   return
  end
  unreachable
 )
 (func $assembly/shapes/Convex/Convex#updateBoundingRadius@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 101
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/shapes/Box/Box#updateBoundingRadius
   return
  end
  local.get $0
  call $assembly/shapes/Convex/Convex#updateBoundingRadius
 )
 (func $assembly/shapes/Convex/Convex#updateArea@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 101
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/shapes/Box/Box#updateArea
   return
  end
  local.get $0
  call $assembly/shapes/Convex/Convex#updateArea
 )
 (func $assembly/equations/Equation/Equation#computeGq@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 81
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/equations/angle-lock-equation/AngleLockEquation#computeGq
   return
  end
  local.get $0
  call $assembly/equations/Equation/Equation#computeGq
 )
 (func $assembly/shapes/shape/Shape#computeAABB@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32)
  (local $4 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $4
     local.get $4
     i32.const 83
     i32.eq
     br_if $case0
     local.get $4
     i32.const 100
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    local.get $2
    local.get $3
    call $assembly/shapes/capsule/Capsule#computeAABB
    return
   end
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   call $assembly/shapes/plane/Plane#computeAABB
   return
  end
  unreachable
 )
 (func $assembly/shapes/shape/Shape#updateBoundingRadius@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 83
     i32.eq
     br_if $case0
     local.get $1
     i32.const 100
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $assembly/shapes/capsule/Capsule#updateBoundingRadius
    return
   end
   local.get $0
   call $assembly/shapes/plane/Plane#updateBoundingRadius
   return
  end
  unreachable
 )
 (func $assembly/shapes/shape/Shape#updateArea@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 83
     i32.eq
     br_if $case0
     local.get $1
     i32.const 100
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $assembly/shapes/capsule/Capsule#updateArea
    return
   end
   local.get $0
   call $assembly/shapes/plane/Plane#updateArea
   return
  end
  unreachable
 )
 (func $assembly/equations/equation/Equation#computeGq@virtual (param $0 i32) (result f32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 90
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/equations/distance-equation/DistanceEquation#computeGq
   return
  end
  local.get $0
  call $assembly/equations/equation/Equation#computeGq
 )
 (func $assembly/equations/equation/Equation#computeB@virtual (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result f32)
  (local $4 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $4
     local.get $4
     i32.const 28
     i32.eq
     br_if $case0
     local.get $4
     i32.const 33
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    local.get $2
    local.get $3
    call $assembly/equations/contact-equation/ContactEquation#computeB
    return
   end
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   call $assembly/equations/friction-equation/FrictionEquation#computeB
   return
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/equations/equation/Equation#computeB
 )
 (func $assembly/shapes/shape/Shape#raycast@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32)
  (local $5 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $5
     local.get $5
     i32.const 83
     i32.eq
     br_if $case0
     local.get $5
     i32.const 100
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    local.get $2
    local.get $3
    local.get $4
    call $assembly/shapes/capsule/Capsule#raycast
    return
   end
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   local.get $4
   call $assembly/shapes/plane/Plane#raycast
   return
  end
  unreachable
 )
 (func $~lib/rt/pure/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  i32.const 0
  drop
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       i32.const 1
       drop
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 144
        i32.const 79
        i32.const 20
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 144
      i32.const 90
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 1
   drop
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 101
    i32.const 27
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/typedarray/Float32Array>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i32>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/pure/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<~lib/object/Object>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/pure/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/objects/spring/Spring>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/objects/body/Body>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/equations/equation/Equation>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i64,u32>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i64>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/constraints/constraint/Constraint>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/material/contact-material/ContactMaterial>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u32>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/map/Map<i64,assembly/utils/overlap-keeper-record/OverlapKeeperRecord>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 1
  end
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 0
     drop
     i32.const 1
     drop
     local.get $6
     i32.load offset=8
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $3
    i32.const 16
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/utils/overlap-keeper-record/OverlapKeeperRecord>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<assembly/shapes/shape/Shape>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<~lib/typedarray/Uint16Array>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<f32>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<u16>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/function/Function<%28assembly/collision/raycast-result/RaycastResult%29=>void>#__visit_impl (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/function/Function<%28assembly/events/event-emitter/EventArgument%29=>void>#__visit_impl (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$45$break
   block $block$26$break
    block $block$21$break
     block $block$14$break
      block $block$13$break
       block $block$11$break
        block $switch$1$default
         block $switch$1$case$108
          block $switch$1$case$107
           block $switch$1$case$97
            block $switch$1$case$96
             block $switch$1$case$93
              block $switch$1$case$92
               block $switch$1$case$91
                block $switch$1$case$90
                 block $switch$1$case$82
                  block $switch$1$case$80
                   block $switch$1$case$75
                    block $switch$1$case$74
                     block $switch$1$case$71
                      block $switch$1$case$68
                       block $switch$1$case$66
                        block $switch$1$case$65
                         block $switch$1$case$64
                          block $switch$1$case$61
                           block $switch$1$case$60
                            block $switch$1$case$59
                             block $switch$1$case$57
                              block $switch$1$case$55
                               block $switch$1$case$53
                                block $switch$1$case$52
                                 block $switch$1$case$51
                                  block $switch$1$case$49
                                   block $switch$1$case$47
                                    block $switch$1$case$45
                                     block $switch$1$case$42
                                      block $switch$1$case$41
                                       block $switch$1$case$40
                                        block $switch$1$case$36
                                         block $switch$1$case$35
                                          block $switch$1$case$34
                                           block $switch$1$case$33
                                            block $switch$1$case$30
                                             block $switch$1$case$29
                                              block $switch$1$case$27
                                               block $switch$1$case$26
                                                block $switch$1$case$25
                                                 block $switch$1$case$24
                                                  block $switch$1$case$23
                                                   block $switch$1$case$21
                                                    block $switch$1$case$20
                                                     block $switch$1$case$19
                                                      block $switch$1$case$18
                                                       block $switch$1$case$16
                                                        block $switch$1$case$15
                                                         block $switch$1$case$13
                                                          block $switch$1$case$12
                                                           block $switch$1$case$11
                                                            block $switch$1$case$10
                                                             block $switch$1$case$9
                                                              block $switch$1$case$8
                                                               block $switch$1$case$4
                                                                block $switch$1$case$2
                                                                 local.get $0
                                                                 i32.const 8
                                                                 i32.sub
                                                                 i32.load
                                                                 br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$8 $switch$1$case$9 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$case$13 $switch$1$case$13 $switch$1$case$15 $switch$1$case$16 $switch$1$case$2 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$case$21 $switch$1$case$2 $switch$1$case$23 $switch$1$case$24 $switch$1$case$25 $switch$1$case$26 $switch$1$case$27 $switch$1$case$4 $switch$1$case$29 $switch$1$case$30 $switch$1$case$11 $switch$1$case$2 $switch$1$case$33 $switch$1$case$34 $switch$1$case$35 $switch$1$case$36 $switch$1$case$4 $switch$1$case$4 $switch$1$case$13 $switch$1$case$40 $switch$1$case$41 $switch$1$case$42 $switch$1$case$2 $switch$1$case$42 $switch$1$case$45 $switch$1$case$2 $switch$1$case$47 $switch$1$case$2 $switch$1$case$49 $switch$1$case$13 $switch$1$case$51 $switch$1$case$52 $switch$1$case$53 $switch$1$case$13 $switch$1$case$55 $switch$1$case$4 $switch$1$case$57 $switch$1$case$4 $switch$1$case$59 $switch$1$case$60 $switch$1$case$61 $switch$1$case$33 $switch$1$case$4 $switch$1$case$64 $switch$1$case$65 $switch$1$case$66 $switch$1$case$13 $switch$1$case$68 $switch$1$case$68 $switch$1$case$68 $switch$1$case$71 $switch$1$case$68 $switch$1$case$71 $switch$1$case$74 $switch$1$case$75 $switch$1$case$13 $switch$1$case$13 $switch$1$case$13 $switch$1$case$60 $switch$1$case$80 $switch$1$case$29 $switch$1$case$82 $switch$1$case$26 $switch$1$case$26 $switch$1$case$11 $switch$1$case$33 $switch$1$case$11 $switch$1$case$33 $switch$1$case$10 $switch$1$case$90 $switch$1$case$91 $switch$1$case$92 $switch$1$case$93 $switch$1$case$25 $switch$1$case$4 $switch$1$case$96 $switch$1$case$97 $switch$1$case$11 $switch$1$case$33 $switch$1$case$42 $switch$1$case$11 $switch$1$case$11 $switch$1$case$10 $switch$1$case$33 $switch$1$case$33 $switch$1$case$26 $switch$1$case$107 $switch$1$case$108 $switch$1$case$21 $switch$1$default
                                                                end
                                                                return
                                                               end
                                                               local.get $0
                                                               i32.load
                                                               local.tee $2
                                                               if
                                                                local.get $2
                                                                local.get $1
                                                                call $~lib/rt/pure/__visit
                                                               end
                                                               return
                                                              end
                                                              local.get $0
                                                              local.get $1
                                                              call $~lib/array/Array<~lib/typedarray/Float32Array>#__visit_impl
                                                              return
                                                             end
                                                             local.get $0
                                                             local.get $1
                                                             call $~lib/array/Array<i32>#__visit_impl
                                                             return
                                                            end
                                                            local.get $0
                                                            i32.load offset=44
                                                            local.tee $2
                                                            if
                                                             local.get $2
                                                             local.get $1
                                                             call $~lib/rt/pure/__visit
                                                            end
                                                            local.get $0
                                                            i32.load offset=48
                                                            local.tee $2
                                                            if
                                                             local.get $2
                                                             local.get $1
                                                             call $~lib/rt/pure/__visit
                                                            end
                                                            local.get $0
                                                            i32.load offset=52
                                                            local.tee $2
                                                            if
                                                             local.get $2
                                                             local.get $1
                                                             call $~lib/rt/pure/__visit
                                                            end
                                                            local.get $0
                                                            i32.load offset=56
                                                            local.tee $2
                                                            if
                                                             local.get $2
                                                             local.get $1
                                                             call $~lib/rt/pure/__visit
                                                            end
                                                            br $block$11$break
                                                           end
                                                           br $block$11$break
                                                          end
                                                          local.get $0
                                                          i32.load offset=24
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=28
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=60
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=64
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=68
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=72
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=76
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=80
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=104
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=128
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=184
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          local.get $0
                                                          i32.load offset=192
                                                          local.tee $2
                                                          if
                                                           local.get $2
                                                           local.get $1
                                                           call $~lib/rt/pure/__visit
                                                          end
                                                          br $block$13$break
                                                         end
                                                         br $block$13$break
                                                        end
                                                        local.get $0
                                                        local.get $1
                                                        call $~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>#__visit_impl
                                                        return
                                                       end
                                                       local.get $0
                                                       local.get $1
                                                       call $~lib/map/Map<~lib/string/String,~lib/array/Array<%28assembly/events/event-emitter/EventArgument%29=>void>>#__visit_impl
                                                       return
                                                      end
                                                      local.get $0
                                                      local.get $1
                                                      call $~lib/array/Array<~lib/object/Object>#__visit_impl
                                                      return
                                                     end
                                                     local.get $0
                                                     local.get $1
                                                     call $~lib/map/Map<~lib/string/String,~lib/array/Array<~lib/object/Object>>#__visit_impl
                                                     return
                                                    end
                                                    local.get $0
                                                    i32.load offset=8
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=12
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=16
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=20
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=24
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=28
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=40
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=44
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=48
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=52
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=64
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=84
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    local.get $0
                                                    i32.load offset=96
                                                    local.tee $2
                                                    if
                                                     local.get $2
                                                     local.get $1
                                                     call $~lib/rt/pure/__visit
                                                    end
                                                    br $block$13$break
                                                   end
                                                   br $block$21$break
                                                  end
                                                  local.get $0
                                                  local.get $1
                                                  call $~lib/array/Array<assembly/objects/spring/Spring>#__visit_impl
                                                  return
                                                 end
                                                 local.get $0
                                                 local.get $1
                                                 call $~lib/array/Array<assembly/objects/body/Body>#__visit_impl
                                                 return
                                                end
                                                local.get $0
                                                i32.load offset=12
                                                local.tee $2
                                                if
                                                 local.get $2
                                                 local.get $1
                                                 call $~lib/rt/pure/__visit
                                                end
                                                local.get $0
                                                i32.load offset=16
                                                local.tee $2
                                                if
                                                 local.get $2
                                                 local.get $1
                                                 call $~lib/rt/pure/__visit
                                                end
                                                br $block$13$break
                                               end
                                               br $block$26$break
                                              end
                                              local.get $0
                                              local.get $1
                                              call $~lib/array/Array<assembly/equations/equation/Equation>#__visit_impl
                                              return
                                             end
                                             local.get $0
                                             i32.load
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             local.get $0
                                             i32.load offset=4
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             local.get $0
                                             i32.load offset=16
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             local.get $0
                                             i32.load offset=20
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             local.get $0
                                             i32.load offset=28
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             local.get $0
                                             i32.load offset=32
                                             local.tee $2
                                             if
                                              local.get $2
                                              local.get $1
                                              call $~lib/rt/pure/__visit
                                             end
                                             return
                                            end
                                            local.get $0
                                            i32.load offset=96
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            local.get $0
                                            i32.load offset=100
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            local.get $0
                                            i32.load offset=104
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            local.get $0
                                            i32.load offset=108
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            local.get $0
                                            i32.load offset=120
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            local.get $0
                                            i32.load offset=124
                                            local.tee $2
                                            if
                                             local.get $2
                                             local.get $1
                                             call $~lib/rt/pure/__visit
                                            end
                                            br $block$26$break
                                           end
                                           local.get $0
                                           i32.load
                                           local.tee $2
                                           if
                                            local.get $2
                                            local.get $1
                                            call $~lib/rt/pure/__visit
                                           end
                                           local.get $0
                                           i32.load offset=16
                                           local.tee $2
                                           if
                                            local.get $2
                                            local.get $1
                                            call $~lib/rt/pure/__visit
                                           end
                                           return
                                          end
                                          local.get $0
                                          local.get $1
                                          call $~lib/array/Array<assembly/equations/contact-equation/ContactEquation>#__visit_impl
                                          return
                                         end
                                         local.get $0
                                         i32.load offset=96
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         local.get $0
                                         i32.load offset=100
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         local.get $0
                                         i32.load offset=104
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         local.get $0
                                         i32.load offset=108
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         local.get $0
                                         i32.load offset=112
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         local.get $0
                                         i32.load offset=116
                                         local.tee $2
                                         if
                                          local.get $2
                                          local.get $1
                                          call $~lib/rt/pure/__visit
                                         end
                                         br $block$26$break
                                        end
                                        local.get $0
                                        local.get $1
                                        call $~lib/array/Array<assembly/equations/friction-equation/FrictionEquation>#__visit_impl
                                        return
                                       end
                                       local.get $0
                                       local.get $1
                                       call $~lib/map/Map<i64,u32>#__visit_impl
                                       return
                                      end
                                      local.get $0
                                      local.get $1
                                      call $~lib/array/Array<i64>#__visit_impl
                                      return
                                     end
                                     local.get $0
                                     i32.load offset=4
                                     local.tee $2
                                     if
                                      local.get $2
                                      local.get $1
                                      call $~lib/rt/pure/__visit
                                     end
                                     local.get $0
                                     i32.load offset=8
                                     local.tee $2
                                     if
                                      local.get $2
                                      local.get $1
                                      call $~lib/rt/pure/__visit
                                     end
                                     return
                                    end
                                    br $block$45$break
                                   end
                                   local.get $0
                                   local.get $1
                                   call $~lib/array/Array<assembly/constraints/constraint/Constraint>#__visit_impl
                                   return
                                  end
                                  local.get $0
                                  local.get $1
                                  call $~lib/array/Array<assembly/material/contact-material/ContactMaterial>#__visit_impl
                                  return
                                 end
                                 local.get $0
                                 local.get $1
                                 call $~lib/array/Array<u32>#__visit_impl
                                 return
                                end
                                local.get $0
                                i32.load
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                local.get $0
                                i32.load offset=4
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                local.get $0
                                i32.load offset=8
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                local.get $0
                                i32.load offset=12
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                local.get $0
                                i32.load offset=16
                                local.tee $2
                                if
                                 local.get $2
                                 local.get $1
                                 call $~lib/rt/pure/__visit
                                end
                                return
                               end
                               local.get $0
                               i32.load
                               local.tee $2
                               if
                                local.get $2
                                local.get $1
                                call $~lib/rt/pure/__visit
                               end
                               local.get $0
                               i32.load offset=4
                               local.tee $2
                               if
                                local.get $2
                                local.get $1
                                call $~lib/rt/pure/__visit
                               end
                               local.get $0
                               i32.load offset=8
                               local.tee $2
                               if
                                local.get $2
                                local.get $1
                                call $~lib/rt/pure/__visit
                               end
                               local.get $0
                               i32.load offset=12
                               local.tee $2
                               if
                                local.get $2
                                local.get $1
                                call $~lib/rt/pure/__visit
                               end
                               return
                              end
                              local.get $0
                              local.get $1
                              call $~lib/map/Map<i64,assembly/utils/overlap-keeper-record/OverlapKeeperRecord>#__visit_impl
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<assembly/utils/overlap-keeper-record/OverlapKeeperRecord>#__visit_impl
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/array/Array<assembly/shapes/shape/Shape>#__visit_impl
                            return
                           end
                           local.get $0
                           i32.load
                           local.tee $2
                           if
                            local.get $2
                            local.get $1
                            call $~lib/rt/pure/__visit
                           end
                           local.get $0
                           i32.load offset=4
                           local.tee $2
                           if
                            local.get $2
                            local.get $1
                            call $~lib/rt/pure/__visit
                           end
                           local.get $0
                           i32.load offset=8
                           local.tee $2
                           if
                            local.get $2
                            local.get $1
                            call $~lib/rt/pure/__visit
                           end
                           return
                          end
                          local.get $0
                          i32.load offset=8
                          local.tee $2
                          if
                           local.get $2
                           local.get $1
                           call $~lib/rt/pure/__visit
                          end
                          local.get $0
                          i32.load offset=12
                          local.tee $2
                          if
                           local.get $2
                           local.get $1
                           call $~lib/rt/pure/__visit
                          end
                          local.get $0
                          i32.load offset=24
                          local.tee $2
                          if
                           local.get $2
                           local.get $1
                           call $~lib/rt/pure/__visit
                          end
                          return
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<~lib/typedarray/Uint16Array>#__visit_impl
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/array/Array<f32>#__visit_impl
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/array/Array<u16>#__visit_impl
                       return
                      end
                      local.get $0
                      i32.load offset=8
                      local.tee $2
                      if
                       local.get $2
                       local.get $1
                       call $~lib/rt/pure/__visit
                      end
                      br $block$14$break
                     end
                     local.get $0
                     i32.load offset=8
                     local.tee $2
                     if
                      local.get $2
                      local.get $1
                      call $~lib/rt/pure/__visit
                     end
                     local.get $0
                     i32.load offset=12
                     local.tee $2
                     if
                      local.get $2
                      local.get $1
                      call $~lib/rt/pure/__visit
                     end
                     local.get $0
                     i32.load offset=16
                     local.tee $2
                     if
                      local.get $2
                      local.get $1
                      call $~lib/rt/pure/__visit
                     end
                     local.get $0
                     i32.load offset=20
                     local.tee $2
                     if
                      local.get $2
                      local.get $1
                      call $~lib/rt/pure/__visit
                     end
                     local.get $0
                     i32.load offset=24
                     local.tee $2
                     if
                      local.get $2
                      local.get $1
                      call $~lib/rt/pure/__visit
                     end
                     br $block$14$break
                    end
                    local.get $0
                    i32.load offset=8
                    local.tee $2
                    if
                     local.get $2
                     local.get $1
                     call $~lib/rt/pure/__visit
                    end
                    local.get $0
                    i32.load offset=12
                    local.tee $2
                    if
                     local.get $2
                     local.get $1
                     call $~lib/rt/pure/__visit
                    end
                    local.get $0
                    i32.load offset=16
                    local.tee $2
                    if
                     local.get $2
                     local.get $1
                     call $~lib/rt/pure/__visit
                    end
                    local.get $0
                    i32.load offset=20
                    local.tee $2
                    if
                     local.get $2
                     local.get $1
                     call $~lib/rt/pure/__visit
                    end
                    br $block$14$break
                   end
                   local.get $0
                   i32.load offset=8
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=12
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   br $block$14$break
                  end
                  local.get $0
                  local.get $1
                  call $~lib/function/Function<%28assembly/collision/raycast-result/RaycastResult%29=>void>#__visit_impl
                  return
                 end
                 local.get $0
                 i32.load
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=4
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=16
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 return
                end
                local.get $0
                i32.load offset=20
                local.tee $2
                if
                 local.get $2
                 local.get $1
                 call $~lib/rt/pure/__visit
                end
                local.get $0
                i32.load offset=24
                local.tee $2
                if
                 local.get $2
                 local.get $1
                 call $~lib/rt/pure/__visit
                end
                br $block$45$break
               end
               local.get $0
               i32.load offset=4
               local.tee $2
               if
                local.get $2
                local.get $1
                call $~lib/rt/pure/__visit
               end
               local.get $0
               i32.load offset=8
               local.tee $2
               if
                local.get $2
                local.get $1
                call $~lib/rt/pure/__visit
               end
               return
              end
              local.get $0
              i32.load offset=96
              local.tee $2
              if
               local.get $2
               local.get $1
               call $~lib/rt/pure/__visit
              end
              local.get $0
              i32.load offset=100
              local.tee $2
              if
               local.get $2
               local.get $1
               call $~lib/rt/pure/__visit
              end
              local.get $0
              i32.load offset=104
              local.tee $2
              if
               local.get $2
               local.get $1
               call $~lib/rt/pure/__visit
              end
              local.get $0
              i32.load offset=108
              local.tee $2
              if
               local.get $2
               local.get $1
               call $~lib/rt/pure/__visit
              end
              br $block$26$break
             end
             local.get $0
             local.get $1
             call $~lib/function/Function<%28assembly/events/event-emitter/EventArgument%29=>void>#__visit_impl
             return
            end
            local.get $0
            i32.load offset=44
            local.tee $2
            if
             local.get $2
             local.get $1
             call $~lib/rt/pure/__visit
            end
            br $block$11$break
           end
           block $block$62$break
            local.get $0
            i32.load offset=24
            local.tee $2
            if
             local.get $2
             local.get $1
             call $~lib/rt/pure/__visit
            end
            br $block$62$break
           end
           local.get $0
           i32.load
           local.tee $2
           if
            local.get $2
            local.get $1
            call $~lib/rt/pure/__visit
           end
           local.get $0
           i32.load offset=16
           local.tee $2
           if
            local.get $2
            local.get $1
            call $~lib/rt/pure/__visit
           end
           return
          end
          local.get $0
          i32.load offset=16
          local.tee $2
          if
           local.get $2
           local.get $1
           call $~lib/rt/pure/__visit
          end
          local.get $0
          i32.load offset=20
          local.tee $2
          if
           local.get $2
           local.get $1
           call $~lib/rt/pure/__visit
          end
          br $block$21$break
         end
         local.get $0
         i32.load offset=8
         local.tee $2
         if
          local.get $2
          local.get $1
          call $~lib/rt/pure/__visit
         end
         local.get $0
         i32.load offset=12
         local.tee $2
         if
          local.get $2
          local.get $1
          call $~lib/rt/pure/__visit
         end
         local.get $0
         i32.load offset=16
         local.tee $2
         if
          local.get $2
          local.get $1
          call $~lib/rt/pure/__visit
         end
         local.get $0
         i32.load offset=20
         local.tee $2
         if
          local.get $2
          local.get $1
          call $~lib/rt/pure/__visit
         end
         return
        end
        unreachable
       end
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        local.get $1
        call $~lib/rt/pure/__visit
       end
       local.get $0
       i32.load offset=4
       local.tee $2
       if
        local.get $2
        local.get $1
        call $~lib/rt/pure/__visit
       end
       local.get $0
       i32.load offset=32
       local.tee $2
       if
        local.get $2
        local.get $1
        call $~lib/rt/pure/__visit
       end
       return
      end
      local.get $0
      i32.load
      local.tee $2
      if
       local.get $2
       local.get $1
       call $~lib/rt/pure/__visit
      end
      local.get $0
      i32.load offset=4
      local.tee $2
      if
       local.get $2
       local.get $1
       call $~lib/rt/pure/__visit
      end
      return
     end
     local.get $0
     i32.load
     local.tee $2
     if
      local.get $2
      local.get $1
      call $~lib/rt/pure/__visit
     end
     local.get $0
     i32.load offset=4
     local.tee $2
     if
      local.get $2
      local.get $1
      call $~lib/rt/pure/__visit
     end
     return
    end
    local.get $0
    i32.load offset=8
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $0
    i32.load offset=12
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    return
   end
   local.get $0
   i32.load offset=12
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=16
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   local.get $0
   i32.load offset=28
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $assembly/collision/aabb/AABB#setFromPoints@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 f32) (param $4 f32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 3
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 0
   local.set $4
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $assembly/collision/aabb/AABB#setFromPoints
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
