package vn.hoidanit.laptopshop.controller.client;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.beans.factory.annotation.Value;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import vn.hoidanit.laptopshop.domain.Cart;
import vn.hoidanit.laptopshop.domain.CartDetail;
import vn.hoidanit.laptopshop.domain.Order;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.Product_;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.VNPayService;
import vn.hoidanit.laptopshop.domain.dto.OrderRequestDTO;
import vn.hoidanit.laptopshop.domain.dto.ProductCriteriaDTO;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class ItemController {

    private final ProductService productService;
    private final VNPayService vNPayService;
    private final UserService userService;

    @Value("${stproject.general.value.page-size:Default 10}")
    private int pageSize;

    public ItemController(
            ProductService productService,
            VNPayService vNPayService,
            UserService userService) {
        this.productService = productService;
        this.vNPayService = vNPayService;
        this.userService = userService;
    }

    // @GetMapping("/product/{id}")
    // public String getProductPage(Model model, @PathVariable long id) {
    // Product product = this.productService.fetchProductById(id).get();
    // model.addAttribute("product", product);
    // model.addAttribute("id", id);
    // return "client/product/detail";
    // }

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id, HttpServletRequest request) {
        Product product = this.productService.fetchProductById(id).get();
        model.addAttribute("product", product);
        String target = product.getTarget();

        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User currentUser = userService.getUserById(idUser);
        currentUser.plusOne(target);
        userService.handleSaveUser(currentUser);

        model.addAttribute("user", currentUser);
        return "client/product/detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        long productId = id;
        String email = (String) session.getAttribute("email");

        this.productService.handleAddProductToCart(email, productId, session, 1);

        return "redirect:/";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        Cart cart = this.productService.fetchByUser(currentUser);

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);

        model.addAttribute("cart", cart);

        return "client/cart/show";
    }

    @PostMapping("/delete-cart-product/{id}")
    public String deleteCartDetail(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long cartDetailId = id;
        this.productService.handleRemoveCartDetail(cartDetailId, session);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String getCheckOutPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        Cart cart = this.productService.fetchByUser(currentUser);

        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            totalPrice += cd.getPrice() * cd.getQuantity();
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("orderRequestDTO", new OrderRequestDTO());

        return "client/cart/checkout";
    }

    @PostMapping("/confirm-checkout")
    public String getCheckOutPage(@ModelAttribute("cart") Cart cart) {
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.productService.handleUpdateCartBeforeCheckout(cartDetails);
        return "redirect:/checkout";
    }

    // @PostMapping("/place-order")
    // public String handlePlaceOrder(
    // HttpServletRequest request,
    // @RequestParam("receiverName") String receiverName,
    // @RequestParam("receiverAddress") String receiverAddress,
    // @RequestParam("receiverPhone") String receiverPhone,
    // @RequestParam("paymentMethod") String paymentMethod,
    // @RequestParam("totalPrice") String totalPrice) throws
    // UnsupportedEncodingException {
    // User currentUser = new User();// null
    // HttpSession session = request.getSession(false);
    // long id = (long) session.getAttribute("id");
    // currentUser.setId(id);

    // final String uuid = UUID.randomUUID().toString().replace("-", "");

    // this.productService.handlePlaceOrder(currentUser, session,
    // receiverName, receiverAddress, receiverPhone,
    // paymentMethod, uuid);

    // if (!paymentMethod.equals("COD")) {
    // // todo: redirect to VNPAY
    // String ip = this.vNPayService.getIpAddress(request);
    // String vnpUrl =
    // this.vNPayService.generateVNPayURL(Double.parseDouble(totalPrice), uuid, ip);

    // return "redirect:" + vnpUrl;
    // }

    // return "redirect:/thanks";

    // }

    @PostMapping("/checkout")
    public String handlePlaceOrder(
            HttpServletRequest request,
            @RequestParam("paymentMethod") String paymentMethod,
            @RequestParam("totalPrice") String totalPrice,
            @Valid @ModelAttribute("orderRequestDTO") OrderRequestDTO orderRequestDTO,
            BindingResult result, Model model, RedirectAttributes redirectAttributes)
            throws UnsupportedEncodingException {

        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        // Kiểm tra lỗi validate
        if (result.hasErrors()) {
            Cart cart = this.productService.fetchByUser(currentUser);
            List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();

            model.addAttribute("cartDetails", cartDetails);
            model.addAttribute("totalPrice", totalPrice);
            return "client/cart/checkout";
        }

        final String uuid = UUID.randomUUID().toString().replace("-", "");

        this.productService.handlePlaceOrder(currentUser, session,
                orderRequestDTO.getReceiverName(), orderRequestDTO.getReceiverAddress(),
                orderRequestDTO.getReceiverPhone(), paymentMethod, uuid);

        if (!paymentMethod.equals("COD")) {
            // todo: redirect to VNPAY
            String ip = this.vNPayService.getIpAddress(request);
            String vnpUrl = this.vNPayService.generateVNPayURL(Double.parseDouble(totalPrice),
                    uuid, ip);
            return "redirect:" + vnpUrl;
        }
        return "redirect:/thanks";
    }

    @GetMapping("/thanks")
    public String getThankYouPage(
            Model model,
            @RequestParam("vnp_ResponseCode") Optional<String> vnpayResponseCode,
            @RequestParam("vnp_TxnRef") Optional<String> paymentRef) {

        if (vnpayResponseCode.isPresent() && paymentRef.isPresent()) {
            // thanh toán qua VNPAY, cập nhật trạng thái order
            String paymentStatus = vnpayResponseCode.get().equals("00")
                    ? "PAYMENT_SUCCEED"
                    : "PAYMENT_FAILED";
            this.productService.updatePaymentStatus(paymentRef.get(), paymentStatus);
        }

        return "client/cart/thanks";
    }

    @PostMapping("/add-product-from-view-detail")
    public String handleAddProductFromViewDetail(
            @RequestParam("id") long id,
            @RequestParam("quantity") long quantity,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        String email = (String) session.getAttribute("email");
        this.productService.handleAddProductToCart(email, id, session, quantity);
        return "redirect:/product/" + id;
    }

    @GetMapping("/products")
    public String getProductPage(Model model,
            ProductCriteriaDTO productCriteriaDTO,
            HttpServletRequest request) {
        int page = 1;
        // int pageSize = 5;
        try {
            if (productCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(productCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = PageRequest.of(page - 1, pageSize);

        if (productCriteriaDTO.getSort() != null && productCriteriaDTO.getSort().isPresent()) {
            String sort = productCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, pageSize, Sort.by(Product_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, pageSize, Sort.by(Product_.PRICE).descending());
            }
        }

        Page<Product> prs = this.productService.fetchProductsWithSpec(pageable, productCriteriaDTO);

        List<Product> products = prs.getContent().size() > 0 ? prs.getContent()
                : new ArrayList<Product>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page
            qs = qs.replace("page=" + page, "");
        }

        long totalResults = prs.getTotalElements();
        int startResult = (page - 1) * pageSize + 1;
        int endResult = Math.min(page * pageSize, (int) totalResults);

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());
        model.addAttribute("totalResults", totalResults);
        model.addAttribute("startResult", startResult);
        model.addAttribute("endResult", endResult);
        model.addAttribute("queryString", qs);
        return "client/product/show";
    }

    @GetMapping("/search")
    public String getSearchPage(
            Model model,
            ProductCriteriaDTO productCriteriaDTO,
            HttpServletRequest request) {
        int page = 1;

        try {
            if (productCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(productCriteriaDTO.getPage().get());
            }
        } catch (Exception e) {
            // Ignore exception and keep default page = 1
        }

        Pageable pageable = PageRequest.of(page - 1, pageSize);

        // Handle sort by price
        if (productCriteriaDTO.getSort() != null && productCriteriaDTO.getSort().isPresent()) {
            String sort = productCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, pageSize, Sort.by(Product_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, pageSize, Sort.by(Product_.PRICE).descending());
            }
        }

        // Fetch products with search functionality
        Page<Product> prs = this.productService.fetchProductsWithSpecForSearch(pageable, productCriteriaDTO);

        List<Product> products = prs.getContent().size() > 0 ? prs.getContent() : new ArrayList<>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            qs = qs.replace("page=" + page, "");
        }

        long totalResults = prs.getTotalElements();
        int startResult = (page - 1) * pageSize + 1;
        int endResult = Math.min(page * pageSize, (int) totalResults);

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());
        model.addAttribute("totalResults", totalResults);
        model.addAttribute("startResult", startResult);
        model.addAttribute("endResult", endResult);
        model.addAttribute("queryString", qs);
        return "client/search/show";
    }

}