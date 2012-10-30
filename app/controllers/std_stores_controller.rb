# encoding: utf-8

class StdStoresController < ApplicationController
  def index
    @std_infos = StdInfo.find_for_test
  end
  
  def show
    tag_t1 = "emc"
    tag_t2 = "机械"
    @std_infos = StdInfo.find_by_tag(params[:tag])
  end
  
end
