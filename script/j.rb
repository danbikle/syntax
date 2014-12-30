

  mydf = "#{Rails.root}/public/mydata.csv"
  require 'csv'
  longjson = []
  CSV.read(mydf).each{|row| longjson<< row if row[0]=~/2014-12/}
  longjson = longjson.map{|row| [DateTime.strptime(row[0],'%Y-%m-%d'),row[4]]}
  longjson = longjson.map{|row| {:x=>row[0].strftime('%s').to_i, :y=>row[1].to_f}}
  longjson = longjson.sort_by{|hsh| hsh[:x]}
  miny      = longjson.map{|row| row[:y]}.min
  maxy      = longjson.map{|row| row[:y]}.max
  longjson = longjson.to_s.gsub(/:x/,'x').gsub(/:y/,'y').gsub(/=>/,':')
  sdf = "#{Rails.root}/public/spy611.csv"
  pjson = []
  myrows = []
  CSV.read(sdf).each{|row| myrows << row if row[1]=~/2014-12/}
  myrows.each{|row|
  if (row[0] == 'lr')
byebug
    pjson << row 
  end
  }
