package mvc.controller;

import mvc.Entity.Categories;
import mvc.Entity.News;
import mvc.Entity.Staffs;
import mvc.Repository.CategoryRepository;
import mvc.Repository.NewsRepository;
import mvc.Repository.StaffRepository;
import mvc.Service.CategoryService;
import mvc.Service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.concurrent.Callable;

@Controller
@RequestMapping("/")
public class NewsController {

    @Autowired
    NewsRepository newsRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    StaffRepository staffRepository;

    @Autowired
    StaffService staffService;

    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String GetNewsList(Model model) {
        List<News> newsList = (List<News>) newsRepository.findAll();
        model.addAttribute("newslists", newsList);
        return "News/Newslist";
    }

    @RequestMapping(value = "/searchlist", method = RequestMethod.GET)
    public String GetNewsSerach(@RequestParam String searchInput, Model model) {
        List<News> newsLists;
        if (searchInput.isEmpty()) {
            newsLists = (List<News>) newsRepository.findAll();
            model.addAttribute("newslists", newsLists);
        }


        return "News/Newslist";
    }

    @RequestMapping(value = "/Addnews", method = RequestMethod.GET)
    public String GetAddNews(Model model) {
        List<Staffs> staffs = (List<Staffs>) staffRepository.findAll();
        List<Categories> categories = (List<Categories>) categoryRepository.findAll();
        model.addAttribute("news", new News());
        model.addAttribute("staffs", staffs);
        model.addAttribute("category", categories);
        return "News/Addnewslis