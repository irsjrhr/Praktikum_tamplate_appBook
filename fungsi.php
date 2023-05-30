<?php 
function format_waktu( $waktu ){
	if ( $waktu < 10 ) {
		$waktu = "0" . $waktu;
	}

	$waktu = $waktu . ".00";
	return $waktu;
}

function jadwal_interval($waktu_buka, $waktu_tutup ){
	$data_waktu = [];

	// Jika waktu berinterval hanya dalam 1 hari 24 jam
	if ( $waktu_buka < $waktu_tutup ) {
		for ($waktu=$waktu_buka; $waktu < $waktu_tutup; $waktu++) { 
			
			$waktu_mulai = $waktu;
			$waktu_selesai = $waktu_mulai + 1;
			$interval = [ $waktu_mulai, $waktu_selesai ];
			$data_waktu[] = $interval;
		}
	}else{
		// Jika waktu berinterval lebih dari 1 hari 24 jam

		// Batas akhir jam 12 malam atau 24 atau 00
		for ($waktu = $waktu_buka; $waktu < 24; $waktu++) { 
			$waktu_mulai = $waktu;
			$waktu_selesai = $waktu_mulai + 1;
			if ( $waktu_selesai == 24 ) {
				$waktu_selesai = 0;
			}
			$interval = [ $waktu_mulai, $waktu_selesai ];
			$data_waktu[] = $interval;
		}

		// Mulai dari 0
		for ($waktu=0; $waktu < $waktu_tutup; $waktu++) { 
			$waktu_mulai = $waktu;
			$waktu_selesai = $waktu_mulai + 1;
			$interval = [ $waktu_mulai, $waktu_selesai ];
			$data_waktu[] = $interval;
		}
	}

	return $data_waktu;
}
?>