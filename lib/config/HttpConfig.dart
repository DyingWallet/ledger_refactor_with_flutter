///接口管理
class ServicePath{
  ///服务地址（局域网）
  static String serverHostPort = "http://172.16.20.120:8090/";
  ///登录
  static String login = serverHostPort + "User/Login";
  ///注册
  static String signUp = serverHostPort + "User/SignUp";
  ///支出
  static String allCost = serverHostPort + "Cost/queryByCostUser";
  static String costsByDate = serverHostPort + "Cost/queryByCostDateOfUser";
  static String costChat = serverHostPort + "Cost/costChat";
  static String insertCost = serverHostPort + "Cost/insertCost";
  static String updateCost = serverHostPort + "Cost/updateCost";
  static String deleteCost = serverHostPort + "Cost/deleteCost";
  ///收入
  static String allIncome = serverHostPort + "Income/queryByIncomeUser";
  static String incomeByDate = serverHostPort + "Income/queryByIncomeDateOfUser";
  static String incomeChat = serverHostPort + "Income/incomeChat";
  static String insertIncome = serverHostPort + "Income/insertIncome";
  static String updateIncome = serverHostPort + "Income/updateIncome";
  static String deleteIncome = serverHostPort + "Income/deleteIncome";
  ///反馈
  static String pushFeedback = serverHostPort + "Feedback/insertFb";
  ///公告
  static String pullAllAnno = serverHostPort + "Anno/queryAllAnno";
  ///获取往期记录
  static String pullAllHistory = serverHostPort + "GetReply/getHistoryByUser";

  static changeUrl(index){
    switch(index){
      case 0:
        ServicePath.serverHostPort = "http://172.16.20.120:8090/";
    }
  }
}