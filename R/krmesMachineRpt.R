#' 按纽生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' jhhrvodsbillrddetailUI()

krmesMachineRptUI <- function(tabTitle ='机台汇报',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttonkrmesMachineRptUI_left,
                    func_right =buttonkrmesMachineRptUI_right
) {


  res = tsui::uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right)
  return(res)
}


#' 操作区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_left()
buttonkrmesMachineRptUI_left <- function() {


  res <- tagList(

    tsui::mdl_dateRange(id = 'dr_krmesMachineRptUI',label = '汇报日期',startDate = Sys.Date()-30,endDate = Sys.Date()),

    shiny::actionButton(inputId = 'btn_krmesMachineRptUI_view' , label = '查询汇报'),
    tsui::mdl_download_button(id = 'dl_krmesMachineRptUI',label = '下载汇报')


  )
  return(res)

}





#' 预览区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' buttonUI_right()
buttonkrmesMachineRptUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'krmesMachineRptUI_view_data', label = '出口'))
  )
  return(res)

}
