package minwoo.cms.manad.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import minwoo.cms.manad.domain.Ad;
import minwoo.cms.manad.service.AdService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AdController {
   @Value("${uploadDir}")
   private String uploadDir;
   
   @Autowired private AdService adService;
   
   @RequestMapping("/manad")
   public String main(){
      return "manad/main";
   }
   @RequestMapping("listads")
   @ResponseBody
   public List<Ad>listAds(){
      return adService.listAds();
   }   
   @RequestMapping(value="adjoin", method = RequestMethod.POST)
   @ResponseBody
   public boolean addjoin(MultipartFile adsFile,HttpServletRequest request, 
         @RequestParam("adsCompany") String adsCompany,@RequestParam("adsMan") String adsMan
         ,@RequestParam("adsMoney") int adsMoney,@RequestParam("adsStartDate") String adsStartDate
         ,@RequestParam("adsEndDate") String adsEndDate,@RequestParam("userId") String userId
         ,@RequestParam("adsUrl") String adsUrl
   ){      
      boolean isStored = true;
      String dir = request.getServletContext().getRealPath(uploadDir);
      String fileName = adsFile.getOriginalFilename();

     // Ad ad = new Ad(adsCompany, adsMan, fileName, adsMoney, adsUrl, adsStartDate, adsEndDate, userId);
      Ad ad = new Ad();
      ad.setAdsCompany(adsCompany);
      ad.setAdsMan(adsMan);
      ad.setAdsFile(fileName);
      ad.setAdsMoney(adsMoney);
      ad.setAdsUrl(adsUrl);
      ad.setAdsStartDate(adsStartDate);
      ad.setAdsEndDate(adsEndDate);
      ad.setUserId(userId);      
      
      isStored = adService.adjoin(ad);
      
      try{
         save(dir + "/" + fileName, adsFile);
      }catch(IOException e){
         isStored = false;
      }
      
      System.out.println(fileName);
            
      return isStored;
      //return adService.adjoin(ad);
      
   }   
   private void save(String fileFullName, MultipartFile adsFile) throws IOException{
      adsFile.transferTo(new File(fileFullName));
   }   
   
   @RequestMapping("delad")
   @ResponseBody
   public boolean secede(int adsId){
      return adService.secede(adsId);
      
   }
   @RequestMapping("fixAdInfo")
   @ResponseBody
   public boolean fixAdInfo(Ad ad, int adsId_tmp){
      ad.setAdsId(adsId_tmp);
      return adService.fixAdInfo(ad);
      
   }
}