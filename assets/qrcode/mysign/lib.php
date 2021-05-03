<?php

function koneksi()
{
    $local = $_SERVER['SERVER_NAME'];
    if ($local == "localhost") {
        $host = "localhost";
        $user = "root";
        $password = "";
        $db = "sistadb";
    } else {
        $host = "localhost";
        $user = "sniaunja_mysurve";
        $password = "QWERTYUI!@#$%^&*asdfghjk";
        $db = "sniaunja_sista";
    }
    return mysqli_connect($host, $user, $password, $db);
}

function getId()
{
    $link = koneksi();
    $sql = "SELECT ID from signature ORDER BY ID DESC limit 1";
    $res = mysqli_query($link, $sql);
    $row = mysqli_fetch_row($res);
    $id = ++$row[0];
    return $id;
}

function saveSignature($data)
{
    $link = koneksi();
    $query = "INSERT INTO signature VALUES (" . $data['id'] . ", '" . $data['nid'] . "', '" . $data['nama'] . "', '" . $data['ket'] . "')";

    return mysqli_query($link, $query);
}

function getSignature($id)
{
    $link = koneksi();
    $sql = "SELECT * FROM signature WHERE ID=$id limit 1";
    $res = mysqli_query($link, $sql);
    return mysqli_fetch_row($res);
}
function getMhs()
{
    $link = koneksi();
    $sql = "SELECT * FROM mhs ORDER BY NAMA ASC";
    return  mysqli_query($link, $sql);
}
function getDosen()
{
    $link = koneksi();
    $sql = "SELECT * FROM dosen ORDER BY KODE ASC";
    return  mysqli_query($link, $sql);
}
