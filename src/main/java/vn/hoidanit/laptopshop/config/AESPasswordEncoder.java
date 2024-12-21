package vn.hoidanit.laptopshop.config;

import org.springframework.security.crypto.password.PasswordEncoder;

public class AESPasswordEncoder implements PasswordEncoder {

    @Override
    public String encode(CharSequence rawPassword) {
        try {
            return AesUtil.encrypt(rawPassword.toString());
        } catch (Exception e) {
            throw new RuntimeException("Error encrypting password", e);
        }
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        try {
            String decryptedPassword = AesUtil.decrypt(encodedPassword);
            return rawPassword.toString().equals(decryptedPassword);
        } catch (Exception e) {
            throw new RuntimeException("Error decrypting password", e);
        }
    }
}
