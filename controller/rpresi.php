<?php

class Rpresi extends Controller
{
	function __construct()
	{
		parent::__construct();
	}

	function render()
	{
		$this->view->Render('rpresi/index');
	}
}
