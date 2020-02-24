package co.grandcircus.mileage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mileageController {
	
	
	@RequestMapping("/")
	public ModelAndView home() {
		
		return new ModelAndView("main");
	}
	
	@RequestMapping("/mileage-form")
	public ModelAndView mileageForm() {
		
		return new ModelAndView("mileage-form");
	}
	
	@RequestMapping("/mileage-result")
	public ModelAndView mileageResult(
			@RequestParam ("mpg") Double mpg,
			@RequestParam ("gallons") Double gallons,
			@RequestParam ("TripD") Double tripD
			) {
		
		Double totalMiles = mpg * gallons;
		String makeIt = "";
		String color = "black";
		String backg = "";
		
		if (totalMiles >= tripD) {
			makeIt = "You can complete your trip.";
			color = "green";
			backg = "/images/openroad.jpg";
		} else if (totalMiles < tripD) {
			makeIt = "You won't make it.";
			color = "red";
			backg =  "/images/gascan.jpg";
		}
		
		ModelAndView mv = new ModelAndView("mileage-result");
		
		mv.addObject("totalMiles", totalMiles);
		mv.addObject("makeIt", makeIt);
		mv.addObject("color", color);
		mv.addObject("backg", backg);
		return mv;
	}

}
