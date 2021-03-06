// @@@DEPRECATED_2017-06@@@

/* Written by Walter Bright, Christopher E. Miller, and many others.
 * http://www.digitalmars.com/d/
 * Placed into public domain.
 * Linux(R) is the registered trademark of Linus Torvalds in the U.S. and other
 * countries.
 */

/++
    $(RED Deprecated. Use the appropriate $(D core.sys.posix.*) modules instead.
          This module will be removed in June 2017.)
  +/
deprecated("Import the appropriate core.sys.posix.* modules instead")
module std.c.linux.linux;

version (linux):
public import core.sys.posix.pthread;

extern (C)
{
    extern __gshared
    {
        void* __libc_stack_end;
        int __data_start;
        int _end;

        void *_deh_beg;
        void *_deh_end;
    }
}

struct struct_stat64    // distinguish it from the stat() function
{
    ulong st_dev;       /// device
    uint __pad1;
    uint st_ino;        /// file serial number
    uint st_mode;       /// file mode
    uint st_nlink;      /// link count
    uint st_uid;        /// user ID of file's owner
    uint st_gid;        /// user ID of group's owner
    ulong st_rdev;      /// if device then device number
    uint __pad2;
    align(4) ulong st_size;
    int st_blksize;     /// optimal I/O block size
    ulong st_blocks;    /// number of allocated 512 byte blocks
    int st_atime;
    uint st_atimensec;
    int st_mtime;
    uint st_mtimensec;
    int st_ctime;
    uint st_ctimensec;

    ulong st_ino64;
}
int fstat64(int, struct_stat64*);
int fstat64(in char*, struct_stat64*);

public import core.sys.posix.dirent;
public import core.sys.posix.dlfcn;
public import core.sys.posix.fcntl;
public import core.sys.posix.pwd;
public import core.sys.posix.sys.mman;
public import core.sys.posix.sys.stat;
public import core.sys.posix.sys.time;
public import core.sys.posix.sys.types;
public import core.sys.posix.sys.wait;
public import core.sys.posix.time;
public import core.sys.posix.unistd;
public import core.sys.posix.utime;
