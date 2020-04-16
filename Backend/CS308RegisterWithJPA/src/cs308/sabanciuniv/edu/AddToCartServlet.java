package cs308.sabanciuniv.edu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "addtocart", urlPatterns = { "/addtocart" })
public class AddToCartServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("In the doPost of add to cart!!!");
		try {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			if(user==null) {
				System.out.println("You are not logged in!!!");
			}
			System.out.println("You are not logged in!!!");
			String itemName = request.getParameter("itemName");
			Games temp = GamesManager.getDeviceByName(itemName);
	
			// Add products to card variable in the session...
			if (session.getAttribute("cart") == null) {
				Map<Games, Integer> cartMap = new HashMap<>();
		        cartMap.put(temp, 1);
				session.setAttribute("cart", cartMap);
					
			} else { // cart is not null, however we don't know if the game that we want to add exists in the cart. If it exists we neet to increment the count of purchased games
				Map<Games, Integer> cartMap = (Map<Games, Integer>) session.getAttribute("cart");
				if(cartMap.containsKey(temp)) { // the game we want 
					int count = cartMap.get(temp);
					count = count +1;
					cartMap.put(temp, count);
				}
				else { // it is the first one
					cartMap.put(temp, 1);
				}
				session.removeAttribute("cart");
				session.setAttribute("cart", cartMap);
			}
			// session.setAttribute("cart", id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
