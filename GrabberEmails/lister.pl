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
			print "$getted\n";
			open(EM4IL,">>Emails.txt");
			print EM4IL $getted;
			close(EM4IL);
		}
		else
		{
			print "Sorry, we're not found any email";
		}
    }
}
