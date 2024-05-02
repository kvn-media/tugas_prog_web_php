<?php

namespace Repositories;

use Config\Database;

class StudentRepository {
    private $db;

    public function __construct(Database $db) {
        $this->db = $db;
    }

    public function getAllStudents() {
        return $this->db->query("SELECT * FROM mahasiswa");
    }

    public function getStudents($page, $studentsPerPage) {
        $start = ($page - 1) * $studentsPerPage;
        $sql = "SELECT * FROM mahasiswa LIMIT ?, ?";
        $stmt = $this->db->prepare($sql);
        $stmt->bind_param("ii", $start, $studentsPerPage);
        $stmt->execute();
        return $stmt->get_result();
    }

    public function getTotalStudents() {
        $result = $this->db->query("SELECT COUNT(*) as total FROM mahasiswa");
        $row = $result->fetch_assoc();
        return $row['total'];
    }
}

?>
