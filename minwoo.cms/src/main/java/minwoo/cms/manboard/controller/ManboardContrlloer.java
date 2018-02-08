package minwoo.cms.manboard.controller;

import minwoo.cms.manboard.service.ManboardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ManboardContrlloer {
	@Autowired ManboardService manboardService;
}
