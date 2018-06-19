package org.ht.service;

import java.util.List;
import java.util.Map;

import org.ht.pojo.Approveitem;

/**
 * @Name: ApproveService
 * @Description:璁よ瘉椤硅缃殑Service灞�
 * @author chenqingshan
 * @Date: 2017-2-20 Time: 20:24
 */
public interface ApproveService {
	/**
	 * Description锛氭牴鎹潯浠惰幏鍙栬璇侀」锛屽鏋滄潯浠朵负绌哄垯鏀惧洖鎵�湁璁よ瘉椤�
	 * 
	 * @return List
	 */
	public List<Approveitem> queryApproves(Map<String, Object> map);

	/**
	 * Description锛氭坊鍔犳柊璁よ瘉椤�
	 * 
	 * @param map
	 */
	public void addApproves(Map<String, Object> map);

	/**
	 * Description锛氫慨鏀硅璇侀」
	 * 
	 * @param map
	 */
	public void updateApproves(Map<String, Object> map);
}
