<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jabatan extends CI_Controller
{
    public function index()
    {
        $data['jabatan'] = $this->M_jabatan->get_jabatan();

        $this->template->load('back/template', 'back/jabatan/jabatan', $data);
    }

    public function proses_jabatan()
    {

        $this->template->load('back/template', 'back/jabatan/formjabatan');
    }

    public function simpan_jabatan()
    {
        $this->form_validation->set_rules('jabatan', 'Jabatan', 'trim|required');
        $this->form_validation->set_message('required', '{field} Harus di isi');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

        if ($this->form_validation->run() == TRUE) {
            $data = [
                'jabatan' => $this->input->post('jabatan')
            ];
            $this->M_jabatan->insert($data);
            $this->session->set_flashdata('message', '<div class="alert alert-info"> Data Berhasil disimpan', '</div>');
            redirect('jabatan', 'refresh');
        } else {
            $this->index();
        }
    }
}
