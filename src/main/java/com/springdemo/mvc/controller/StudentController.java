package com.springdemo.mvc.controller;

import com.springdemo.mvc.entities.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private Student student;

    @RequestMapping("/showForm")
    public String showForm(Model model) {

        // add student object to the model
        model.addAttribute("student", student);

        model.addAttribute("countryOptions", student.getCountryOptions());
        model.addAttribute("languageOptions", student.getLanguageOptions());

        return "student-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("student") Student student) {
        return "student-confirmation";
    }
}
