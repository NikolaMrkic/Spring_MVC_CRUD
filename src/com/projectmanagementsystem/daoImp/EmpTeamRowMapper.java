package com.projectmanagementsystem.daoImp;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.projectmanagementsystem.model.InnerEmpTeam;

public class EmpTeamRowMapper implements RowMapper<InnerEmpTeam> {

	@Override
	
		public InnerEmpTeam mapRow(ResultSet rs, int row) throws SQLException {
			InnerEmpTeam e = new InnerEmpTeam();
			e.setName(rs.getString(1));
			e.setPosition(rs.getString(2));
			e.setSurname(rs.getString(3));
			e.setIdTeam(rs.getInt(4));
			e.setTeamName(rs.getString(5));
			return e;
	}

}
