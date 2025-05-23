#pragma once
#ifndef QT6C_LIBQT_H
#define QT6C_LIBQT_H

#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations
struct libqt_string;
struct libqt_strview;
struct libqt_list;
struct libqt_bitarray;
struct libqt_map;
struct libqt_pair;

typedef struct libqt_string libqt_string;
typedef struct libqt_strview libqt_strview;
typedef struct libqt_list libqt_list;
typedef struct libqt_bitarray libqt_bitarray;
typedef struct libqt_map libqt_map;
typedef struct libqt_pair libqt_pair;

// Structs representing Qt-allocated memory
// QString
struct libqt_string {
    size_t len;
    char* data;
};

// QAnyStringView, QByteArrayView, and similar view types
struct libqt_strview {
    size_t len;
    const char* ptr;
};

// QList
struct libqt_list {
    size_t len;
    void* data;
};

// QBitArray
struct libqt_bitarray {
    size_t len;
    uint8_t* data;
};

// QMap
struct libqt_map {
    size_t len;
    void* keys;
    void* values;
};

// QPair
struct libqt_pair {
    void* first;
    void* second;
};

// Generic function to free Qt-allocated memory
static inline void libqt_free(void* ptr) { free(ptr); }

// Helper functions for common cases
static inline void libqt_string_free(libqt_string* str) {
    if (str && str->data) {
        libqt_free(str->data);
        str->data = NULL;
        str->len = 0;
    }
}

static libqt_strview qstrview(const char* string) {
    libqt_strview view = {0}; // Initialize to zero
    if (string) {
        view.ptr = string;
        view.len = strlen(string);
    }
    return view;
}

#define MYLIB_EXPORTS

#if defined(_WIN32) || defined(_WIN64)
  #ifdef MYLIB_EXPORTS
    // Building the DLL
    #define QTLIBC_API __declspec(dllexport)
  #else
    // Using the DLL
    #define QTLIBC_API __declspec(dllimport)
  #endif
#else
  #define QTLIBC_API
#endif

#ifdef __cplusplus
}
#endif

#endif
