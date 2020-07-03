kubectl create secret generic pgpassword  --from-literal PGPASSWORD=1234dsdasd

On macOS Sierra rm -rf ~/.minikube fixed it for me. After that, minikube start worked as expected.

$ minikube stop

$ minikube delete

$ brew cask uninstall minikube

$ rm -rf ~/.minikube ~/.kube

Go to https://www.virtualbox.org/wiki/Downloads, use VirtualBox_Uninstall.tool script provided in OS X host .dm file

Disconnect from VPN

Restart laptop, make sure that you are not reconnected to VPN

Install VirtualBox using VirtualBox.pkg from the same .dmg file as the previous step.

$ brew cask install minikube

$ minikube start --alsologtostderr -v=9

Connect to VPN (if you wish)

kubectl create secret generic pgpassword  --from-literal PGPASSWORD=postgrespassword123