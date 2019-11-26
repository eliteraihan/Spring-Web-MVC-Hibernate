<!-- step 4: di nameView.jsp
selanjutnya di:  -->
<%-- 
    Document   : nameView
    Created on : Nov 26, 2019, 2:56:05 PM
    Author     : eliteRaihan
--%>

<%@taglib prefix="spring"   uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter your name</title>
    </head>
    <body>
        <h1>Data DVD</h1>
        <spring:nestedPath path="dvd">
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Kode DVD</td><td>:</td><td>
                            <spring:bind path="kdDvd">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td>Nama DVD</td><td>:</td><td>
                            <spring:bind path="namaDvd">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td>Jenis DVD</td><td>:</td><td>
                            <spring:bind path="jenisDvd">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td>Harga</td><td>:</td><td>
                            <spring:bind path="harga">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind>
                        </td>
                    </tr>

                    <tr><tdxinput type="submit" value="Simpan"></td></tr>
        
                </table>
            </form>
        </spring:nestedPath>

    </body>
</html>
