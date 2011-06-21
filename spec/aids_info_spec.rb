# -*- encoding: utf-8 -*-
require 'helper'

describe AidsInfo do
  describe ".client" do
    it "should be a AidsInfo::Client" do
      AidsInfo.client.should be_a AidsInfo::Client
    end
  end
end
