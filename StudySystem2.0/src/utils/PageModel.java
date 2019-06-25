package utils;

import java.util.List;

//工具类
//作用：携带数据 1_当前页中的视频集合  2_分页参数信息
public class PageModel {

	//1_当前页中的视频集合 
	private List list;

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}
	
	//2_分页的参数信息   共?页     当前第?页    上1页   下1页   首页   末页
	private int  currentPageNum; //当前页 ,每次从客户端的浏览器发送到服务端
	private int  pageSize;//每页条数 ， 约定好的
	private int  totalRecords;//总共记录条数 ，必须从仓库在中查询
	
	
	private int  totalPageNum;//总页数
	private int  startIndex;//起始索引值：本质上就是分页语句中limit后的第1个参数值
	private int  prevPageNum;//上一页
	private int  nextPageNum;//下一页
	
	//扩展属性  每页存放9个页码
	private int startPage; //起始页码  
	private int endPage;   //终止页码
	
	//完善属性
	private String url;

	
	public PageModel(int currentPageNum, int totalRecords, int pageSize) {
		this.currentPageNum=currentPageNum;
		this.totalRecords=totalRecords;
		this.pageSize=pageSize;
		
		totalPageNum= (totalRecords%pageSize==0)?(totalRecords/pageSize):(totalRecords/pageSize+1);
		startIndex=(currentPageNum-1)*pageSize;
		
		
		prevPageNum=currentPageNum-1;
		if(currentPageNum<=1) {
			prevPageNum=1;
		}
		nextPageNum=currentPageNum+1;
		if(currentPageNum==totalPageNum) {
			nextPageNum=totalPageNum;
		}
		
		
		startPage=currentPageNum-4;
		endPage=currentPageNum+4;
		if(totalPageNum<=9){
			//总共不到9页，所有的页数都要显示
			startPage=1;
			endPage=totalPageNum;
		}else {
			if(startPage<1){
				startPage=1;
				endPage=startPage+8;
			}
			if(endPage>totalPageNum) {
				endPage=totalPageNum;
				startPage=totalPageNum-8;
			}
		}
		
		
		
	}
	
	public int getCurrentPageNum() {
		return currentPageNum;
	}

	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getPrevPageNum() {
		return prevPageNum;
	}

	public void setPrevPageNum(int prevPageNum) {
		this.prevPageNum = prevPageNum;
	}

	public int getNextPageNum() {
		return nextPageNum;
	}

	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
}









