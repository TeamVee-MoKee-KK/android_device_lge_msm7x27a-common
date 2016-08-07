/*
 * Copyright (C) 2013  Rudolf Tammekivi <rtammekivi@gmail.com>
 * Copyright (C) 2016  Caio Oliveira <caiooliveirafarias0@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see [http://www.gnu.org/licenses/].
 */

#include <string.h>

int bt_get_rfkill_state_path(char *state_path, size_t size);

int write_value(const char *path, const char *value, size_t size);
