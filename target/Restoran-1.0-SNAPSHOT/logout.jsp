<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
        String firstname = (String) session.getAttribute("firstname");
        String lastname = (String) session.getAttribute("lastname");
        String useremail = (String) session.getAttribute("useremail");
        String usermobile = (String) session.getAttribute("usermobile");
%>
<div class="modal fade" id="logout" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" action="LogOutController">
                <div class="modal-header">
                    <h5 class="modal-title">Logout</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h5 class="modal-title"><%=firstname%> ! Are you sure...?</h5>                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="Logout">
                </div>
            </form>
        </div>
    </div>
</div>
