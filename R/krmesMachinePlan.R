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

krmesMachinePlanUI <- function(tabTitle ='机台派工',
                    colTitles =c('操作区','显示区域'),
                    widthRates =c(4, 8),
                    func_left = buttonkrmesMachinePlanUI_left,
                    func_right =buttonkrmesMachinePlanUI_right
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
buttonkrmesMachinePlanUI_left <- function() {


  res <- tagList(


    tsui::mdl_dateRange(id = 'dr_krmesMachinePlanUI',label = '下达日期',startDate = Sys.Date()-30,endDate = Sys.Date()),
    shiny::actionButton(inputId = 'btn_krmesMachinePlanUI_view' , label = '查询派工'),
    tsui::mdl_download_button(id = 'dl_krmesMachinePlanUI',label = '下载派工')


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
buttonkrmesMachinePlanUI_right <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'krmesMachinePlanUI_view_data', label = '出口'))
  )
  return(res)

}
