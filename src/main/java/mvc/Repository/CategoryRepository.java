package mvc.Repository;

import mvc.Entity.Categories;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Categories,Integer> {
     Categories findByCateName(String cateName);
}
  