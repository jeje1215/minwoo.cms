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

	@Autowired
	private AdService adService;

	@RequestMapping("/manad")
	public String main() {
		return "manad/main";
	}

	@RequestMapping("listads")
	@ResponseBody
	public List<Ad> listAds() {
		return adService.listAds();
	}

	@RequestMapping(value = "adjoin", method = RequestMethod.POST)
	@ResponseBody
	public boolean addjoin(MultipartFile adsFile, HttpServletRequest request,
			@RequestParam("adsCompany") String adsCompany,
			@RequestParam("adsMan") String adsMan,
			@RequestParam("adsMoney") int adsMoney,
			@RequestParam("adsStartDate") String adsStartDate,
			@RequestParam("adsEndDate") String adsEndDate,
			@RequestParam("userId") String userId,
			@RequestParam("adsUrl") String adsUrl) {
		boolean isStored = true;
		String dir = request.getServletContext().getRealPath(uploadDir);
		String fileName = adsFile.getOriginalFilename();
        File file = new File(dir + "/" + fileName);
        System.out.println("in dir : " + dir);
        
        
        //System.out.println(dir);
        //파일명이 중복으로 존재할 경우
        if (fileName != null && !fileName.equals("")) {
            if (file.exists()) {
            	//파일명 앞에 업로드 시간 초단위로 붙여 파일명 중복을 방지
                fileName = System.currentTimeMillis() + "_" + fileName;
            }
        }
		Ad ad = new Ad(adsCompany, adsMan, fileName, adsMoney, adsUrl,
				adsStartDate, adsEndDate, userId);
		try {
			save(dir + "/" + fileName, adsFile);
		} catch (IOException e) {
			isStored = false;
		}
		
		isStored = adService.adjoin(ad);
		return isStored;
	}

	@RequestMapping("delad")
	@ResponseBody
	public boolean secede(int adsId, String adsFile, HttpServletRequest request) {
		String dir = request.getServletContext().getRealPath(uploadDir);
		if (adsFile != "") {
			try {
				del(dir + "/" + adsFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return adService.secede(adsId);
	}

	@RequestMapping(value = "fixAdInfo", method = RequestMethod.POST)
	@ResponseBody
	public boolean fixAdInfo/* (Ad ad, int adsId_tmp) */
	(MultipartFile adsFile, HttpServletRequest request, 
			@RequestParam("adsCompany") String adsCompany,
			@RequestParam("adsMan") String adsMan,
			@RequestParam("adsMoney") int adsMoney,
			@RequestParam("adsStartDate") String adsStartDate,
			@RequestParam("adsEndDate") String adsEndDate,
			@RequestParam("userId") String userId,
			@RequestParam("adsUrl") String adsUrl,
			@RequestParam("adsId_tmp") int adsId_tmp) {
		boolean isStored = true;
		String infile; //기존 db에 저장된 파일명 
		String dir = request.getServletContext().getRealPath(uploadDir);
		String fileName = adsFile.getOriginalFilename(); //변경할려는 파일명
		Ad ad = new Ad(adsCompany, adsMan, fileName, adsMoney, adsUrl,
				adsStartDate, adsEndDate, userId);		
		ad.setAdsId(adsId_tmp);
		Ad ad_tmp = new Ad();
		ad_tmp = adService.findAd(adsId_tmp);		
		infile = ad_tmp.getAdsFile();
        System.out.println("edit dir : " + dir);

        //System.out.println("UtilFile fileUpload infile : " + infile);
        //System.out.println("UtilFile fileUpload fileName : " + fileName);
        File file = new File(dir + "/" + fileName);
        
        //파일명이 중복으로 존재할 경우
		if(infile != fileName){ //기존 파일명이랑 달라질 경우
			//System.out.println("1");
	        if (fileName != null && !fileName.equals("")) { //파일 이름이 없으면~(파일 수정 안할경우)
	        	//System.out.println("2");
	        	if (file.exists()) {
	        		//System.out.println("3");
	            	//파일명 앞에 업로드 시간 초단위로 붙여 파일명 중복을 방지
	                fileName = System.currentTimeMillis() + "_" + fileName;
	                ad.setAdsFile(fileName);
	            }else{
	            	//System.out.println("4");
	            	fileName = infile;
	            }
	        }else{
	        	//System.out.println("5");
	        	fileName = infile;
	        }
		}
        //System.out.println("UtilFile fileUpload fileName : " + fileName);		
		ad.setAdsFile(fileName);
//    	/System.out.println(ad.getAdsFile());
		isStored = adService.fixAdInfo(ad);
		if (isStored == true) {
			try {
				if(infile != fileName){
					save(dir + "/" + fileName, adsFile);
					del(dir + "/" + infile);
				}
			} catch (IOException e) {
				isStored = false;
			}
		}

		return isStored;
	}

	private void save(String fileFullName, MultipartFile adsFile)
			throws IOException {
		adsFile.transferTo(new File(fileFullName));
	}

	private void del(String fileFullName) throws IOException {
		File file = new File(fileFullName);
		if (file.exists() == true) {
			file.delete();
		}
	}

}