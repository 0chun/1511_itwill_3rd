package mybatis.mappers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itwill.red.dto.Product;

public interface ProductMapper {
	public Product findProductByNo(int p_no);
	public Product selectByProductName(String p_name);
	//public List<Product> selectByProductPrice(int start_price, int end_price);
	public List<Product> selectByProductPrice(HashMap<String, Integer> tMap);
	public List<Product> selectByCompany(String p_company) ;
	public List<Product> findAllProduct();
	public int create(Product pDto);
	public int update(Product pDto);
	public int delete(int p_no);
	public List<Product> bestSellProduct();
	public List<Product> upSellProduct();
	public List<Product> relationProduct(HashMap<String, Integer> map);
	public List<Product> relationsProductRandomList();
	public List<Product> findProductByCode(int p_ccode);
	//충만
	public List<Product> searchProductList(HashMap<String, Object> map);
	
	public List<Product> bestSellProductByNum(int i);
	public List<Product> upSellProductByNum(int i);
	public ArrayList<Product> selectNewSell();
	public ArrayList<Product> selectNewSellByIndex(int i);
	public ArrayList<Product> selectSaleSell();
}
