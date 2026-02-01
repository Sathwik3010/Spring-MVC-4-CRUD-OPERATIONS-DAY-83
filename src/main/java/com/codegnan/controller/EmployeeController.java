package com.codegnan.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.codegnan.model.Employee;
import com.codegnan.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
	
	private EmployeeService service;

	public EmployeeController(EmployeeService service) {
		super();
		this.service = service;
	}

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listEmployees() {
		List<Employee> employees = service.getAllEmployees();
		return new ModelAndView("employee-list","employees", employees);
	}
	
	// add form
	@RequestMapping(value= "/new", method=RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("employee-form","employee", new Employee());
	}
	
	// save Employee
	@RequestMapping(method=RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		service.addEmployee(employee);
		return "redirect:/employees";
	}

	// edit form
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public ModelAndView editEmployee(@PathVariable Long id) {
		Employee employee = service.getEmployeeById(id);
		return new ModelAndView("employee-form","employee", employee);
		
	}
	
	//delete
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delteEmployee(@PathVariable Long id) {
		service.deleteEmployee(id);
		return "redirect:/employees	";
	}
}
