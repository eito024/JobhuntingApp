
package businessInfoDelete;

import java.io.Serializable;
import java.util.ArrayList;


public class BusinessInfoArrayBean implements Serializable {
  
  private ArrayList<BusinessListSearchRecordBean> businessInfoRecordArray;

  public BusinessInfoArrayBean(){

    businessInfoRecordArray = new ArrayList<BusinessListSearchRecordBean>();

  }

  public void addBusinessInfoRecord(BusinessListSearchRecordBean obj) {

    businessInfoRecordArray.add(obj);
  }

  /**
   * @return businessInfoRecordArray
   */
  public ArrayList<BusinessListSearchRecordBean> getBusinessInfoRecordArray() {
    return businessInfoRecordArray;
  }

  /**
   * @param businessInfoRecordArray セットする businessInfoRecordArray
   */
  public void setBusinessInfoRecordArray(ArrayList<BusinessListSearchRecordBean> businessInfoRecordArray) {
    this.businessInfoRecordArray = businessInfoRecordArray;
  }
}