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
        
        <button id="newNoteBtn">New Sticky Note</button> 
        <button id="viewNote"><a href="viewNote.htm">View your Sticky Note<a></button>
       <button id="logout"><a href="logout.htm">Logout</a></button>
<%
session = request.getSession(false);
Integer userId = (Integer) session.getAttribute("userId");
%>
    <div>
    <table border="1" cellpadding="10" cellspacing="0">
        <thead>
            <tr>
                <th>Note ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="note" items="${noteList}">
                <tr>
                    <td>${note.id}</td>
                    <td>${note.title}</td>
                    <td>${note.content}</td>
                    <td>
                        <form action="editNote.htm" method="get" style="display:inline;">
                            <input type="hidden" name="id" value="${note.id}" />
                            <button type="submit">Edit</button>
                        </form>
                        <form action="deleteNote.htm" method="get" style="display:inline;">
                            <input type="hidden" name="id" value="${note.id}" />
                            <button type="submit" onclick="return confirm('Are you sure you want to delete this note?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
    <br><br><a href="dashboard.htm">Back</a>
<script>
    document.getElementById('newNoteBtn').addEventListener('click', function () {
        document.getElementById('stickyNoteEditor').style.display = 'block';
    });
   
</script>
</center>
</body>
</html>
