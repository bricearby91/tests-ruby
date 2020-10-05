def time_string(nb)
        hh = nb / 3600
        mm = (nb % 3600) / 60
        ss = (nb % 3600) % 60

tab=[hh,mm,ss]

tab.each_with_index do |nb,i|        
if nb.to_s.size < 2
    tab[i] = "0#{nb}"
end
end

return tab.join(":")
end

