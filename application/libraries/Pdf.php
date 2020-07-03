<?php

require_once APPPATH . '/third_party/fpdf/fpdf.php';

class pdf extends FPDF{

	function Header(){
		$this->SetFont('Arial','B',16);
		$this->Cell(190,7,'Lab. Akuntansi Menengah',0,1,'C');
		$this->Image('assets/academy/img/bg-img/bg-4.png',10,6,30);
		$this->Ln(2);
		$this->SetFont('Arial','B',9);
		$this->Cell(0,4,'Kampus E Jl. Komjen.Pol.M.Jasin No.9, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451',0,1,'C');
		$this->Cell(0,4,'Email: labamen.gunadarma@gmail.com, Phone : +62895327109744',0,1,'C');
		$this->Ln(1);
		// $this->MultiCell(0,4,'------------------------------------------------------------------------',0,1,'C');
		$this->Cell(0,1," ","B");
	}

	function Footer(){
	    $this->SetY(-15);
	    $this->SetFont('Arial','I',8);
	    $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');
	}

}
