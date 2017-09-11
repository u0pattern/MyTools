use Email::Valid; # ppm install Email::Valid
system('cls');
system('color 3');
print qq(
################################
# Grabber Emails From TxT File #
#######################################################
# G2: Killer~X - Kareem - ScAmA - LiOn hacker - L4th3 #
#######################################################
#      CoDeD By 1337r00t       #
################################
Enter [CTRL+C] For Exit :0\n\n\n\n);
print "Enter List For Grab Emails -> ";
$list=<STDIN>;
chomp($list);
open (MYFILE, $list);
while (<MYFILE>) {
    chomp;
    my @emails = split(' ');
    foreach my $email (@emails) {  
		if(Email::Valid->address($email)) {
			$getted = "$email\n";
			if($email =~ /gmail.com/){
				print "$getted -> Gmail\n";
				open(EM4IL,">>Gmail.txt");
				print EM4IL $getted;
				close(EM4IL);
			}
			else
			{
				if($email =~ /hotmail.com/){
					print "$getted -> HotMail\n";
					open(EM4IL,">>Hotmail.txt");
					print EM4IL $getted;
					close(EM4IL);
				}
				else
				{
					if($email =~ /yahoo.com/){
						print "$getted -> Yahoo\n";
						open(EM4IL,">>Yahoo.txt");
						print EM4IL $getted;
						close(EM4IL);
					}
					else
					{
						if($email =~ /mail.ru/){
							print "$getted -> MailRu\n";
							open(EM4IL,">>MailRu.txt");
							print EM4IL $getted;
							close(EM4IL);
						}
						else
						{
							print "$getted\n";
							open(EM4IL,">>MoreEmails.txt");
							print EM4IL $getted;
							close(EM4IL);
						}
					}
				}
			}
		}
    }
}

					}
				}
			}
		}
    }
}
