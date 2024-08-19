/* memory_map.ld */
MEMORY
{
  bootrom  (rx)  : ORIGIN = 0x00400000, LENGTH = 0x00004000
  var      (rwx) : ORIGIN = 0x00404000, LENGTH = 0x00002000
  approm1  (rx)  : ORIGIN = 0x00406000, LENGTH = 0x000FD000
  approm2  (rx)  : ORIGIN = 0x00503000, LENGTH = 0x000FD000
  ram      (rwx) : ORIGIN = 0x20400000, LENGTH = 0x60000
}

__bootrom_start__ = ORIGIN(bootrom);
__bootrom_size__ = LENGTH(bootrom);
__approm1_start__ = ORIGIN(approm1);
__approm2_start__ = ORIGIN(approm2);
__variables_start__ = ORIGIN(var);
__approm_size__ = LENGTH(approm1);
__ram_start__ = ORIGIN(ram)+1024;
