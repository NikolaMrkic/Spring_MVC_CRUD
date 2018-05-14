package com.projectmanagementsystem.controler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.projectmanagementsystem.daoImp.EmployeeDaoImp;
import com.projectmanagementsystem.daoImp.TeamDao;
import com.projectmanagementsystem.model.Employee;
import com.projectmanagementsystem.model.InnerEmpTeam;
import com.projectmanagementsystem.model.Team;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeDaoImp dao;

	@Autowired
	private TeamDao teamDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String p1(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	@RequestMapping(value = "/insertEmployee")
	public String m2(Model model) {
		model.addAttribute("emp", new Employee());
		return "insertEmployee";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView m3(@ModelAttribute("emp") Employee emp, BindingResult rezultat) {
		if (rezultat.hasErrors()) {
			return new ModelAndView("insertEmployee");// NE SMEM DA STAVIM REDIRECT JER CE VRATITI NA PRAZNU STRANU I
														// NECE PRIKAZATI GRESKE U VALIDACIJI
		}
		dao.save(emp);
		return new ModelAndView("redirect:/insertEmployee");

	}

	@RequestMapping("/viewemp")
	public ModelAndView m4() {
		List<Employee> list = dao.getEmployees();
		return new ModelAndView("viewemp", "list", list);
	}

	@RequestMapping(value = "/editEmployeeForm/{id}")
	public ModelAndView edit(@PathVariable int id) {
		Employee emp = dao.getEmpById(id);
		return new ModelAndView("editEmployeeForm", "command", emp);
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("emp") Employee emp) {
		dao.update(emp);
		return new ModelAndView("redirect:/insertEmployee");
	}

	@RequestMapping(value = "/deleteEmployee/{id}")
	public ModelAndView deleteEmp(@PathVariable int id) {
		dao.delete(id);
		return new ModelAndView("redirect:/insertEmployee");

	}
	
	@RequestMapping(value="/addEmployeeInTeam", method=RequestMethod.GET)
	  public String insertEmployeeInTeam(Model model) {
		  model.addAttribute("team", new Team());
		return "addEmployeeInTeam";
		  
	  }

	@RequestMapping(value="/addEmployeeInTeam", method=RequestMethod.POST)
	public String insertEmployeeInTeam(@ModelAttribute("team") Team team, Model model) {
		dao.insertEmployeInTeam(team);
		model.addAttribute("team",team);
		return "addEmployeeInTeam";

	}

	@ModelAttribute
	public void getAll(Model model) {

		List<Employee> alEmp = dao.getEmployees();
		model.addAttribute("al", alEmp);
	}
	
	@ModelAttribute
	public void innerEmpTeam(Model model) {
		List<InnerEmpTeam> alInnEmpTeam = dao.getInnerEmpTeam();
		model.addAttribute("innerEmpTea", alInnEmpTeam);
	}
}
