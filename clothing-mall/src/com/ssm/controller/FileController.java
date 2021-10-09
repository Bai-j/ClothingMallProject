package com.ssm.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	// 上传图片
	@RequestMapping("/uploadImg.do")
	public String uploadFile(@RequestParam("myFile") MultipartFile file,Model model) {
		if(file.isEmpty()) {
			model.addAttribute("msg", "未选择文件!");
			return "forward:toAddClothes.do";
		}
		
		// 获取文件名
		String fileName = file.getOriginalFilename();
		
		// 获取文件后缀名
		//String suffixName = fileName.substring(fileName.lastIndexOf("."));
		
		// 指定文件上传路径
		String filePath = "D:/eclipseworkspace/clothing-mall/WebContent/img/clothes/";
		
		// 拼接文件保存后的绝对路径
		String fullFileName = filePath + fileName;
		
		// 开始创建File对象，对后续的上传工作做准备
		File dest = new File(fullFileName);
		
		// 检测是否存在父级目录
		if(!dest.getParentFile().exists()) {
			dest.getParentFile().mkdirs();
		}
		
		// 文件上传
		try {
			file.transferTo(dest);
			model.addAttribute("msg", "上传成功!");
			return "forward:toAddClothes.do";
		} catch(IOException e) {
			e.printStackTrace();
			model.addAttribute("msg", "上传失败!");
			return "forward:toAddClothes.do";
		}
	}
}
