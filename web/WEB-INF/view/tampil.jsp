<!-- step 2: di tampil.jsp
selanjutnya di: ViewController.java -->
<%-- 
    Document   : tampil
    Created on : Nov 26, 2019, 2:09:12 PM
    Author     : eliteRaihan
--%>

<%@taglib prefix="spring"   uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c"        uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TB/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tampilkan</title>
        <style type="text/css">
            .even {
                background-color: orange;
            }
        </style>
    </head>
    <body>
        <h1>Data DVD</h1>
        <h3> <a href="nameView.htm">Tambah DVD</a></h3></br>
        <table>
            <tr>
                <td>Kode DVD</td>
                <td>Nama DVD</td>
                <td>Jenis DVD</td>
                <td>Harga</td>
                <td>Keterangan</td>
            </tr>
            <c:forEach items="$ {dataDvd}" var="dyd" varStatus="status">
                <tr class="<c:if test="${status.count % 2==0}">even</c:if>">
                    <td><c:out value="${cvd.kdDvd}" ></c:out></td>
                    <td><c:out value="${cvd.namaDvd}" ></c:out></td>
                    <td><c:out value="${cvd.jenisDvd}" ></c:out></td>
                    <td><c:out value="${cvd.harga}" ></c:out></td>
                    <td><a href="?FormEdit.htm?kode=${dvd.kdDvd}">Edit</a>
                        <a href="delete.htm?kode=${dvd.kdDvd}">Hapus</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
