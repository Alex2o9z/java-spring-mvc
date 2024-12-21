package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.config.AesUtil;

@Service
public class AesService {

    public String encrypt(String plainText) {
        try {
            return AesUtil.encrypt(plainText);
        } catch (Exception e) {
            throw new RuntimeException("Error encrypting data: " + e.getMessage());
        }
    }

    public String decrypt(String encryptedText) {
        try {
            return AesUtil.decrypt(encryptedText);
        } catch (Exception e) {
            throw new RuntimeException("Error decrypting data: " + e.getMessage());
        }
    }
}
