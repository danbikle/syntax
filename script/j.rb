

  mydf = "#{Rails.root}/public/mydata.csv"
  require 'csv'
  longjson = []
  CSV.read(mydf).each{|row| longjson<< row if row[0]=~/2014-12/}
  longjson = longjson.map{|row| [DateTime.strptime(row[0],'%Y-%m-%d'),row[4]]}
  longjson = longjson.map{|row| {:x=>row[0].strftime('%s').to_i, :y=>row[1].to_f}}
  longjson = longjson.sort_by{|hsh| hsh[:x]}
  cp1 = longjson[0][:y]
  miny      = longjson.map{|row| row[:y]}.min
  maxy      = longjson.map{|row| row[:y]}.max
  longjson = longjson.to_s.gsub(/:x/,'x').gsub(/:y/,'y').gsub(/=>/,':')
  sdf = "#{Rails.root}/public/spy611.csv"
  pjson = []
  myrows = []
  morows = []
  CSV.read(sdf).each{|row| myrows << row if row[1]=~/2014-12/}
  myrows.each{|row| morows << row if (row[0] == 'lr')}

# I should loop through dec and calculate each day gain
cp = cp1
morows.each{|row|
  # fields: algo,close_price_date,prediction,pct_gain
  cpdate     = row[1]
  prediction = row[2].to_f

    if row[3].present?
      pct_gain   = row[3].to_f 
      if prediction>=0.5
        mygain =  0.01 * pct_gain * cp
      else
        mygain = -0.01 * pct_gain * cp
      end
      cp += mygain
      row[4] = cp
    end # if row[3].present?

}

pjson[0] = [morows[0][1],cp1]
for pj in (1..(morows.length)-1) do
byebug
  pjson[pj] = [morows[pj][1],morows[pj-1][4]]
end


  


