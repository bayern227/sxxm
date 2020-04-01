package com.ssm.employee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.ssm.employee.pojo.SkillInfo;
@Repository
public interface SkillInfoMapper {
	public List<SkillInfo> getSkills();
	public List<SkillInfo> getSkillsByEid(String eid);
	public SkillInfo getSkillByEidAndSkill(@Param("eid")String eid, @Param("skillcode")String skillcode);
	public int updateSkill(SkillInfo skill);
	public int addSkill(SkillInfo skill);
}
