package main

import (
	"path/filepath"
	"strings"
)

func ProcessLibraries(clangBin, outDir, extraLibsDir string) {
	AllowAllHeaders := func(string) bool { return true }

	// FLUSH all known typedefs / ...

	flushKnownTypes()
	InsertTypedefs(true)

	headerList := []string{}
	zigIncMap := map[string]string{}
	qtstructdefs := make(map[string]struct{})

	// Qt 5
	generate(
		"src",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtCore",
			"/usr/include/x86_64-linux-gnu/qt5/QtGui",
			"/usr/include/x86_64-linux-gnu/qt5/QtWidgets",
		},
		func(fullpath string) bool {
			// Block cbor and generate it separately
			fname := filepath.Base(fullpath)
			if strings.HasPrefix(fname, "qcbor") {
				return false
			}

			return Widgets_AllowHeader(fullpath)
		},
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5Widgets"),
		outDir,
		"include",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	generate(
		"src/cbor",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtCore",
		},
		func(fullpath string) bool {
			// Only include the same json, xml, cbor files excluded above
			fname := filepath.Base(fullpath)
			return strings.HasPrefix(fname, "qcbor")
		},
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5Core"),
		outDir,
		"include/cbor",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	// Qt 5 QtPrintSupport
	generate(
		"src/printsupport",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtPrintSupport",
		},
		AllowAllHeaders,
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5PrintSupport"),
		outDir,
		"include/printsupport",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	// Qt 5 SVG
	generate(
		"src/svg",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtSvg",
		},
		AllowAllHeaders,
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5Svg"),
		outDir,
		"include/svg",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	// Qt 5 QtNetwork
	generate(
		"src/network",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtNetwork",
		},
		func(fullpath string) bool {
			fname := filepath.Base(fullpath)
			return fname != "qtnetwork-config.h"
		},
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5Network"),
		outDir,
		"include/network",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	// Qt 5 QtMultimedia
	generate(
		"src/multimedia",
		[]string{
			"/usr/include/x86_64-linux-gnu/qt5/QtMultimedia",
			"/usr/include/x86_64-linux-gnu/qt5/QtMultimediaWidgets",
		},
		AllowAllHeaders,
		clangBin,
		"--std=c++17 "+pkgConfigCflags("Qt5MultimediaWidgets"),
		outDir,
		"include/multimedia",
		ClangMatchSameHeaderDefinitionOnly,
		&headerList,
		zigIncMap,
		qtstructdefs,
	)

	/*
		// Qt 5 QWebChannel
		generate(
			"src/webchannel",
			[]string{
				"/usr/include/x86_64-linux-gnu/qt5/QtWebChannel",
			},
			AllowAllHeaders,
			clangBin,
			"--std=c++17 "+pkgConfigCflags("Qt5WebChannel"),
			outDir,
			"include/webchannel",
			ClangMatchSameHeaderDefinitionOnly,
			&headerList,
			zigIncMap,
			qtstructdefs,
		)

		// Qt 5 QWebEngine
		generate(
			"src/webengine",
			[]string{
				"/usr/include/x86_64-linux-gnu/qt5/QtWebEngineCore",
				"/usr/include/x86_64-linux-gnu/qt5/QtWebEngineWidgets",
			},
			func(fullpath string) bool {
				baseName := filepath.Base(fullpath)
				return baseName != "qtwebenginewidgets-config.h"
			},
			clangBin,
			"--std=c++17 "+pkgConfigCflags("Qt5WebEngineWidgets"),
			outDir,
			"include/webengine",
			ClangMatchSameHeaderDefinitionOnly,
			&headerList,
			zigIncMap,
			qtstructdefs,
		)

		// Qt 5 PDF
		// Depends on QtCore/Gui/Widgets
		generate(
			"src/pdf",
			[]string{
				"/usr/include/x86_64-linux-gnu/qt5/QtPdf",
				"/usr/include/x86_64-linux-gnu/qt5/QtPdfWidgets",
			},
			AllowAllHeaders,
			clangBin,
			"--std=c++17 "+pkgConfigCflags("Qt5PdfWidgets"),
			outDir,
			"include/pdf",
			ClangMatchSameHeaderDefinitionOnly,
			&headerList,
			zigIncMap,
			qtstructdefs,
		)

		// Qt 5 Charts
		// Depends on QtCore/Gui/Widgets
		generate(
			"src/restricted-extras-charts",
			[]string{
				"/usr/include/x86_64-linux-gnu/qt5/QtCharts",
			},
			AllowAllHeaders,
			clangBin,
			"--std=c++17 "+pkgConfigCflags("Qt5Charts"),
			outDir,
			"include/restricted-extras-charts",
			ClangMatchSameHeaderDefinitionOnly,
			&headerList,
			zigIncMap,
			qtstructdefs,
		)

		// Qt 5 QScintilla
		// Depends on QtCore/Gui/Widgets, QPrintSupport
			generate(
				"src/restricted-extras-qscintilla",
				[]string{
					"/usr/include/x86_64-linux-gnu/qt5/Qsci",
				},
				AllowAllHeaders,
				clangBin,
				"--std=c++17 "+pkgConfigCflags("Qt5PrintSupport"),
				outDir,
				"include/restricted-extras-qscintilla",
				ClangMatchSameHeaderDefinitionOnly,
				&headerList,
				zigIncMap,
				qtstructdefs,
			)
	*/

	/*
		// Post-processing to generate auxiliary files
		structdefs := make([]string, 0, len(qtstructdefs))
		for k := range qtstructdefs {
			structdefs = append(structdefs, "pub const "+k+" = C."+k+";")
		}
		sort.Strings(structdefs)

		typedefHeader := "// THIS FILE IS AUTOMATICALLY GENERATED\n\nconst C = @import(\"qt5c\");\n\n"
		for _, k := range structdefs {
			typedefHeader += k + "\n"
		}

		zigCLibPath := filepath.Join(outDir, "src", "libqtc.zig")
		err := os.WriteFile(zigCLibPath, []byte(typedefHeader), 0644)
		if err != nil {
			panic(err)
		}
		cmd := exec.Command("zig", "fmt", zigCLibPath)
		cmd.Stderr = os.Stderr
		err = cmd.Start()
		if err != nil {
			panic(err)
		}

		qt5cHeader := "// THIS FILE IS AUTOMATICALLY GENERATED\n#pragma once\n\n#include \"qtlibc.h\"\n#include \"threading/libqt5zigthreading.h\"\n"
		for _, k := range headerList {
			qt5cHeader += "#include \"" + k + "\"\n"
		}

		err = os.WriteFile(filepath.Join(outDir, "src", "libqt5c.h"), []byte(qt5cHeader), 0644)
		if err != nil {
			panic(err)
		}

		includeHeader := filepath.Join(outDir, "include", "libqt5c.h")
		err = os.MkdirAll(filepath.Dir(includeHeader), 0755)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(includeHeader, []byte(qt5cHeader), 0644)
		if err != nil {
			panic(err)
		}

		qtLibHeader := filepath.Join(outDir, "src", "qtlibc.h")
		includeQtLibHeader := filepath.Join(outDir, "include", "qtlibc.h")
		qtHeaderFile, err := os.ReadFile(qtLibHeader)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(includeQtLibHeader, qtHeaderFile, 0644)
		if err != nil {
			panic(err)
		}

		zigIncList := []string{
			"pub const threading = @import(\"threading/libqt5zigthreading.zig\").Threading;",
		}
		for _, v := range zigIncMap {
			zigIncList = append(zigIncList, v)
		}
		sort.Strings(zigIncList)
		zigDefs := "// THIS FILE IS AUTOMATICALLY GENERATED\n\npub const C = @import(\"libqtc.zig\");\n\n"
		zigDefs = zigDefs + strings.Join(zigIncList, "\n")
		zigQtPath := filepath.Join(outDir, "src", "libqt5.zig")
		err = os.WriteFile(zigQtPath, []byte(zigDefs), 0644)
		if err != nil {
			panic(err)
		}
		cmd = exec.Command("zig", "fmt", zigQtPath)
		cmd.Stderr = os.Stderr
		err = cmd.Start()
		if err != nil {
			panic(err)
		}

		threadingQtLibHeader := filepath.Join(outDir, "src", "threading", "libqt5zigthreading.h")
		threadingIncludeQtLibHeader := filepath.Join(outDir, "include", "threading", "libqt5zigthreading.h")
		threadingQtHeaderFile, err := os.ReadFile(threadingQtLibHeader)
		if err != nil {
			panic(err)
		}
		err = os.MkdirAll(filepath.Dir(threadingIncludeQtLibHeader), 0755)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(threadingIncludeQtLibHeader, threadingQtHeaderFile, 0644)
		if err != nil {
			panic(err)
		}

		zigThreadingQtLib := filepath.Join(outDir, "src", "threading", "libqt5zigthreading.zig")
		zigThreadingIncludeQtLib := filepath.Join(outDir, "include", "threading", "libqt5zigthreading.zig")
		zigThreadingQtFile, err := os.ReadFile(zigThreadingQtLib)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(zigThreadingIncludeQtLib, zigThreadingQtFile, 0644)
		if err != nil {
			panic(err)
		}

		zigCLibIncludePath := filepath.Join(outDir, "include", "libqtc.zig")
		zigCLibQtInclude, err := os.ReadFile(zigCLibPath)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(zigCLibIncludePath, zigCLibQtInclude, 0644)
		if err != nil {
			panic(err)
		}

		zigQtIncludePath := filepath.Join(outDir, "include", "libqt5.zig")
		zigQtInclude, err := os.ReadFile(zigQtPath)
		if err != nil {
			panic(err)
		}
		err = os.WriteFile(zigQtIncludePath, zigQtInclude, 0644)
		if err != nil {
			panic(err)
		}
	*/
}
