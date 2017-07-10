<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');
class Perek extends CI_Controller

{

	// __CONSTRUCT
	function __construct()

	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
		$this->load->model('login_model');
		$this->load->vars(array(
			'title'=>'Aplikasi Pendataan Reklame (Demo Version)'
		));
	}

	// __CALLBACK (LOKASI JALAN)
	function __callback_lokasi_jalan($value, $row)

	{
		return "<a href='https://www.google.co.id/maps/embed/v1/place?key=AIzaSyA_YcbGUM-9dodo8TZ_OweH575H68Mm8-M
				&zoom=18
				&q=$value,Kendal+Jateng'
		        class='map' data-vbtype='iframe'>$value</a>";
	}

	// __CALLBACK (TANGGAL HABIS)
	function __callback_tanggal_habis($value, $row)

	{
		$date = date("d/m/Y",(STRTOTIME($value)));
		return "<span class='date'>$date</span>";
	}

	// __CALLBACK (FOTO REKLAME)
	function __callback_foto_reklame($value, $row)

	{
		return "<a href='" . base_url('assets/uploads/photo/' . $value) . "' class='img'>$value</a>";
	}

	// INDEX PAGE
	public function index()

	{
		$crud = new grocery_CRUD();
		$crud->set_theme('bootstrap');
		$crud->set_language('indonesian');
		$crud->set_table('data_reklame');
		$crud->unset_add();
		$crud->unset_edit();
		$crud->unset_delete();
		$crud->set_field_upload('foto_reklame', 'assets/uploads/photo/');

		$crud->callback_column('lokasi_jalan', array(
			$this,
			'__callback_lokasi_jalan'
		));

		$crud->callback_column('tanggal_habis', array(
			$this,
			'__callback_tanggal_habis'
		));

		$crud->callback_column('foto_reklame', array(
			$this,
			'__callback_foto_reklame'
		));

		$output = $crud->render();
		$output->css_files[] = base_url() . 'assets/perek/css/head.css';
		$output->css_files[] = base_url() . 'assets/perek/css/marker.css';
		$output->css_files[] = base_url() . 'assets/perek/css/venobox.css';
		$output->js_files[] = base_url() . 'assets/perek/js/marker.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.config.map.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.config.img.js';

		$this->load->view('perek', $output);
	}

	// MAIN PAGE
	public function main()

	{
		if(!$this->login_model->isLogged()){
			$this->login_model->logout();
			return;
		}

		$crud = new grocery_CRUD();
		$crud->set_theme('bootstrap');
		$crud->set_language('indonesian');
		$crud->set_table('data_reklame');
		$crud->set_subject('Data reklame');
		$crud->required_fields('nama_titik', 'lokasi_jalan', 'lokasi_kecamatan', 'sarana_reklame', 'jenis_reklame', 'bentuk_reklame');
		$crud->set_field_upload('foto_reklame', 'assets/uploads/photo/', 'jpg|jpeg');

		$crud->callback_column('lokasi_jalan', array(
			$this,
			'__callback_lokasi_jalan'
		));

		$crud->callback_column('tanggal_habis', array(
			$this,
			'__callback_tanggal_habis'
		));

		$crud->callback_column('foto_reklame', array(
			$this,
			'__callback_foto_reklame'
		));

		$output = $crud->render();
		$output->css_files[] = base_url() . 'assets/perek/css/head.css';
		$output->css_files[] = base_url() . 'assets/perek/css/marker.css';
		$output->css_files[] = base_url() . 'assets/perek/css/venobox.css';
		$output->js_files[] = base_url() . 'assets/perek/js/marker.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.config.map.js';
		$output->js_files[] = base_url() . 'assets/perek/js/venobox.config.img.js';

		$state = $crud->getState();

		if ($state == 'add'){
			$output->js_files[] = base_url() . 'assets/perek/js/jquery_plugins/config/jquery.datepicker.config.js';
		}

		elseif ($state == 'edit'){
			$output->js_files[] = base_url() . 'assets/perek/js/jquery_plugins/config/jquery.datepicker.config.js';
		}

		$this->load->view('perek', $output);
	}
}

/* End of file Perek.php */
/* Location: ./application/controllers/Perek.php */
