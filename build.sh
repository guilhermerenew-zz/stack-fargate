# build.sh
cd terraform

./terraform-linux init
./terraform-linux validate 
./terraform-linux apply
