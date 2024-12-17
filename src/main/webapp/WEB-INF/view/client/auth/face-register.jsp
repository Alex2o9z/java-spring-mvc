<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Login - SB Admin</title>
                <link href="/admin/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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
            </head>

            <body class="bg-primary">

                <div id="layoutAuthentication">
                    <div id="layoutAuthentication_content">
                        <main>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-lg-5">
                                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                                            <div class="card-header">
                                                <h3 class="text-center font-weight-light my-4">Đăng ký khuôn mặt</h3>
                                            </div>
                                            <div class="card-body">

                                                <video id="video" autoplay playsinline style="display: none;"></video>
                                                <canvas id="canvas" width="400" height="300"></canvas>

                                                <h2 id="status"></h2>
                                                <h3 id="time"></h3>
                                                <div class="mt-4 mb-0">
                                                    <div class="d-grid">
                                                        <button class="btn btn-primary btn-block" id="record">
                                                            Bắt đầu quét
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="mt-4 mb-0">
                                                    <div class="d-grid">
                                                        <a class="btn btn-primary btn-block" href="/">
                                                            Trở lại
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/scripts.js"></script>
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
                                    const rectWidth = 150; //100
                                    const rectHeight = 200; //133
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
                    recordButton.addEventListener('click', async () => {
                        if (recording) return; // Ngăn người dùng nhấn nhiều lần
                        recording = true;
                        var startTime = Date.now();

                        const formData = new FormData();
                        const rectWidth = 150;
                        const rectHeight = 200;
                        const rectX = (canvas.width - rectWidth) / 2;
                        const rectY = (canvas.height - rectHeight) / 2;

                        // Chụp ảnh liên tục trong 2 giây
                        const captureInterval = setInterval(() => {
                            context.drawImage(video, 0, 0, canvas.width, canvas.height);

                            // Vẽ khung hình chữ nhật (vị trí chính giữa)
                            const rectWidth = 150; //100
                            const rectHeight = 200; //133
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



                            document.getElementById('time').textContent = `Đang ghi hình... ${31 - Math.floor((Date.now() - startTime) / 1000)} giây còn lại`;
                        }, 1000 / 2); // 50 FPS

                        // Sau 2 giây, dừng ghi hình và gửi ảnh lên server
                        setTimeout(async () => {
                            clearInterval(captureInterval);
                            recording = false;

                            try {

                                let sessionId = '${sessionScope.id}';

                                formData.append("id", sessionId);

                                const response = await fetch('http://127.0.0.1:5000/save_images', {
                                    method: 'POST',
                                    body: formData
                                });
                                if (response.ok) {
                                    const data = await response.json();
                                    const status = data.status;

                                    if (status === 'success') {
                                        resultImg.src = data.result;
                                        document.getElementById('status').textContent = 'Đã lưu ảnh thành công';
                                    } else {
                                        console.error('Lỗi xử lý ảnh:', data.message);
                                    }
                                } else {
                                    console.error('Lỗi xử lý ảnh:', await response.text());
                                }
                            } catch (err) {
                                console.error('Lỗi kết nối đến server:', err);
                            }
                        }, 16000); // Dừng sau 2 giây
                    });
                </script>
            </body>

            </html>