package mvc.Repository;

import mvc.Entity.Staffs;
import org.springframework.data.repository.CrudRepository;

public interface StaffRepository extends CrudRepository<Staffs,Integer> {
      Staffs findByStaffName(String staffName);
}
  