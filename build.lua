#!/usr/bin/env texlua

module = "example"

typesetfiles = {"**/*.tex", "*.dtx"}
sourcefiles = {"*.dtx", "*.ins", "dir*/"}

kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
