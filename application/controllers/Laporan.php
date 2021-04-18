<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller
{
    public function index()
    {
        $data['title'] = 'Laporan';
        $this->template->load('back/template', 'back/laporan/laporan', $data);
    }
}
