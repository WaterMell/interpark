package com.iticket.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReservService;
import com.iticket.app.service.impl.ScheduleService;
import com.iticket.app.service.impl.SeatSaveService;
import com.iticket.app.service.impl.SeatService;

import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.ScheduleVO;
import com.iticket.app.vo.SeatSaveVO;
import com.iticket.app.vo.SeatVO;
import com.iticket.app.vo.TotaltempVO;

@Controller
public class ReservController {
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private ReservService reservService;
	@Autowired
	private SeatService seatService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SeatSaveService seatsaveService;
	@GetMapping("reserv_ssh")
	public String get_reserv_List(ReservationVO vo, Model model) {

		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_ssh";
	}

	// 예약 삭제 메소드
	@GetMapping("get_reserv_del")
	public String get_reserv_del(ReservationVO vo, Model model) {

		ForReservationVO get_reserv = reservService.get_one_reserv_history(vo);
		model.addAttribute("get_reserv", get_reserv);
		return "/reserv/reserv_delete";
	}

	// 선택한 예약 리스트 출력
	@GetMapping("get_reserv_List_id")
	public String get_reserv_List_id(ReservationVO vo, Model model) {
		System.out.println("get_reserv_List_id 실행");
		System.out.println("받아온 vo : " + vo);
		List<ForReservationVO> get_reserv_history = reservService.get_reserv_history(vo);
		System.out.println("받아온 get_reserv_history : " + get_reserv_history);
		model.addAttribute("get_reserv_history", get_reserv_history);
		return "/reserv/reserv_search_id";
	}
	
	
	// insert_reserv 창으로 진입(행사 데이터 리스트 삽입)
	@GetMapping("/insert_reserv")
	public String go_reserv_insert(DetailVO vo, Model model) {
		List<DetailVO> detail_list = detailService.getDetail_list(vo);
		model.addAttribute("getDetail_list", detail_list);

		return "/reserv/reserv_insert";
	}

	// insert_reserv창으로 진입, 이때 삽입되는 데이터는 get_Detail_insert로 하나만 삽입
	@RequestMapping("get_Detail_insert")
	public String reserv_insert_1(DetailVO dvo, Model model) {
		DetailVO detail = detailService.getDetail(dvo);
		ScheduleVO svo = new ScheduleVO();
		svo.setGd_num(detail.getGd_num());
		List<ScheduleVO> schedule_list = scheduleService.get_schedule_list(svo);
		model.addAttribute("get_schedule_list", schedule_list);
		return "/reserv/reserv_insert";
	}

	// 예약 삭제창으로 이동( 추후 삭제할 메소드임 )
	@RequestMapping("delete_reserv")
	public String go_reserv_delete(ReservationVO vo, Model model) {
		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_delete";
	}

	// reservation 테이블과 seatsave 테이블에 각각 데이터를 삽입
	@RequestMapping("insert_reserv_do")
	public String insert_reserv(ReservationVO rvo, Model model) {
		System.out.println(">>> reserv insert");
		System.out.println("insert vo : " + rvo);
		System.out.println("sd_num  : " + rvo.getSd_num());

		SeatSaveVO save_vo = new SeatSaveVO();
		save_vo.setSeat_able(1);
		save_vo.setSd_num(rvo.getSd_num());
		save_vo.setSt_num(rvo.getSt_num());
		System.out.println("save_vo  : " + save_vo);
		seatsaveService.seatsave_insert(save_vo);
		reservService.insert_reserv(rvo);

		return "/reserv/reserv_ssh";
	}

	// 삽입된 rv_num에 해당하는 데이터 삭제
	@RequestMapping("delete_reserv_do")
	public String delete_reserv(ReservationVO vo) {
		System.out.println(">>> delete_reserv 실행");
		System.out.println("vo : " + vo);
		SeatSaveVO save_vo = new SeatSaveVO();
		save_vo.setSd_num(vo.getSd_num());
		save_vo.setSt_num(vo.getSt_num());

		System.out.println("save_vo : " + save_vo);

		seatsaveService.seatsave_delete(save_vo);
		reservService.delete_reserv(vo);
		return "/reserv/reserv_ssh";
	}
	@RequestMapping("reserv_Exhibi")
	public String reserv_Exhibi(@RequestParam("data") String data, Model model) {
		String[] temp;
		temp=data.split("/");
		int temp_st_num = Integer.parseInt(temp[0]);
		int temp_sd_num = Integer.parseInt(temp[1]);
		int cnt = Integer.parseInt(temp[2]);
		
		System.out.println("temp_st_num : " + temp_st_num);
		System.out.println("temp_sd_num : " + temp_sd_num);
		System.out.println("cnt : " + cnt);
		List<TotaltempVO> total_Exhibi = new ArrayList<TotaltempVO>();
		int total_price = 0;
		for(int i =0; i<cnt; i++) {
			SeatVO seat_vo = new SeatVO();
			TotaltempVO total_vo = new TotaltempVO();
			ScheduleVO schedule_vo = new ScheduleVO();
			DetailVO detail_vo = new DetailVO();
		
			seat_vo.setSt_num(temp_st_num);
			schedule_vo.setSd_num(temp_sd_num);
		
			SeatVO seat = seatService.get_seat(seat_vo);
			ScheduleVO schedule = scheduleService.getSchedule(schedule_vo);
		
			detail_vo.setGd_num(schedule.getGd_num());
			DetailVO detail = detailService.getDetail(detail_vo);
		
			total_vo.setHl_buildingnum(seat.getHl_buildingnum());
			total_vo.setSd_num(schedule.getSd_num());
			total_vo.setSt_able(seat.getSt_able());
			total_vo.setSt_num(seat.getSt_num());
			total_vo.setSt_price(seat.getSt_price());
			total_vo.setGd_title(detail.getGd_title());
			total_vo.setSd_date(schedule.getSd_date());
			total_vo.setStart_time(schedule.getStart_time());
			total_Exhibi.add(total_vo);
			total_price = total_price + seat.getSt_price();
		}
		model.addAttribute("total_price", total_price);
		model.addAttribute("total_Exhibi", total_Exhibi);
		
		return "/reserv/reserv_insert";
	}
	
