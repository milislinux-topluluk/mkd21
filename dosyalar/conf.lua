local mpsconf={
	repo_dizin="/sources",
	sunucu={
		[1]="http://mls.akdeniz.edu.tr/paketler21",
		--[2]="http://localhost:9999",
	},
	talimatdepo={
		-- git repo adres, ilgili düzeye aktarılacak içerik
		-- tname düzeylere göre
		 [1]={["https://mls.akdeniz.edu.tr/git/milislinux/milis21"]="talimatname/1"},
		 [2]={["https://mls.akdeniz.edu.tr/git/milislinux/milis21"]="talimatname/2"},
		 [3]={["https://github.com/milislinux-topluluk/mkd21"]="talimatname"},
		
	},
	betikdepo={
		-- ilgili repodan bin/ ayarlar/ gibi betik içeren dizinlerin alınması
		bin={["https://mls.akdeniz.edu.tr/git/milislinux/milis21"]="bin",["https://github.com/milislinux-topluluk/mkd21"]="bin"},
		ayarlar={["https://mls.akdeniz.edu.tr/git/milislinux/milis21"]="ayarlar"},
	},
}

return mpsconf
