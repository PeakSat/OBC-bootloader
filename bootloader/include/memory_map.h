//
// Created by iliaz on 8/6/2024.
//

#ifndef MEMORY_MAP_H
#define MEMORY_MAP_H
// #include "bootloader.ld"
#pragma once
extern uint32_t __bootrom_start__;
extern uint32_t __bootrom_size__;
extern uint32_t __approm1_start__;
extern uint32_t __approm2_start__;
extern uint32_t __variables_start__;
extern uint32_t __approm_size__;
extern uint32_t __ram_start__;

#endif //MEMORY_MAP_H
