# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Detect DICOM file through magic string.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Dicom-File-Detect';
requires 'Readonly' => 0;
requires 'perl' => '5.8.0';
readme_from 'Detect.pm';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Dicom-File-Detect';
resources 'homepage' => 'https://github.com/tupinek/Dicom-File-Detect';
resources 'repository' => 'git://github.com/tupinek/Dicom-File-Detect';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
