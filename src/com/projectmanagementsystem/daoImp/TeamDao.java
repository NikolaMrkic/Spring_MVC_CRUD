package com.projectmanagementsystem.daoImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.projectmanagementsystem.model.Team;

@Repository
public class TeamDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int saveTeam(int id,Team team) {
		
		String sql = "INSERT INTO team( team_name, id) VALUES (?,?)";
		return jdbcTemplate.update(sql, new Object[] { id, team.getTeamName() });
	}

}
