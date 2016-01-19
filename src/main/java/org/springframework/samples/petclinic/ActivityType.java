package org.springframework.samples.petclinic;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ACTIVITY_TYPES")
public class ActivityType extends BaseEntity {
	private String name;

//	private String ShortDescription;
	
//	private String Description;
	
//	private String IllustrationImageName;
	
//	private String IllustrationThumbImageName;
	
	@Column(name="NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}