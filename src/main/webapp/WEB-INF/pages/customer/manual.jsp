<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../includes/customer/css.jsp" />
        <title>Manual</title>
    </head>
        <body>
        <!-- Begin -->
            <!-- Loader begin -->
            <jsp:include page="../../includes/common/loader.jsp"/>
            <!-- Loader end -->
            
            <!-- Header Section Begin -->
            <jsp:include page="../../includes/customer/header.jsp"/>
            <!-- Header Section End -->
            
            <!-- Breadcrumb Section Begin -->
            <jsp:include page="../../includes/customer/breadcrumb.jsp"/>
            <!-- Breadcrumb Section End -->

            <div class="container mt-5">
                <h4 class="font-weight-bold py-2 d-inline-block" style="border-bottom: 3px solid #d30000;">Giải thích thuật ngữ</h4>

                <div class="table-responsive mt-3">
                    <table class="table table-bordered">
                        <thead style="vertical-align: middle;" class="align-middle">
                            <tr class="text-center">
                                <th style="vertical-align: middle;" scope="col" class="text-nowrap">Số thứ tự</th>
                                <th style="vertical-align: middle;" scope="col">Thuật ngữ</th>
                                <th style="vertical-align: middle;" scope="col">Giải thích</th>
                            </tr>
                        </thead>
                        <tbody class="align-middle">
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">1</th>
                                <td style="vertical-align: middle;">Nguyên phát</td>
                                <td style="vertical-align: middle;">Do di truyền, ăn uống tác động trực tiếp đến bệnh</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">2</th>
                                <td style="vertical-align: middle;">Thứ phát</td>
                                <td style="vertical-align: middle;">Là bệnh bị khi mà bị bệnh khác thì nó bị</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">3</th>
                                <td style="vertical-align: middle;">Purin</td>
                                <td style="vertical-align: middle;">Là một chất có nhiều trong tôm, cua, lòng đỏ trứng, gan, thận, ...</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">4</th>
                                <td style="vertical-align: middle;">Acid uric máu</td>
                                <td style="vertical-align: middle;">Là một chất thải trong cơ thể. Acid uric máu bình thường: nam ≥ 420 µmol/l, nữ ≥ 360µmol/l.</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">5</th>
                                <td style="vertical-align: middle;">Vi khuẩn sinh mủ không đặc hiệu</td>
                                <td style="vertical-align: middle;">Là các vi khuẩn không phải do lao, phong, nấm, ký sinh trùng hay virus</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">6</th>
                                <td style="vertical-align: middle;">Thiếu máu</td>
                                <td style="vertical-align: middle;">Ở nam giới, thiếu máu khi Hb < 14 g / dL, Hct < 42%, hoặc RBC < 4,5 triệu / μL. Ở phụ nữ, Hb < 12 g / dL, Hct < 37%, hoặc RBC < 4 triệu / μL</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">7</th>
                                <td style="vertical-align: middle;">Tràn dịch khớp</td>
                                <td style="vertical-align: middle;">Là hiện tượng dịch bôi trơn ở các khớp tiết ra nhiều bất thường, dịch khớp ngập ổ khớp và theo xương chảy ra xuống bắp gây ra sưng, dau và vận động khó khăn</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">8</th>
                                <td style="vertical-align: middle;">Màng hoạt dịch</td>
                                <td style="vertical-align: middle;">Là một miếng đệm nhỏ nằm ở phía trong bao khớp, chứa đựng hàng loạt các chất nhầy gọi là hoạt dịch có tác dụng bôi trơn hệ thống xương khớp và nuôi dưỡng các sụn khớp của cơ thể</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">9</th>
                                <td style="vertical-align: middle;">Túi thanh dịch</td>
                                <td style="vertical-align: middle;">Là các khoang chứa dịch do túi tiết ra và thường ở các vị trí chịu ma sát của cơ thể (ví dụ, nơi gân hoặc cơ đi ngang qua mấu xương). Túi thanh dich làm giảm ma sát giữa các phần chuyển động và giúp cho chuyển động dễ dàng hơn. Một số liên kết với khớp</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">10</th>
                                <td style="vertical-align: middle;">Tốc độ máu lắng</td>
                                <td style="vertical-align: middle;">
                                    <p>Giá trị bình thường:</p>
                                    <p>- Ở trẻ nhỏ: 0 - 13 mm/hr</p>
                                    <p>- Ở người lớn: </p>
                                    <ul class="ml-5">
                                        <li>Nam dưới 50 tuổi: từ 0 - 15 mm/hr</li>
                                        <li>Nữ dưới 50 tuổi: từ 0 - 20 mm/hr</li>
                                        <li>Nam trên 50 tuổi: từ 0 - 20 mm/hr</li>
                                        <li>Nữ trên 50 tuổi: từ 0 - 30 mm/hr</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">11</th>
                                <td style="vertical-align: middle;">CRP</td>
                                <td style="vertical-align: middle;">Là một loại protein do gan sản xuất. dưới 0.5 mg/100ml (5 mg/l) huyết thanh</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">12</th>
                                <td style="vertical-align: middle;">Số lượng bạch cầu</td>
                                <td style="vertical-align: middle;">Giá trị bình thường từ 4.0 đến 10.0G/L trong một thể tích máu</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">13</th>
                                <td style="vertical-align: middle;">Bạch cầu trung tính</td>
                                <td style="vertical-align: middle;">Giá trị bình thường là 2-8 g/l, tương đương với 43-76% tổng số bạch cầu</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">14</th>
                                <td style="vertical-align: middle;">Đường tiết niệu</td>
                                <td style="vertical-align: middle;">Là hệ cơ quan chịu trách nhiệm lọc máu, hình thành và bài tiết nước tiểu cũng như các chất độc, các sản phẩm của chuyển hóa ra ngoài.</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">15</th>
                                <td style="vertical-align: middle;">Viêm điểm bám gân</td>
                                <td style="vertical-align: middle;">Là bệnh lý viêm ở gân, bao gân, dây chằng thường tại vị trí bám vào xương. Viêm điểm bám tận của gân xuất hiện quanh khu vực bám của gân với xương, gồm các vùng gân cổ chân, đầu gối, háng và khuỷu tay</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">16</th>
                                <td style="vertical-align: middle;">Calci hoá dây chằng</td>
                                <td style="vertical-align: middle;">Tình trạng vôi hóa dây chằng xảy ra khi cơ thể của bạn tích tụ một lượng lớn canxi tại những dây chằng, mạch máu, mô cơ thể hoặc những cơ quan khác có liên quan.  Sự tích tụ này nếu xảy ra lâu ngày chúng sẽ làm cứng, đồng thời phá vỡ quá trình và những cấu trúc thông thường của cơ thể</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">17</th>
                                <td style="vertical-align: middle;">Tăng sừng hoá </td>
                                <td style="vertical-align: middle;">Là một tình trạng da khá thường gặp với biểu hiện đặc trưng là các nút sừng ở vị trí nang lông, tạo thành các sẩn nhô lên khỏi mặt da, làm cho da thô ráp, sần sùi.</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">18</th>
                                <td style="vertical-align: middle;">Tràn dịch phổi</td>
                                <td style="vertical-align: middle;">Là tình trạng lượng dịch trong khoang màng phổi nhiều hơn mức sinh lý (Bình thường trong khoang màng phổi có một ít dịch khoảng 10-15ml). </td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">19</th>
                                <td style="vertical-align: middle;">Ngón tay dùi trống</td>
                                <td style="vertical-align: middle;">Là hiện tượng móng tay hoặc móng chân phát triển lớn hơn bình thường và có hình dáng như một chiếc thìa úp ngược</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">20</th>
                                <td style="vertical-align: middle;">Tổn thương gân</td>
                                <td style="vertical-align: middle;">Là kết quả của sự hao mòn dần dần đến gân do sử dụng quá mức hoặc do quá trình lão hoá tự nhiên. Bất cứ ai cũng có thể bị tổn thương gân. Nhưng những người thực hiện các chuyển động tương tự lặp đi lặp lại trong công việc, thể thao hoặc các hoạt động hàng ngày có khả năng làm ảnh hưởng đến gân nhiều hơn.</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">21</th>
                                <td style="vertical-align: middle;">Bao khớp</td>
                                <td style="vertical-align: middle;">Là một bộ phận ở khớp, chứa dịch khớp. Nó có thể bị thủng, rách làm cho dịch khớp chảy ra ngoài</td>
                            </tr>
                            <tr class="align-middle">
                                <th style="vertical-align: middle;" class="text-center" scope="row">22</th>
                                <td style="vertical-align: middle;">Thận bị tổn thương</td>
                                <td style="vertical-align: middle;">Là thận ngưng hoạt động lọc các chất thải ra khoi cơ thể, dẫn đến lắng đọng các chất thải và gây ra các bệnh khác</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Footer Section Begin -->
            <jsp:include page="../../includes/customer/footer.jsp"/>
            <!-- Footer Section End -->
        <!-- End -->
        <jsp:include page="../../includes/customer/js.jsp" />
        
        <script>
            $("#manual-page").addClass('active');
            $("#page-title").text('User manual');

            $("#sub-title").text('Hướng dẫn sử dụng!');
        </script>
    </body>
</html>