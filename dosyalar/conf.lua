local config={
  betikdepo = {
    ayarlar = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/milis21"] = "ayarlar"
    },
    ayguci = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/ayguci"] = ""
    },
    ayguciui = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/ayguciui"] = ""
    },
    bin = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/milis21"] = "bin",
      ["https://git.sr.ht/~yasarciv/mkd"] = "betikler"
    },
    fterm = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/fterm"] = ""
    },
    mservice = {
      ["https://mls.akdeniz.edu.tr/git/milislinux/mservice"] = ""
    }
  },
  repo_dizin = "/sources",
  sunucu = {
    [1]="http://mls.akdeniz.edu.tr/paketler21",
    [2]="http://localhost:9999"
    },
  talimatdepo = {
    {
      ["https://mls.akdeniz.edu.tr/git/milislinux/milis21"] = "talimatname/1"
    },
    {
      ["https://mls.akdeniz.edu.tr/git/milislinux/milis21"] = "talimatname/2"
    },  
    {
	  ["https://git.sr.ht/~yasarciv/mkd"]= "talimatname"
    },
  }
}
return config
