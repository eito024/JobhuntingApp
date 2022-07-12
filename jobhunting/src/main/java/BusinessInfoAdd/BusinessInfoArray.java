package BusinessInfoAdd;

import java.util.ArrayList;

public class BusinessInfoArray {


private ArrayList<BusinessRecordBean> BusinessInfoArray;

  public void BusinessInfoArray() {
  BusinessInfoArray = new ArrayList<BusinessRecordBean>();
  }

  public void addBusinessInfoChangeRecord(BusinessRecordBean obj) {

  BusinessInfoArray.add(obj);
  }

  public ArrayList<BusinessRecordBean> getBusinessInfoArray(){
  return BusinessInfoArray;
  }
}