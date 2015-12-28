package com.itwill.red.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.itwill.red.dao.ProductDao;
import com.itwill.red.db.ConnectionPool;
import com.itwill.red.dto.Product;
import com.itwill.util.MyBatisSqlSessionFactory;

import mybatis.mappers.ProductMapper;

public class ProductDaoImpl implements ProductDao {
	private ProductMapper productMapper;
	
	public ProductDaoImpl() {}
	
	@Override
	public int create(Product product) throws Exception {
		return productMapper.create(product);
	}

	@Override
	public Product selectByProductNo(int p_no) throws Exception {
		return productMapper.findProductByNo(p_no);
	}

	@Override
	public List<Product> selectAll() throws Exception {
		return productMapper.findAllProduct();
	}

	@Override
	public Product selectByProductName(String p_name) throws Exception {
		// return MyBatisSqlSessionFactory.getSqlSession().selectOne(namespace +
		// "findProductByName", p_name);
		return MyBatisSqlSessionFactory.getSqlSession().getMapper(ProductMapper.class).selectByProductName(p_name);

	}

	@Override
	public List<Product> selectByProductPrice(int start_price, int end_price) throws Exception {
		HashMap<String, Integer> tMap = new HashMap<String, Integer>();
		tMap.put("start_price", start_price);
		tMap.put("end_price", end_price);
		// return MyBatisSqlSessionFactory.getSqlSession().selectList(namespace
		// + "selectByProductPrice", tMap);
		return MyBatisSqlSessionFactory.getSqlSession().getMapper(ProductMapper.class).selectByProductPrice(tMap);
	}

	@Override
	public List<Product> selectByCompany(String p_company) throws Exception {
		List<Product> productList = null;
		// return MyBatisSqlSessionFactory.getSqlSession().selectList(namespace
		// + "selectByCompany", p_company);
		return MyBatisSqlSessionFactory.getSqlSession().getMapper(ProductMapper.class).selectByCompany(p_company);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itwill.red.dao.dao#update(com.itwill.red.dto.Product)
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.itwill.red.dao.impl.ProductDao#update(com.itwill.red.dto.Product)
	 */
	@Override
	public int update(Product pDto) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE PRODUCT SET p_name=?, p_price=?, p_indate=?, p_sell=?, ");
		sql.append("p_score=?, p_discount=?, p_size=?, p_color=?, p_ccode=?, p_image=?, ");
		sql.append("p_company=? ,p_detail=? WHERE p_no=?");
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, pDto.getP_name());
			pstmt.setInt(2, pDto.getP_price());
			pstmt.setDate(3, pDto.getP_indate());
			pstmt.setInt(4, pDto.getP_sell());
			pstmt.setInt(5, pDto.getP_score());
			pstmt.setInt(6, pDto.getP_discount());
			pstmt.setString(7, pDto.getP_size());
			pstmt.setString(8, pDto.getP_color());
			pstmt.setInt(9, pDto.getP_ccode());
			pstmt.setString(10, pDto.getP_image());
			pstmt.setString(11, pDto.getP_compay());
			pstmt.setString(12, pDto.getP_detail());
			pstmt.setInt(13, pDto.getP_no());
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itwill.red.dao.dao#delete(int)
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.itwill.red.dao.impl.ProductDao#delete(int)
	 */
	@Override
	public int delete(int p_no) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int row = -99;
		String sql = "DELETE FROM PRODUCT WHERE p_no=?";
		try {
			conn = ConnectionPool.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_no);
			row = pstmt.executeUpdate();
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
		return row;
	}

	private Product setProduct(ResultSet rs) throws Exception {
		Product product = new Product();
		product.setP_no(rs.getInt("p_no"));
		product.setP_name(rs.getString("p_name"));
		product.setP_price(rs.getInt("p_price"));
		product.setP_detail(rs.getString("p_detail"));
		product.setP_indate(rs.getDate("p_indate"));
		product.setP_sell(rs.getInt("p_sell"));
		product.setP_score(rs.getInt("p_score"));
		product.setP_discount(rs.getInt("p_discount"));
		product.setP_size(rs.getString("p_size"));
		product.setP_color(rs.getString("p_color"));
		product.setP_ccode(rs.getInt("p_ccode"));
		product.setP_image(rs.getString("p_image"));
		product.setP_compay(rs.getString("p_company"));
		return product;
	}

	class ProudctRowMapper implements RowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {

			/*
			 * int p_no = rs.getInt("p_no"); String p_name =
			 * rs.getString("p_name"); int p_price = rs.getInt("p_price");
			 * String p_detail = rs.getString("p_detail"); Date p_indate =
			 * rs.getDate("p_indate"); int p_sell = rs.getInt("p_sell"); int
			 * p_score = rs.getInt("p_score"); int p_discount =
			 * rs.getInt("p_discount"); String p_size = rs.getString("p_size");
			 * String p_color = rs.getString("p_color"); int p_ccode =
			 * rs.getInt("p_ccode"); String p_image = rs.getString("p_image");
			 * String p_compay = rs.getString("p_company");
			 */
			Product product = null;
			try {
				product = setProduct(rs);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return product;
		}
	}
	
	@Override
	public List<Product> relationsProductRandomList(){
		return productMapper.relationsProductRandomList();
	}
	/*
	 * 가장 많이 팔린 8개의 상품 리스트
	 * (non-Javadoc)
	 * @see com.itwill.red.dao.ProductDao#selectBestSell()
	 */
	@Override
	public List<Product> selectBestSell() throws Exception {
		return productMapper.bestSellProduct();
	}

	@Override
	public List<Product> upSellProduct() throws Exception {
		return productMapper.upSellProduct();
	}

	@Override
	public List<Product> relationProduct(HashMap<String, Integer> map) throws Exception {
		return productMapper.relationProduct(map);
	}

	public void setProductMapper(ProductMapper productMapper) {
		this.productMapper = productMapper;
	}

	@Override
	public List<Product> findProductByCode(int p_ccode) throws Exception {
		return productMapper.findProductByCode(p_ccode);
	}
	//충만
	@Override
	public List<Product> searchProductList(HashMap<String, Object> map) throws Exception {
		return productMapper.searchProductList(map);
	}

	@Override
	public ArrayList<Product> selectBestSell(int i) {
		return (ArrayList<Product>) productMapper.bestSellProductByNum(i);
	}

	@Override
	public ArrayList<Product> upSellProduct(int i) {
		return (ArrayList<Product>) productMapper.upSellProductByNum(i);
	}

	@Override
	public ArrayList<Product> selectNewSell() {
		return (ArrayList<Product>) productMapper.selectNewSell();
	}
	
	@Override
	public ArrayList<Product> selectNewSell(int i) {
		return (ArrayList<Product>) productMapper.selectNewSellByIndex(i);
	}

	@Override
	public ArrayList<Product> selectSaleSell() {
		return (ArrayList<Product>) productMapper.selectSaleSell();
	}
}
