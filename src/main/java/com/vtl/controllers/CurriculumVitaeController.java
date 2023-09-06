/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vtl.controllers;

import com.vtl.pojo.CurriculumVitae;
import com.vtl.pojo.User;
import com.vtl.service.CurriculumVitaeService;
import com.vtl.service.UserService;
import java.security.Principal;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
public class CurriculumVitaeController {

    @Autowired
    private CurriculumVitaeService curriculumVitaeService;
    @Autowired
    private UserService userDetailService;

    @GetMapping("/candidate/create-cv/{candidataID}")
    public String creatCvView(Model model, Principal principal) {
        if (principal == null) {
            return "login";
        }
        User u = this.userDetailService.getUserByUsername(principal.getName()).get(0);
        model.addAttribute("candidate", u.getCandidate());
        model.addAttribute("cv", new CurriculumVitae());
        return "createCV";
    }

    @PostMapping("/candidate/create-cv/{candidataID}")
    public String creatCv(Model model, @ModelAttribute(value = "cv") @Valid CurriculumVitae cv,@PathVariable(value = "candidataID") int candidataID,
            BindingResult r) {
        if (r.hasErrors()) {
            return "createCV";
        }
        if (curriculumVitaeService.addCV(cv, candidataID) == true) {
            return ("index");
        }
        return "createCV";
    }

}
