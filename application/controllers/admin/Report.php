<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('transaction_model');
		$this->load->model('order_model');
		$this->load->model('product_model');

	}

	public function index()
	{
		$message_success = $this->session->flashdata('message_success');
		$this->data['message_success'] = $message_success;

		$message_fail = $this->session->flashdata('message_fail');
		$this->data['message_fail'] = $message_fail;

		$total = $this->transaction_model->get_total();
		$this->data['total']=$total;

		//get_sum($field, $where = array())


		$total_rp = $this->transaction_model->get_sum_between();
		$this->data['total_rp']=$total_rp;
		





		$this->load->library('pagination');
		$config = array();
		$base_url = admin_url('report/index');
		$per = 10;
		$uri = 4;
		$config = pagination($base_url,$total,$per,$uri);

		
		$this->pagination->initialize($config);

		$segment = isset($this->uri->segments['4'])?$this->uri->segments['4']:NULL;
		$segment = intval($segment);
		
		$input['limit'] = array($config['per_page'],$segment);

		$input['order'] = array('id' , 'ASC');
		$transaction = $this->transaction_model->get_list($input);
		$this->data['transaction'] = $transaction;



		$this->data['temp']='admin/report/index';
		$this->load->view('admin/main',$this->data);
	}



}