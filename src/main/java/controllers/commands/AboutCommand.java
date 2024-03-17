package controllers.commands;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import urls.enums.UrlMapping;

import java.io.IOException;

public class AboutCommand extends FrontCommand{
    @Override
    public void process() throws ServletException, IOException {
        System.out.println("AboutCommand: processing request");
        ServletContext context = request.getServletContext();
        RequestDispatcher dispatcher = context.getNamedDispatcher(UrlMapping.ABOUT.getServletName());
        dispatcher.forward(request, response);
    }
}
