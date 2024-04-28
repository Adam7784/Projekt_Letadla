<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\Database\Query;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

class DataController extends BaseController
{
    var $db;

    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        parent::initController($request, $response, $logger);
        $this->db = \Config\Database::connect();
    }

    /**
     *  vykreslí seznam letadel
     */
    public function index()
    {
        $query = $this->db->query('SELECT * FROM letadla');
        $data['letadla'] = $query->getResult();
        echo view('letadla/index', $data);
    }

    /**
     * zobrazí detail letadla
     */
    public function show($id)
    {
        $query = $this->db->query('SELECT * FROM letadla WHERE id =?', [$id]);
        $data['letadlo'] = $query->getRow();
        echo view('letadla/show', $data);
    }

    /**
     * zobrazí formulář pro přidání nového letadla
     */
    public function create()
    {
        echo view('letadla/create');
    }

    /**
     * zpracuje data z formuláře pro přidání nového letadla
     */
    public function store()
    {
        $name = $this->request->getPost('name');
        $description = $this->request->getPost('description');

        $data = [
            'name' => $name,
            'description' => $description
        ];

        $this->db->table('letadla')->insert($data);

        return redirect()->to('letadla');
    }

    /**
     * zobrazí formulář pro úpravu letadla
     */
    public function edit($id)
    {
        $query = $this->db->query('SELECT * FROM letadla WHERE id =?', [$id]);
        $data['letadlo'] = $query->getRow();
        echo view('letadla/edit', $data);
    }

    /**
     * zpracuje data z formuláře pro úpravu letadla
     */
    public function update($id)
    {
        $name = $this->request->getPost('name');
        $description = $this->request->getPost('description');

        $data = [
            'name' => $name,
            'description' => $description
        ];

        $this->db->table('letadla')->where('id', $id)->update($data);

        return redirect()->to('letadla');
    }

    /**
     * smaže letadlo
     */
    public function destroy($id)
    {
        $this->db->table('letadla')->where('id', $id)->delete();

        return redirect()->to('letadla');
    }
}