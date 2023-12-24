<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Password Generator And Validator</title>
</head>
<body>
<h2 style="text-align:center;">Hello Welcome To JSP's Password Generator!</h2>
<form action="./generate" method="post">
    <div style="text-align:center;">
        <label for="uppercase">Do you need uppercase letters in password?</label>
        <select id="uppercase" name="uppercase" required>
            <option value="1" autofocus>YES</option>
            <option value="0">NO</option>
        </select><br><br>
        <label for="lowercase">Do you need lowercase letters in password?</label>
        <select id="lowercase" name="lowercase" required>
            <option value="1" autofocus>YES</option>
            <option value="0">NO</option>
        </select><br><br>
        <label for="numbers">Do you need numbers in password?</label>
        <select id="numbers" name="numbers" required>
            <option value="1" autofocus>YES</option>
            <option value="0">NO</option>
        </select><br><br>
        <label for="specialcharacters">Do you need special characters in password?</label>
        <select id="specialcharacters" name="specialcharacters" required>
            <option value="1" autofocus>YES</option>
            <option value="0">NO</option>
        </select><br><br>
        <label for="passwordlength">Enter Password Length</label>
        <input type="number" id="passwordlength" name="length" placeholder="Length of password" min="1" max="25"
               required><br><br>
        <label for="generatepassword"><h3>GENERATE PASSWORD</h3></label>
        <input id="generatepassword" type="submit" value="GENERATE">
    </div>
</form>
</body>
</html>
