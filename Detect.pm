package Dicom::File::Detect;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Pure qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT => qw(dicom_detect_file);
Readonly::Scalar our $DCM_MAGIC => qw{DICM};

# Version.
our $VERSION = 0.01;

# Detect dicom file.
sub dicom_detect_file {
	my $file = shift;
	my $dcm_flag = 0;
	open my $fh, '<', $file or err "Cannot open file '$file'.";
	my $seek = seek $fh, 128, 0;
	my $magic;
	my $read = read $fh, $magic, 4;
	close $fh or err "Cannot close file '$file'.";
	if ($magic eq $DCM_MAGIC) {
		return 1;
	} else {
		return 0;
	}
}

1;

__END__
