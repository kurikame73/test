package com.yorizip.myapp.user.controller;

import com.yorizip.myapp.user.dto.request.UserRegisterRequestDto;
import com.yorizip.myapp.user.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.servlet.http.HttpSession;

@Controller
@RequiredArgsConstructor
@Slf4j
public class UserController {
    private final UserService userService;

    @PostMapping("/user/register")
    public String registerUser(@ModelAttribute UserRegisterRequestDto dto)
    {
        log.info("UserController.registerUser + {}", dto);
        // TODO: 서비스레이어로 메서드 빼놓기, 서비스레이어 익셉션핸들러 구현
        if (!dto.getPassword().equals(dto.getPasswordConfirm())) {
            log.info("비밀번호가 일치하지 않습니다 + {}", dto);
            return "redirect:/join/joinKakao.jsp";
        }

        log.info("UserController.registerUser userService.registerUser + {}", dto);
        userService.registerUser(dto);
        return "redirect:/login/login.jsp";
    }
}
