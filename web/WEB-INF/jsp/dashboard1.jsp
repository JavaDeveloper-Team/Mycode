<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>User Dashboard</title>
    <style>
        .dashboard {
            display: inline;
            
            justify-content: space-between;
        }

      
        .sticky-note-editor, .sticky-note-list {
            width: 70%;
        }

        .sticky-note-editor {
            display: none;
            border: 1px solid #ccc;
            padding: 10px;
            background-color: #f0f8ff;
        }

        .sticky-note-editor input, .sticky-note-editor textarea {
            width: 100%;
            margin-bottom: 10px;
        }

        .sticky-note-list ul {
            list-style: none;
            padding: 0;
        }

        .sticky-note-list ul li {
            margin-bottom: 5px;
            cursor: pointer;
        }

        .sticky-note-list ul li:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
<div class="dashboard">
    <center>
        <h3>Your Sticky Notes</h3>
        
        <button id="newNote"><a href="dashboard.htm">New Sticky Note<a></button> 
        <button id="viewNote"><a href="viewNote.htm">View your Sticky Note<a></button>
        <button id="logout"><a href="logout.htm">Logout</a></button>
       
<%
session = request.getSession(false);
Integer userId = (Integer) session.getAttribute("userId");
%>
    <div class="sticky-note-editor" id="stickyNoteEditor">
        <h3>Create/Edit Sticky Note</h3>
        
        <form action="dashboard.htm" method="POST">
            <input type="hidden" id="userid" name="userid" value="${userId}" required>
            <label for="noteTitle">Title</label>
            <input type="text" id="noteTitle" name="title" required>

            <label for="noteContent">Content</label>
            <textarea id="noteContent" name="content" rows="4" required></textarea>

            <button type="submit">Save</button>
        </form>
   </div>

<script>
    document.getElementById('newNoteBtn').addEventListener('click', function () {
        document.getElementById('stickyNoteEditor').style.display = 'block';
    });
   
</script>
</center>
</body>
</html>
