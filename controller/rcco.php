<?php

class Rcco extends Controller
{
	function __construct()
	{
		parent::__construct();
	}

	function render()
	{
		$this->view->Render('rcco/index');
	}
}
