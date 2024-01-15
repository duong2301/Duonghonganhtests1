package mvc.Service;

import mvc.Entity.Categories;
import mvc.Repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    public Categories getCategoryByName(String cateName) {
        return categoryRepository.findByCateName(cateName);
    }
}
