#!/bin/ksh

datnyvei_co_lojban=$(stat -f %N * | grep '\.md$' | grep -v '-en\.md$' | grep -v '^0-le-ro-datnyvei\.md$' | sort -r);
datnyvei_co_glibau=$(stat -f %N * | grep '-en\.md$' | grep -v '^0-all-files-en\.md$' | sort -r);

function konkatena {
	for datnyvei in $*; do
		cat "$datnyvei";
		echo "";
	done;
}

konkatena $datnyvei_co_lojban > 0-le-ro-datnyvei.md;
konkatena $datnyvei_co_glibau > 0-all-files-en.md;
