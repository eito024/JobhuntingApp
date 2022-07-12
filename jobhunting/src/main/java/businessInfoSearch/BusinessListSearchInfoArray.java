package businessInfoSearch;

import java.util.ArrayList;

public class BusinessListSearchInfoArray {

	private ArrayList<BusinessListSearchRecordBean> businessListSearchRecordArray;

	   public BusinessListSearchInfoArray() {
		   businessListSearchRecordArray = new ArrayList<BusinessListSearchRecordBean>();
	   }

	   public void addBusinessListSearchRecord(BusinessListSearchRecordBean obj) {

		   businessListSearchRecordArray.add(obj);
	   }

	   public ArrayList<BusinessListSearchRecordBean> getBusinessListSearchArrayBean(){
		   return businessListSearchRecordArray;
	   }
}
