<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Petugas extends CI_Controller
{
    public function index()
	{
    $data['tb_barang'] = $this->Barang_model->tampil_data()->result();
    $data['total_lelang'] = $this->db->get('tb_lelang')->num_rows();
    $data['total_petugas'] = $this->db->get_where('tb_petugas', ['id_level' => 2])->num_rows();
    $data['total_masyarakat'] = $this->db->get('tb_masyarakat')->num_rows();

    $this->load->view('templates_admin/header', $data);
    $this->load->view('templates_admin/sidebar_petugas', $data);
    $this->load->view('petugas/dashboard/dashboard', $data);
    $this->load->view('templates_admin/footer');
    }
}