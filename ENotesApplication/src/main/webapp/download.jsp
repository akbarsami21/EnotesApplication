<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="application/octet-stream" pageEncoding="UTF-8" %>

<%
String noteTitle = request.getParameter("title");
String content = request.getParameter("content");
String fileName = request.getParameter("filename"); // User-provided file name

String encodedFileName = URLEncoder.encode(fileName, "UTF-8");
response.setHeader("Content-Disposition", "attachment; filename=\"" + "Enotes" + ".txt\"");


PrintWriter pw = response.getWriter();

pw.println(noteTitle);
pw.println(content);

pw.close();
%>
