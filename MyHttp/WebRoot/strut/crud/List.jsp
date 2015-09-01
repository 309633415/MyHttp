<%@ include file="/common/taglibs.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Book List</title>
    <style type="text/css">
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        table thead tr th {
            border: 1px solid black;
            padding: 3px;
            background-color: #cccccc;
        }
        
        table tbody tr td {
            border: 1px solid black;
            padding: 3px;
        }
    </style>
</head>
<body>    
    <h2>Book List</h2>
    <s:form action="Remove" theme="simple">
        <table cellspacing="0">
            <thead>
                <tr>
                    <th>Select</th>
                    <th>ISBN</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Operation</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="books">
                    <tr>
                        <td><input type="checkbox" name="isbns" value='<s:property value="isbn" />' /></td>
                        <td><s:property value="isbn" /></td>
                        <td>sp<s:property value="title" /></td>
                        <td>$<s:property value="price" /></td>
                        <td>
                            <a href='<s:url action="Edit"><s:param name="isbn" value="isbn" /></s:url>'>
                                Edit
                            </a>
                            &nbsp;
                            <a href='<s:url action="Remove"><s:param name="isbn" value="isbn" /></s:url>'>
                                Delete
                            </a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
        <s:submit value="Remove" /><a href="/MyHttp/strut/crud/Edit.jsp">Add Book</a>
    </s:form>    
</body>
</html>

