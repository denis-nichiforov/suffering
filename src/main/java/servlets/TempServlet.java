package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

@WebServlet("/temp")
public class  TempServlet extends HttpServlet {

        int i = 0;

    @Override
    protected  void doGet(HttpServletRequest req, HttpServletResponse resp) {
//        int i = 0;
        synchronized (this){
            for (int j = 0; j < 1000000; j++) {
                i++;
            }

            System.out.println(i);
        }

        }


    public static void main(String[] args) {

        for (int j = 0; j < 2; j++) {
            new Thread() {
                @Override
                public void run() {
                    try {
                        URLConnection urlConnection = new URL("http://localhost:8080/temp").openConnection();
                        urlConnection.getInputStream();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }.start();
        }

    }
}
