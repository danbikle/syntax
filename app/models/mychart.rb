class Mychart
  def chartdata(algo='lr', regexp_str='2014')
    mydf = "#{Rails.root}/public/mydata.csv"
    require 'csv'
    longjson = []
    myre     = Regexp.new(regexp_str)
    CSV.read(mydf).each{|row| longjson<< row if row[0]=~ myre}
    longjson = longjson.map{|row| [DateTime.strptime(row[0],'%Y-%m-%d'),row[4]]}
    longjson = longjson.map{|row| {:x=>row[0].strftime('%s').to_i, :y=>row[1].to_f}}
    longjson = longjson.sort_by{|hsh| hsh[:x]}
    cp1      = longjson[0][:y]
    miny     = longjson.map{|row| row[:y]}.min
    maxy     = longjson.map{|row| row[:y]}.max
    @longjson_s = longjson.to_s.gsub(/:x/,'x').gsub(/:y/,'y').gsub(/=>/,':')
    sdf      = "#{Rails.root}/public/spy611.csv"
    myrows   = []
    pjson    = []
    CSV.read(sdf).each{|row| myrows<< row if(row[1]=~ myre)and(row[0]==algo)}
    cp = cp1
    myrows.each{|row|
      # fields: algo,close_price_date,prediction,pct_gain
      prediction   = row[2].to_f
      if row[3].present?
        pct_gain = row[3].to_f 
        asign    = mysign(prediction - 0.5)
        mmygain  = asign * 0.01 * pct_gain * cp
        cp      += mmygain
        row[4]   = cp
      end # if row[3].present?
    }
    # I should shift the price back in time by 1 row.
    pjson[0] = [myrows[0][1],cp1]
    for pj in (1..(myrows.length)-1) do
      pjson[pj] = [myrows[pj][1],myrows[pj-1][4]]
    end
    pjson = pjson.map{|row| [DateTime.strptime(row[0],'%Y-%m-%d'),row[1]]}
    pjson = pjson.map{|row| {:x=>row[0].strftime('%s').to_i, :y=>row[1]}}
    pjson = pjson.sort_by{|hsh| hsh[:x]}
byebug
    ally = [pjson.map{|row| row[:y]},miny,maxy].flatten.compact.sort
    @miny = ally.min
    @maxy = ally.max
    @pjson_s = pjson.to_s.gsub(/:x/,'x').gsub(/:y/,'y').gsub(/=>/,':')

    {:miny=>@miny, :maxy=>@maxy, :longjson_s=>@longjson_s, :pjson_s=>@pjson_s}
  end # def chartdata(algo='lr')

  def mysign(anum)
    if anum >= 0.0
      return 1
    else
      return -1
    end
  end
end
