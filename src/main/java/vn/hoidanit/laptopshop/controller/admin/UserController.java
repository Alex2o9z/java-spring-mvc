package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.validation.Valid;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UploadService;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    @Value("${stproject.general.value.page-size:Default 10}")
    private int pageSize;

    public UserController(UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    // @RequestMapping("/")
    // public String getHomePage(Model model) {
    // List<User> arrUsers = this.userService.getAllUserByEmail("sang@gmail.com");
    // System.out.println(arrUsers);
    // model.addAttribute("eric", "test");
    // model.addAttribute("hoidanit", "from controller");
    // return "hello";
    // }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model,
            @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                // convert from String to int
                page = Integer.parseInt(pageOptional.get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        Pageable pageable = PageRequest.of(page - 1, pageSize);
        Page<User> usersPage = this.userService.getAllUsers(pageable);
        List<User> users = usersPage.getContent();

        long totalResults = usersPage.getTotalElements();
        int startResult = (page - 1) * pageSize + 1;
        int endResult = Math.min(page * pageSize, (int) totalResults);

        model.addAttribute("users", users);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", usersPage.getTotalPages());
        model.addAttribute("totalResults", totalResults);
        model.addAttribute("startResult", startResult);
        model.addAttribute("endResult", endResult);
        return "admin/user/show";
    }

    @RequestMapping("/admin/user/{id}")
    public String getDetailUserPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUserPage(Model model,
            @ModelAttribute("newUser") @Valid User user,
            BindingResult newUserBindingResult,
            @RequestParam("sangFile") MultipartFile file) {

        // List<FieldError> errors = newUserBindingResult.getFieldErrors();
        // for (FieldError error : errors) {
        // System.out.println(">>>>>>>>>>>>>>>>>>" + error.getField() + " - " +
        // error.getDefaultMessage());
        // }

        // validate
        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/create";
        }

        // uploadFile
        String avatar = this.uploadService.handleSaveUploadfile(file, "avatar");

        // hashPass
        String hashPassword = this.passwordEncoder.encode(user.getPassword());

        user.setAvatar(avatar);
        user.setPassword(hashPassword);
        user.setRole(this.userService.geRoleByName(user.getRole().getName()));
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model, @ModelAttribute("currentUser") User user) {
        User currentUser = this.userService.getUserById(user.getId());
        if (currentUser != null) {
            currentUser.setAddress(user.getAddress());
            currentUser.setFullName(user.getFullName());
            currentUser.setPhone(user.getPhone());
            currentUser.setRole(this.userService.geRoleByName(user.getRole().getName()));
            this.userService.handleSaveUser(currentUser);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        // model.addAttribute("id", id);
        // User user = new User();
        // user.setId(id);
        model.addAttribute("deleteUser", new User());
        return "admin/user/delete";
    }

    // @PostMapping("/admin/user/delete")
    // public String postDeleteUser(Model model, @ModelAttribute("deleteUser") User
    // user) {
    // this.userService.deleteById(user.getId());
    // return "redirect:/admin/user";
    // }
    @PostMapping("/admin/user/delete")
    public String postDeleteUser(RedirectAttributes redirectAttributes, @ModelAttribute("deleteUser") User user) {
        try {
            this.userService.deleteById(user.getId());
            redirectAttributes.addFlashAttribute("successMessage", "Người dùng đã được xoá thành công.");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Xoá người dùng thất bại. Vui lòng thử lại.");
        }
        return "redirect:/admin/user";
    }

}
