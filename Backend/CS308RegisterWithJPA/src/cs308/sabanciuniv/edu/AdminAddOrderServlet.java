package cs308.sabanciuniv.edu;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminAddOrderServlet
 */
@WebServlet("/AdminAddOrderServlet")
public class AdminAddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		try{
			HttpSession session = request.getSession();
			User user = (User)session.getAttribute("user");
			
			if(user.getUserType() == User.userType.Admin){

				ResultSet rs = null;
				String userEmail = request.getParameter("mail");
				String[] itemNames = request.getParameter("list_names").split(",");
				String[] itemQuantities = request.getParameter("list_q").split(",");
				Map<Games, Integer> hashmap = new HashMap<>();
				EntityManagerFactory emf = Persistence.createEntityManagerFactory("cs308");
				EntityManager em = emf.createEntityManager();
				int countingVariable = 0;
				String htmlText = "<H1>"+"Hello " + user.getName()+"\n" + "You have made the following purchase from our website: "+"<H1>";

				for(String itemName : itemNames)
				{
					System.out.println("Query is " + itemName);
					try
					{
						Object obj = em.createQuery("from Games where name=:nameTemp").setParameter("nameTemp", itemName).setMaxResults(1).getSingleResult();
						Games temp = (Games) obj;
						hashmap.put(temp, Integer.parseInt(itemQuantities[countingVariable]));
						htmlText += "<H2>"+itemQuantities[countingVariable] + " copies of " + itemName + "\n"+"</H2><img src=\""+ temp.getHeader_image() +"\"><br>";
					}
					catch(NoResultException e)
					{
						System.out.println("Item could not be found in the database!!!");
					}
					countingVariable++;
				}
				em.getTransaction().begin();
				Order newOrder = new Order("TODO", user);
				newOrder.setStatus(Order.orderStatus.PreparingPackage);
				newOrder.setMap(hashmap);
				em.persist(newOrder);
				System.out.println("We are here!v3");
				user.addOrder(newOrder);
				em.merge(user);
				em.getTransaction().commit(); // updated the database 
				em.close();
				emf.close();
				System.out.println("Done v2!!!!!");
				System.out.println("Done placing the order in the database v2.");
				System.out.println("All user orders are : ");
				int countTime = 1;
				for(Order o : user.getOrders())
				{
					System.out.println("-------------------------- "+ countTime + "  --------------------------");
					System.out.println(o);
					countTime++;
				}
				session.removeAttribute("cart");
				htmlText += "<H3>Thank you for your purchase! You can always check your order status from our website. We will also e-mail you when your order status changes<H3>";
				JavaMailUtil.sendHTMLMail(htmlText,user.getEmail());
			
				
			}
			
			else{
				System.out.println("Compile test.");
				session.setAttribute("adminorder-error", "You are not authorized!!!!");
				response.setHeader("adminorder-error","true");
				return;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
