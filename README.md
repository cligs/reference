CLiGS reference repository
==========================

This repository serves as a central location for reference data, for example schemas for validating XML/TEI files or files for checking compliance with the list of available keywords.

The repository contains:

* A folder "tei" with the CLiGS TEI schema files and ODD file as well as a TEI header template.
* A folder "keywords" with a file containing examples of CLiGS descriptive metadata keywords schemas (in CSV or XML/TEI) with their values to be used in the TEI header as well as a script to check compliance with the keywords (a schematron file for the keywords in TEI). As the keywords schema depends on the kind of text collection, it is stored together with each collection in the [CLiGS textbox](https://github.com/cligs/textbox).
