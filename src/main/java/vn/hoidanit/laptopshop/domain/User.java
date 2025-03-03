package vn.hoidanit.laptopshop.domain;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Email(message = "Email không hợp lệ", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    private String email;

    @NotNull
    @Size(message = "Password phải có tối thiểu 5 kí tự", min = 5)
    private String password;

    @NotNull
    @Size(message = "Họ tên phải có tối thiểu 2 kí tự", min = 2)
    private String fullName;

    private String address;
    private String phone;
    private String avatar;
    private String provider;

    @Column(name = "type_views_1", columnDefinition = "BIGINT DEFAULT 0")
    private Long type_views_1;

    @Column(name = "type_views_2", columnDefinition = "BIGINT DEFAULT 0")
    private Long type_views_2;

    @Column(name = "type_views_3", columnDefinition = "BIGINT DEFAULT 0")
    private Long type_views_3;

    @Column(name = "type_views_4", columnDefinition = "BIGINT DEFAULT 0")
    private Long type_views_4;

    @PrePersist
    public void prePersist() {
        if (this.provider == null) {
            this.provider = "LOCAL";
        }
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    // roleId
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    @OneToMany(mappedBy = "user")
    List<Order> orders;

    @OneToOne(mappedBy = "user")
    private Cart cart;

    // public User(Long id, String email, String password, String fullName, String
    // address, String phone) {
    // this.id = id;
    // this.email = email;
    // this.password = password;
    // this.fullName = fullName;
    // this.address = address;
    // this.phone = phone;
    // }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Long getType_views_1() {
        return type_views_1;
    }

    public void setType_views_1(Long type_views_1) {
        this.type_views_1 = type_views_1;
    }

    public Long getType_views_2() {
        return type_views_2;
    }

    public void setType_views_2(Long type_views_2) {
        this.type_views_2 = type_views_2;
    }

    public Long getType_views_3() {
        return type_views_3;
    }

    public void setType_views_3(Long type_views_3) {
        this.type_views_3 = type_views_3;
    }

    public Long getType_views_4() {
        return type_views_4;
    }

    public void setType_views_4(Long type_views_4) {
        this.type_views_4 = type_views_4;
    }

    public void plusOne(String target) {
        switch (target) {
            case "GAMING":
                this.type_views_1 += 1;
                break;
            case "THIET-KE-DO-HOA":
                this.type_views_1 += 1;
                break;
            case "SINHVIEN-VANPHONG":
                this.type_views_2 += 1;
                break;
            case "MONG-NHE":
                this.type_views_3 += 1;
                break;
            case "DOANH-NHAN":
                this.type_views_4 += 1;
                break;
            default:
                break;
        }
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", password=" + password + ", fullName=" + fullName
                + ", address=" + address + ", phone=" + phone + ", avatar=" + avatar + ", role=" + role + ", orders="
                + orders + "]";
    }

}
