package mvc.Repository;

import mvc.Entity.News;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface NewsRepository extends CrudRepository<News,Integer>{

}