	@RequestMapping("reserv_seat_do")
	public String reserv_seat_do(@RequestParam("data") String[] data, Model model) {
		String[] temp;
		int total_price = 0;
		List<SeatVO> seat_vo_list = new ArrayList<SeatVO>();
		List<SeatSaveVO> save_vo_list = new ArrayList<SeatSaveVO>();
		List<TotaltempVO> total_list = new ArrayList<TotaltempVO>();
		for(int i =0; i<data.length; i++) {
			temp=data[i].split("/");
			int temp_st_num = Integer.parseInt(temp[0]);
			int temp_sd_num = Integer.parseInt(temp[1]);
			
			SeatVO seat_vo = new SeatVO();
			SeatSaveVO save_vo = new SeatSaveVO();
			TotaltempVO total_vo = new TotaltempVO();
			ScheduleVO schedule_vo = new ScheduleVO();
			DetailVO detail_vo = new DetailVO();
			
			seat_vo.setSt_num(temp_st_num);
			save_vo.setSd_num(temp_sd_num);
			schedule_vo.setSd_num(temp_sd_num);
			
			SeatVO seat = seatService.get_seat(seat_vo);
			ScheduleVO schedule = scheduleService.getSchedule(schedule_vo);
			
			detail_vo.setGd_num(schedule.getGd_num());
			DetailVO detail = detailService.getDetail(detail_vo);
			
			total_vo.setHl_buildingnum(seat.getHl_buildingnum());
			total_vo.setSd_num(save_vo.getSd_num());
			total_vo.setSt_able(seat.getSt_able());
			total_vo.setSt_num(seat.getSt_num());
			total_vo.setSt_price(seat.getSt_price());
			total_vo.setGd_title(detail.getGd_title());
			total_vo.setSd_date(schedule.getSd_date());
			total_vo.setStart_time(schedule.getStart_time());
			total_price = total_price + seat.getSt_price();
			
			
			System.out.println("============================");

			System.out.println("seat.getHl_buildingnum() : " + seat.getHl_buildingnum());
			System.out.println("save_vo.getSd_num() : " + save_vo.getSd_num());
			
			System.out.println("============================");
			System.out.println("seat_vo : " + seat_vo);
			System.out.println("save_vo : " + save_vo);
			System.out.println("seat : " + seat);
			System.out.println("total_vo : " + total_vo);
			System.out.println("============================");
			
			total_list.add(total_vo);
		}

		System.out.println("total_price : " + total_price);
		System.out.println("============================");
		System.out.println("total_list : " + total_list);
		System.out.println("============================");
		model.addAttribute("total_price", total_price);
		model.addAttribute("total_list", total_list);
		return "/reserv/reserv_insert";
	}
	
	@RequestMapping(value="insert_test_do", method = RequestMethod.POST)
	public String insert_test_do(@RequestParam(value="st_num",required=true) List<String> st_num,
			@RequestParam(value="st_price",required=true) List<String> st_price,
			@RequestParam(value="user_id",required=true) List<String> user_id,
			@RequestParam(value="sd_num",required=true) List<String> sd_num,
			Model model) {
		System.out.println("st_num : " + st_num);
		System.out.println("st_price : " + st_price);
		System.out.println("user_id : " + user_id);
		System.out.println("sd_num : " + sd_num);
		
		for(int i=0;i<st_num.size();i++) {
			SeatSaveVO save_vo = new SeatSaveVO();
			ReservationVO reserv_vo = new ReservationVO();
			
			save_vo.setSt_num(Integer.parseInt(st_num.get(i)));
			save_vo.setSd_num(Integer.parseInt(sd_num.get(i)));
			save_vo.setSeat_able(1);
			
			reserv_vo.setSt_num(Integer.parseInt(st_num.get(i)));
			reserv_vo.setSd_num(Integer.parseInt(sd_num.get(i)));
			reserv_vo.setUser_id(user_id.get(i));
			
			System.out.println("save_vo  : " + save_vo);
			System.out.println("reserv_vo  : " + reserv_vo);
			seatsaveService.seatsave_insert(save_vo);
			reservService.insert_reserv(reserv_vo);
		}		
		return "main";
	}
		
}
