<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Xác nhận khuôn mặt" />
            </jsp:include>

            <body>
                <style>
                    /* Phong cách cho canvas */
                    #canvas {
                        border: 5px solid #11afe8;
                        /* Viền xanh */
                        border-radius: 20px;
                        /* Bo góc */
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                        /* Đổ bóng nhẹ */
                        background-color: #fff;
                        /* Nền trắng cho canvas */
                        /* padding: 1px; */
                        /* Khoảng cách giữa viền và nội dung */
                        margin-left: 40px;
                    }
                </style>

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <main class="site-main  main-container no-sidebar" style="margin-top: -4.5rem;">
                    <div class="container">
                        <div class="row">
                            <div class="main-content col-md-12">
                                <div class="page-main-content">
                                    <div class="kobolg">
                                        <div class="kobolg-notices-wrapper"></div>
                                        <div class="u-columns col1-set" id="customer_login">
                                            <div class="u-column0 col-0">
                                                <h2>Đăng nhập bằng khuôn mặt</h2>
                                                <form id="form_login" class="kobolg-form kobolg-form-login login"
                                                    method="post" action="/login">
                                                    <c:if test="${param.error != null}">
                                                        <div class="my-2" style="color: red;">Invalid email or password.
                                                        </div>
                                                    </c:if>

                                                    <c:if test="${param.logout != null}">
                                                        <div class="my-2" style="color: green;">Đăng xuất thành công.
                                                        </div>
                                                    </c:if>

                                                    <video id="video" autoplay playsinline
                                                        style="display: none;"></video>
                                                    <div class="form-floating mb-3"></div>
                                                    <canvas id="canvas" width="400" height="300"></canvas>
                                                    <!-- <button id="record">Ghi hình</button> -->
                                                    <!-- <img id="result" alt="Ảnh trả về sẽ hiển thị tại đây"> -->
                                                    <h2 id="result_label" style="display: none;"></h2>
                                                    <h2 id="min_distance" style="display: none;"></h2>



                                                    <div class="form-floating mb-3">
                                                        <input id="username" class="form-control" type="email"
                                                            placeholder="name@example.com" name="username"
                                                            style="display: none;" />
                                                        <!-- value="bqsang.20it1@gmail.com" style="display: none;" -->
                                                        <!-- <label for="inputEmail">Email address</label> -->
                                                    </div>
                                                    <div class="form-floating mb-3">
                                                        <input id="password" class="form-control" type="password"
                                                            placeholder="Password" name="password"
                                                            style="display: none;" />
                                                        <!-- <label for="inputPassword">Password</label> -->
                                                    </div>
                                                    <div>
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                    </div>

                                                    <!-- <div class="row kobolg-form kobolg-form-login login">
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />
                                                            <button type="submit" class="kobolg-Button button"
                                                                name="login" value="Log in">Đăng nhập
                                                            </button>
                                                        </div>
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide align-self-center">
                                                            Chưa có tài khoản?&nbsp;<a href="/register">Đăng ký!</a>
                                                        </div>
                                                    </div> -->

                                                </form>

                                                <div class="row">
                                                    <div class="col">
                                                        <hr>
                                                    </div>
                                                    <div class="col text-nowrap">
                                                        Hoặc đăng nhập với
                                                    </div>
                                                    <div class="col">
                                                        <hr>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row kobolg-form kobolg-form-login login">
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/oauth2/authorization/google'">
                                                            <span class="uicons-brands-google"></span>
                                                            Google
                                                        </button>
                                                    </div>
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/oauth2/authorization/github'">
                                                            <span class="uicons-brands-github"></span>
                                                            Github
                                                        </button>
                                                    </div>
                                                    <!-- <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/face-login'">
                                                            Xác nhận khuôn mặt
                                                        </button>
                                                    </div> -->
                                                </div>

                                                <!-- <div
                                                    class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide text-center">
                                                    <a href="my-account.htmllost-password/">Quên mật
                                                        khẩu?</a>
                                                </div> -->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- Content End -->

                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />

                <script>
                    const video = document.getElementById('video');
                    const canvas = document.getElementById('canvas');
                    const context = canvas.getContext('2d');
                    const recordButton = document.getElementById('record');
                    const resultImg = document.getElementById('result');

                    let recording = false;

                    // Yêu cầu quyền truy cập camera
                    navigator.mediaDevices.getUserMedia({ video: true })
                        .then(stream => {
                            video.srcObject = stream;

                            // Vẽ khung hình chữ nhật lên video
                            video.addEventListener('play', () => {
                                const drawRectangle = () => {
                                    context.drawImage(video, 0, 0, canvas.width, canvas.height);

                                    // Vẽ khung hình chữ nhật (vị trí chính giữa)
                                    const rectWidth = 150;
                                    const rectHeight = 200;
                                    const rectX = (canvas.width - rectWidth) / 2;
                                    const rectY = (canvas.height - rectHeight) / 2;
                                    context.strokeStyle = 'red';
                                    context.lineWidth = 2;
                                    context.strokeRect(rectX, rectY, rectWidth, rectHeight);

                                    if (!recording) requestAnimationFrame(drawRectangle); // Dừng khi đang ghi hình
                                };

                                drawRectangle();
                            });
                        })
                        .catch(err => {
                            console.error("Không thể truy cập camera: ", err);
                        });

                    // Ghi hình trong 2 giây và gửi ảnh lên server
                    // recordButton.addEventListener('click', );
                    fetch_interval = setInterval(async () => {
                        if (recording) return; // Ngăn người dùng nhấn nhiều lần
                        recording = true;

                        const formData = new FormData();
                        const rectWidth = 150;
                        const rectHeight = 200;
                        const rectX = (canvas.width - rectWidth) / 2;
                        const rectY = (canvas.height - rectHeight) / 2;

                        // Chụp ảnh liên tục trong 2 giây
                        const captureInterval = setInterval(() => {
                            context.drawImage(video, 0, 0, canvas.width, canvas.height);

                            // Vẽ khung hình chữ nhật (vị trí chính giữa)
                            const rectWidth = 150;
                            const rectHeight = 200;
                            const rectX = (canvas.width - rectWidth) / 2;
                            const rectY = (canvas.height - rectHeight) / 2;
                            context.strokeStyle = 'red';
                            context.lineWidth = 2;
                            context.strokeRect(rectX, rectY, rectWidth, rectHeight);

                            // Cắt phần hình chữ nhật từ canvas
                            const croppedCanvas = document.createElement('canvas');
                            const croppedContext = croppedCanvas.getContext('2d');
                            croppedCanvas.width = rectWidth;
                            croppedCanvas.height = rectHeight;
                            croppedContext.drawImage(canvas, rectX, rectY, rectWidth, rectHeight, 0, 0, rectWidth, rectHeight);

                            // Thêm ảnh vào FormData
                            croppedCanvas.toBlob(blob => {
                                formData.append('images', blob, 'frame.jpg');
                            }, 'image/jpeg');
                        }, 1000 / 5); // 50 FPS

                        // Sau 2 giây, dừng ghi hình và gửi ảnh lên server
                        setTimeout(async () => {
                            clearInterval(captureInterval);
                            recording = false;

                            try {
                                const response = await fetch('http://127.0.0.1:5000/process_images', {
                                    method: 'POST',
                                    body: formData
                                });
                                if (response.ok) {
                                    const data = await response.json();
                                    console.log(data);

                                    if (data.error) {
                                        // alert("You're scammer")
                                        console.log(data.error)
                                        return;
                                    }

                                    const label = data.result;
                                    const distance = data.distance;
                                    const password = data.pass
                                    const yourname = data.username
                                    console.log(label);
                                    console.log(distance);

                                    if (distance > 0.6) {
                                        return;
                                    }

                                    document.getElementById('result_label').innerText = `Kết quả: ` + label;
                                    document.getElementById('username').value = label;
                                    document.getElementById('password').value = password;
                                    // alert("Hello" + yourname);

                                    document.getElementById("form_login").submit();

                                    clearInterval(fetch_interval)


                                    // document.getElementById('min_distance').innerText = `Khoảng cách: ${distance}`;
                                } else {
                                    console.error('Lỗi xử lý ảnh:', await response.text());
                                }
                            } catch (err) {
                                console.error('Lỗi kết nối đến server:', err);
                            }
                        }, 1100); // Dừng sau 2 giây
                    }, 1000 / 2);
                </script>

            </body>

            </html>