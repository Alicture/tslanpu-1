package cn.tslanpu.test.add.food.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.tslanpu.test.add.food.domain.Food;
import cn.tslanpu.test.add.food.service.FoodService;
import cn.tslanpu.test.add.production.domain.Production;
import net.sf.json.JSON;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class foodAjaxServlet
 */
public class foodAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FoodService foodService = new FoodService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foodAjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		((HttpServletResponse)response).addHeader("Access-Control-Allow-Origin", "*");
		Food food;
		try
		{
			food = foodService.findbyqyname(request.getParameter("qyname"));
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("byqynameFood", food);
			JSON jsonData = JSONObject.fromObject(map);
			System.out.println(jsonData);
			response.getWriter().print(jsonData);
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
