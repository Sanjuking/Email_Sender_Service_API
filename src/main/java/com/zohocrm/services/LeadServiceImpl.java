package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repositories.LeadRepository;


@Service
public class LeadServiceImpl implements LeadService {

	@Autowired
	private LeadRepository leadReop;
	
	
	@Override
	public void saveOneLead(Lead lead) {
		leadReop.save(lead);
	}


	@Override
	public Lead findLeadById(long id) {
		Optional<Lead> findById = leadReop.findById(id);
		Lead lead = findById.get();
		return lead;
	}


	@Override
	public void deleteLeadById(long id) {
		leadReop.deleteById(id);
	}


	@Override
	public List<Lead> getAllLeads() {
		List<Lead> leads = leadReop.findAll();
		return leads;
	}

}
