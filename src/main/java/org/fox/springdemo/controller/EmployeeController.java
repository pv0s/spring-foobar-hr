package org.fox.springdemo.controller;

import org.fox.springdemo.entity.Employee;
import org.fox.springdemo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/list")
    public String getEmployees(Model theModel) {
        List<Employee> employeeList = employeeService.getEmployees();
        theModel.addAttribute("employees", employeeList);

        return "employee-list";

    }

    @RequestMapping("/employee")
    public String getEmployee(@RequestParam("id") int id, Model theModel) {
        Employee employee = employeeService.getEmployee(id);
        theModel.addAttribute("employee", employee);

        return "employee-form";

    }

    @RequestMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel) {
        Employee employee = new Employee();
        theModel.addAttribute("employee", employee);

        return "employee-form";
    }

    @RequestMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("id") int id, Model theModel) {
        Employee employee = employeeService.getEmployee(id);
        theModel.addAttribute("employee", employee);

        return "employee-form";
    }

    @RequestMapping("/save")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.saveEmployee(employee);

        return "redirect:/employees/list";
    }

    @RequestMapping("/delete")
    public String deleteEmployee(@RequestParam("id") int id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees/list";
    }

}