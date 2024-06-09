package com.wordcounter;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WordcounterController {
	@RequestMapping("counter")
	//@ResponseBody
	public String word(Model model,String paragraph)
	{
		String[] s1=paragraph.split(" ");
		int countofwords=0;
		for(int i=0;i<=s1.length-1;i++)
		{
			if(!s1[i].isEmpty())
			{
				countofwords++;
				
			}
			
		}
		int countofcharacters=paragraph.length();
		model.addAttribute("countofwords", countofwords);
		model.addAttribute("counfofcharacters", countofcharacters);
		model.addAttribute("paragraph", paragraph);
		
		
		return "index.jsp";
		
		

	}
}
