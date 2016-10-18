package cn.tslanpu.test.exam.food.servlet;

import cn.itcast.commons.CommonUtils;

import cn.tslanpu.test.exam.food.domain.FoodExam1;
import cn.tslanpu.test.exam.food.service.FoodExamService;
import cn.tslanpu.test.utils.BaseServlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FoodExamServlet
 */
public class FoodExamServlet extends BaseServlet
{
	private static final long serialVersionUID = 1L;
	public FoodExamService foodExamService = new FoodExamService();
	

	/**
	 * Default constructor.
	 */

	/**
	 *
	 * @throws IOException
	 * @throws ServletException
	 * @throws SQLException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException
	{
		
		request.setCharacterEncoding("utf-8");		
		FoodExam1 f = setBean(request, response);
		foodExamService.add(f);
		request.setAttribute("success", "提交成功");
		request.getRequestDispatcher("/FoodServlet?method=findQYname").forward(request, response);

	}

	private FoodExam1 setBean(HttpServletRequest request, HttpServletResponse response)
	{
		Map map = request.getParameterMap();
	
		FoodExam1 foodEx1 = CommonUtils.toBean(map, FoodExam1.class);
		return foodEx1;
	}

}
