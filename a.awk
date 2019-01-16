BEGIN{
  print "--------- stats ....... timestamp RPS error_percent 95percentile_response_time active_users -----";
  curr=0
}

{
  if($NF != curr) {
  print $NF" "n" "epct" "ptile" "u;
}
  curr=$NF
}

/allRequests.all.count/        {n=$2}
/allRequests.ko.count/         {e=$2; if(n==0){epct=0}else{epct=int(e/n*100)}}
/allRequests.ok.percentiles95/ {ptile=$2}
/users.allUsers.active/        {u=$2}
