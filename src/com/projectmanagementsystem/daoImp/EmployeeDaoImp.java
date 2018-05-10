package com.projectmanagementsystem.daoImp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.projectmanagementsystem.dao.EmployeeDao;
import com.projectmanagementsystem.model.Employee;
import com.projectmanagementsystem.model.InnerEmpTeam;
import com.projectmanagementsystem.model.Team;

@Repository
public class EmployeeDaoImp implements EmployeeDao {

	@Autowired
	private JdbcTemplate template;

	public List<Employee> getEmployees() {
		return template.query("select * from employee", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setId(rs.getInt(1));
				e.setIdCard(rs.getInt(2));
				e.setName(rs.getString(3));
				e.setSurname(rs.getString(4));
				e.setPosition(rs.getString(5));
				return e;
			}
		});

	}

	public int save(Employee emp) {
		String sql = "INSERT INTO employee(idCard, name, surname, position) VALUES (?,?,?,?) ";
		return template.update(sql,
				new Object[] { emp.getIdCard(), emp.getName(), emp.getSurname(), emp.getPosition() });

	}

	public Employee getEmpById(int id) {
		String upit = "SELECT * FROM `employee` WHERE Id=?;";
		Employee emp = template.queryForObject(upit, new EmpRowMapper(), id);
		return emp;
	}

	public void update(Employee emp) {
		// String sql="update employeespring set name='"+emp.getName()+"',
		// salary="+emp.getSalary()+",designation='"+emp.getDesignation()+"' where
		// id="+emp.getId()+"";
		String sql = "update employee set name='" + emp.getName() + "',surname='" + emp.getSurname() + "',idCard='"
				+ emp.getIdCard() + "',position='" + emp.getPosition() + "' WHERE Id='" + emp.getId() + "'";
		// MORA DA SE STAVE ' PRE KRAJA "
		template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from employee where id=" + id;
		return template.update(sql);
	}

	@Override
	public void insertEmployeInTeam(Team team) {
		String sql = "INSERT INTO team(team_name, id) VALUES (?,?)";
		template.update(sql, new Object[] { team.getTeamName(), team.getId() });
	}

	public List<InnerEmpTeam> getInnerEmpTeam() {

		return template.query(
				"SELECT e.name,e.surname,e.position,t.id_team,t.team_name FROM employee as e INNER JOIN team as t ON e.id = t.id",
				new RowMapper<InnerEmpTeam>() {
					public InnerEmpTeam mapRow(ResultSet rs, int row) throws SQLException {
						InnerEmpTeam e = new InnerEmpTeam();

						e.setName(rs.getString(1));
						e.setPosition(rs.getString(2));
						e.setSurname(rs.getString(3));
						e.setIdTeam(rs.getInt(4));
						e.setTeamName(rs.getString(5));
						return e;
					}
				});

	}
}
