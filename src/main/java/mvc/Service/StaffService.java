package mvc.Service;

import mvc.Entity.News;
import mvc.Entity.Staffs;
import mvc.Repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffService {
    @Autowired
    private StaffRepository staffRepository;

    public Staffs getStaffByName(String staffName) {
        return staffRepository.findByStaffName(staffName);
    }

}
