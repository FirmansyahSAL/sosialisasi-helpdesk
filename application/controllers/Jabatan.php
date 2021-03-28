<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Jabatan extends CI_Controller
{
    public function index()
    {
        $this->template->load('back/template', 'back/jabatan/jabatan');
    }
}
