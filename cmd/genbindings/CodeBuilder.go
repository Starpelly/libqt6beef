package main

import (
	"strings"
)

// Custom StringBuilder type because Go's is fucking ridiculous
type CodeBuilder struct {
	strings.Builder
	tabCount int
	line     int
}

func (sb *CodeBuilder) IncreaseTab() {
	sb.tabCount++
}

func (sb *CodeBuilder) DecreaseTab() {
	sb.tabCount--
}

func (sb *CodeBuilder) AppendTabs(n int) {
	for i := 0; i < n; i++ {
		sb.WriteString("\t")
	}
}

func (sb *CodeBuilder) AppendNewLine() {
	if sb.line > 0 {
		sb.WriteString("\n")
	}
	sb.line++
}

func (sb *CodeBuilder) WriteEmptyLine() {
	sb.WriteLine("")
}

func (sb *CodeBuilder) WriteLine(s string) {
	lines := strings.Split(s, "\n")

	for _, line := range lines {
		sb.AppendNewLine()
		sb.AppendTabs(sb.tabCount)
		sb.WriteString(line)
	}
}
