package com.joana.omikuji;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {

  // @RequestMapping("/")
  // public String index() {
  //   return "redirect:/omikuji";
  // }

  @RequestMapping(value={"/", "/omikuji"})
  public String omikuji() {
    return "index.jsp";
  }

  @RequestMapping(value = "/madlibs", method = RequestMethod.POST)
  public String form(
      @RequestParam(value = "number") String number,
      @RequestParam(value = "city") String city,
      @RequestParam(value = "person") String person,
      @RequestParam(value = "hobby") String hobby,
      @RequestParam(value = "living") String living,
      @RequestParam(value = "nice") String nice,
      HttpSession session,
      RedirectAttributes redirectAttributes) {
        if(city.length()<3) {
          redirectAttributes.addFlashAttribute("cityerror", "The city must be 3 or more");
          return "redirect:/";
        }
    session.setAttribute("number", number);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("hobby", hobby);
    session.setAttribute("living", living);
    session.setAttribute("nice", nice);
    return "redirect:/omikuji/show";
  }

  @RequestMapping("/omikuji/show")
  public String omikujiShow() {
    return "omikuji.jsp";
  }

  // @RequestMapping("/createError")
	// public String flashMessages(RedirectAttributes redirectAttributes) {
	// 	redirectAttributes.addFlashAttribute("error", "A test error!");
	// 	return "redirect:/";
	// }
  }

