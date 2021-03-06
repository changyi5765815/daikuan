package admin.customer.guanwangbao.processor;

import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;


import simpleWebFrame.config.Module;
import simpleWebFrame.util.DateTimeUtil;
import simpleWebFrame.web.DataHandle;
import simpleWebFrame.web.FrameKeys;

public class TopProcessor extends BaseProcessor {
	public TopProcessor(Module module, DataHandle dataHandle) {
		super(module, dataHandle);
	}

	public void makeView() throws Exception {
		Hashtable<String, String> adminUserDatas = (Hashtable<String, String>) getSessionData(FrameKeys.LOGIN_USER);
		setFormData("userName", adminUserDatas.get("userName"));
		setFormData("date", DateTimeUtil.getCurrentDate());
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		String dayOfWeekStr = "";
		String[] weekDays = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
		if (dayOfWeek < 8 && dayOfWeek > 0) {
			dayOfWeekStr = weekDays[dayOfWeek - 1];
		}
		setFormData("dayOfWeekStr", dayOfWeekStr);
	}
	
	public void defaultViewAction() {
	}
}
