
# behindwhonix

A bash script that help you configure your dns kali machine to be online when you are behind whonix machine

# behindwhonix

Script is under developement dont run it untill you fully read it before

it can crash your network

## Getting Started

git clone https://github.com/mrhili/behindwhonix

chmod +x anonymize.sh

./anonymize.sh

### Prerequisites

Before runing this script you should configure whonix in virtual box

if you dont know how to do that pleez read this article : [how-to/fully-anonymize-kali-with-tor-whonix-pia-vpn](https://null-byte.wonderhowto.com/how-to/fully-anonymize-kali-with-tor-whonix-pia-vpn-0180040/)

Turn on Whonix

update whonix

configure tor in whonix

After that Configure your network in kali linux machine before turning on to be Internal network and select Whonix
![Configure your kali networking rule](https://github.com/mrhili/behindwhonix/raw/master/assets/network.jpg)



CHANGE MANUALLY YOUR VM MAC ADRESS



![manually change mac adress in virtual box](https://github.com/mrhili/behindwhonix/raw/master/assets/macchanger.png)

Run kali linux

### after runing

You should notice that your computer is rebooted

and the file /etc/resolv.conf has changed

Dont worry you should have a copy of /etc/resolv.conf in /etc/resolv.conf.backup

and the file /etc/network/interfaces has changed

Dont worry you should have a copy of /etc/network/interfaces in /etc/network/interfaces.backup

check tor to see if you succusfully behind tor proxy

run a vpn

![Cheking tor from official website](https://github.com/mrhili/behindwhonix/raw/master/assets/check-tor.jpg)

## Built With

* [BASH](https://www.gnu.org/software/bash/) - GNU bash, version 5.0.16(1)


## Contributing

Please read [CONTRIBUTING.md](https://github.com/mrhili/behindwhonix/contributing.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/mrhili/behindwhonix/tags.md). 

## Authors

* **Mrhili Mohamed Amine** - *Initial work* - [PurpleBooth](https://github.com/mrhili)

See also the list of [contributors](https://github.com/mrhili/behindwhonix/contributors.md) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* After that add a vpn and you are good to go

