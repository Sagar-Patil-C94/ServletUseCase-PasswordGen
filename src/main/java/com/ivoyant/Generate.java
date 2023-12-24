package com.ivoyant;

import com.ivoyant.password.PasswordValidator;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Generate extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        int passwordLength = Integer.parseInt(req.getParameter("length"));
        List<Boolean> responses = new ArrayList<>();
        responses.add(0, "1".equals(req.getParameter("lowercase")));
        responses.add(1, "1".equals(req.getParameter("numbers")));
        responses.add(2, "1".equals(req.getParameter("specialcharacters")));
        responses.add(3, "1".equals(req.getParameter("uppercase")));
        String password = Plugin.generate(responses, passwordLength);
        String strength = Plugin.validate(password);
        List<String> list = Plugin.info();
        req.setAttribute("list", list);
        req.setAttribute("password", password);
        req.setAttribute("strength", strength);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/res.jsp");
        requestDispatcher.forward(req, res);
    }
}
