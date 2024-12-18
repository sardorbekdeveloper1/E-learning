<%-- Document : adminCourseManage Created on : May 16, 2023, 5:26:30 PM Author : MSII --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>

                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <meta name="description" content="">
                    <meta name="author" content="">

                    <title>Doc-Lesson Edition</title>

                    <!-- Custom fonts for this template -->
                    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
                    <link
                        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                        rel="stylesheet">

                    <!-- Custom styles for this template -->
                    <link href="css/sb-admin-2.min.css" rel="stylesheet">

                    <!-- Custom styles for this page -->
                    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
                    <link href="css/mobiscroll.javascript.min.css" rel="stylesheet" />
                    <script src="js/mobiscroll.javascript.min.js"></script>
                    <script src="https://kit.fontawesome.com/81e4fcabce.js" crossorigin="anonymous"></script>
                    <script
                        src="https://cdn.tiny.cloud/1/fb0gncsdhd40naw93pa7w44slm5a5dctuxn1ekv2kuyto7vy/tinymce/6/tinymce.min.js"
                        referrerpolicy="origin"></script>
                    <script>
                        tinymce.init({
                            selector: '#exampleFormControlTextarea2'
                        });
                    </script>
                </head>

                <body id="page-top">

                    <!-- Page Wrapper -->
                    <div id="wrapper">

                        <!-- Sidebar -->
                        <%@include file="adminSidebar.jsp" %>
                            <!-- End of Sidebar -->

                            <!-- Content Wrapper -->
                            <div id="content-wrapper" class="d-flex flex-column">

                                <!-- Main Content -->
                                <div id="content">

                                    <!-- Topbar -->
                                    <%@include file="topBar.jsp" %>
                                        <!-- End of Topbar -->

                                        <!-- Begin Page Content -->
                                        <div class="container-fluid">
                                            <h1 class="h3 mb-2 text-gray-800 pb-4">Add Documentation Lesson</h1>
                                            <form action="updateLesson" method="POST">
                                                <input type="hidden" name="courseId" value="${courseId}" />
                                                <input type="hidden" name="lessonId" value="${lesson.id}" />
                                                <input type="hidden" name="doc" value="true" />
                                                <!-- Page Heading -->
                                                <div class="form-group">
                                                    <label for="exampleFormControlInput1">Lesson Title</label>
                                                    <input type="text" value="${lesson.title}" name="title"
                                                        class="form-control" id="exampleFormControlInput1"
                                                        placeholder="Lesson Title">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea1">Lesson Description</label>
                                                    <textarea name="description" class="form-control"
                                                        id="exampleFormControlTextarea1"
                                                        rows="3">${lesson.description}</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleFormControlTextarea2">Lesson Content</label>
                                                    <textarea name="content" class="form-control"
                                                        id="exampleFormControlTextarea2">${doc.content}</textarea>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Update Lesson</button>
                                            </form>
                                        </div>
                                        <!-- /.container-fluid -->

                                </div>
                                <!-- End of Main Content -->

                                <!-- Footer -->
                                <footer class="sticky-footer bg-white">
                                    <div class="container my-auto">
                                        <div class="copyright text-center my-auto">
                                            <span>Copyright &copy; Your Website 2020</span>
                                        </div>
                                    </div>
                                </footer>
                                <!-- End of Footer -->

                            </div>
                            <!-- End of Content Wrapper -->

                    </div>
                    <!-- End of Page Wrapper -->

                    <!-- Scroll to Top Button-->
                    <a class="scroll-to-top rounded" href="#page-top">
                        <i class="fas fa-angle-up"></i>
                    </a>

                    <!-- Logout Modal-->
                    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">Select "Logout" below if you are ready to end your current
                                    session.</div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                    <a class="btn btn-primary" href="adminlogout">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Bootstrap core JavaScript-->
                    <script src="vendor/jquery/jquery.min.js"></script>
                    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- Core plugin JavaScript-->
                    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Custom scripts for all pages-->
                    <script src="js/sb-admin-2.min.js"></script>

                    <!-- Page level plugins -->
                    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
                    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

                    <!-- Page level custom scripts -->
                    <script src="js/demo/datatables-demo.js"></script>
                    <script src="js/demo/custom.js"></script>
                    <script>/*  ==========================================
     SHOW UPLOADED IMAGE
     * ========================================== */
                        function readURL(input) {
                            if (input.files && input.files[0]) {
                                var reader = new FileReader();

                                reader.onload = function (e) {
                                    $('#imageResult')
                                        .attr('src', e.target.result);
                                };
                                reader.readAsDataURL(input.files[0]);
                            }
                        }

                        $(function () {
                            $('#upload').on('change', function () {
                                readURL(input);
                            });
                        });

                        /*  ==========================================
                         SHOW UPLOADED IMAGE NAME
                         * ========================================== */
                        var input = document.getElementById('upload');
                        var infoArea = document.getElementById('upload-label');

                        input.addEventListener('change', showFileName);
                        function showFileName(event) {
                            var input = event.srcElement;
                            var fileName = input.files[0].name;
                            infoArea.textContent = 'File name: ' + fileName;
                        }
                    </script>

                </body>

                </html>
