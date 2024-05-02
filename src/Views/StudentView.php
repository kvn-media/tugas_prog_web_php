<?php

namespace Views;

class StudentView {
    public function render($result, $page, $totalPages) {
        echo '<style>
            .centered-table {
                margin: auto;
                border-collapse: collapse;
                width: 60%; /* Adjust as needed */
                padding-top: 20px; /* Adjust as needed */
            }

            .centered-table th, .centered-table td {
                padding: 10px;
                text-align: justify; /* Change to center to center text */
                border-bottom: 1px solid #ddd;
            }

            .centered-table th {
                background-color: #f2f2f2;
            }

            .pagination {
                display: flex;
                justify-content: center;
                margin: 20px 0;
            }

            .pagination a {
                margin: 0 10px;
                text-decoration: none;
            }
        </style>';

        echo '<table class="centered-table">';
        echo "<tr><th>ID</th><th>Nama</th><th>NIM</th><th>Jenis Kelamin</th><th>Kelas</th><th>Program Studi</th><th>Angkatan</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["id"]."</td><td>".$row["nama"]."</td><td>".$row["nim"]."</td><td>".$row["jenis_kelamin"]."</td><td>".$row["kelas"]."</td><td>".$row["program_studi"]."</td><td>".$row["angkatan"]."</td></tr>";
        }
        echo "</table>";

        // Pagination
        echo '<div class="pagination">';
        if ($page > 1) {
            echo "<a href='?page=".($page - 1)."'>«</a>"; // Left arrow for previous page
        }
        for ($i = 1; $i <= $totalPages; $i++) {
            if ($i == $page) {
                echo "<a href='?page=$i'><strong>$i</strong></a>";
            } else {
                echo "<a href='?page=$i'>$i</a>";
            }
        }
        if ($page < $totalPages) {
            echo "<a href='?page=".($page + 1)."'>»</a>"; // Right arrow for next page
        }
        echo '</div>';
    }
}

?>
