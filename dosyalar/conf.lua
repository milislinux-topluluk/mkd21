local mpsconf={
	repo_dizin="/sources",
	sunucu={
		[1]="http://mls.akdeniz.edu.tr/paketler",
		--[2]="http://localhost:9999",
	},
	talimatdepo={
		-- git repo adres, ilgili düzeye aktarılacak içerik
		-- tname düzeylere göre
		 [1]={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="talimatname/1"},
		 [2]={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="talimatname/2"},
		 [3]={["https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd"]="talimatname/test"},
		
	},
	betikdepo={
		-- ilgili repodan bin/ ayarlar/ gibi betik içeren dizinlerin alınması
		bin={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="bin",["https://mls.akdeniz.edu.tr/git/milis-topluluk/mkd"]="bin"},
		ayarlar={["https://mls.akdeniz.edu.tr/git/milislinux/milis19"]="ayarlar"},
	},
}

return mpsconf
