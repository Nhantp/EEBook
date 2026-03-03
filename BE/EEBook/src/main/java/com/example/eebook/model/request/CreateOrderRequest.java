package com.example.eebook.model.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CreateOrderRequest {

    
    @NotNull(message="Họ khách hàng rỗng")
    @NotEmpty(message="Họ khách hàng rỗng")
    @Size(min=3,max=50,message="Họ khách hàng từ 3-50 ký tự")
    private String name;

    @NotNull(message="Số điện thoại rỗng")
    @NotEmpty(message="Số điện thoại rỗng")
    private String phoneNumber;

    @NotNull(message = "Email rỗng")
    @NotEmpty(message = "Email rỗng")
    @Email(message = "Email không đúng định dạng")
    private String email;

    @NotNull(message="Tên quốc gia rỗng")
    @NotEmpty(message="Tên quốc gia rỗng")
    private String country;

    @NotNull(message="Tên thành phố/tỉnh rỗng")
    @NotEmpty(message="Tên thành phố/tỉnh rỗng")
    private String city;

    @NotNull(message="Tên quận/huyện rỗng")
    @NotEmpty(message="Tên quận/huyện rỗng")
    private String district;

    @NotNull(message="Tên phường/xã rỗng")
    @NotEmpty(message="Tên phường/xã rỗng")
    private String ward;

    @NotNull(message ="Tên địa chỉ cụ thể rỗng")
    @NotEmpty(message ="Tên địa chỉ cụ thể rỗng")
    private String address;

    @NotNull(message ="Tên orderInfo rỗng")
    @NotEmpty(message ="Tên orderInfo rỗng")
    private String orderInfo;

    private long totalPrice;
    
    private String username;

    private List<CreateOrderDetailRequest> orderDetails;
    
}
