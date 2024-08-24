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
            display: block;
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
        <h3>Update your Sticky Notes</h3>

    <div class="sticky-note-editor" id="stickyNoteEditor">
        <h3>Create/Edit Sticky Note</h3>
        
        <form action="editNote.htm" method="POST">
            <input type="hidden" id="id" name="id" value="${noteContent[0].id}" required>
            <label for="noteTitle">Title</label>
            <input type="text" id="noteTitle" name="title" value="${noteContent[0].title}" required>

            <label for="noteContent">Content</label>
            <textarea id="noteContent" name="content" value="${noteContent[0].content}" rows="4" required></textarea>

            <button type="submit">Save</button>
        </form>
   </div>
<br><br><a href="viewNote.htm">Back</a>

</center>
</body>
</html>
