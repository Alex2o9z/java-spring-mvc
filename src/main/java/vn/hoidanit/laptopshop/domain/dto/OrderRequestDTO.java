package vn.hoidanit.laptopshop.domain.dto;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;

public class OrderRequestDTO {

    @NotEmpty(message = "Tên người nhận không được để trống")
    private String receiverName;

    @NotEmpty(message = "Địa chỉ người nhận không được để trống")
    private String receiverAddress;

    @NotEmpty(message = "Số điện thoại người nhận không được để trống")
    @Pattern(regexp = "^\\+?[0-9]{10,15}$", message = "Định dạng số điện thoại không hợp lệ")
    private String receiverPhone;

    // Getters and Setters
    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverPhone() {
        return receiverPhone;
    }

    public void setReceiverPhone(String receiverPhone) {
        this.receiverPhone = receiverPhone;
    }
}
