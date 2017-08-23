What are some of the key design philosophies of the Linux operating system?
	Small is Beautiful
	Each Program Does One Thing Well
	Prototype as Soon as Possible
	Choose Portability Over Efficiency
	Store Data in Flat Text Files
	Use Software Leverage
	Use Shell Scripts to Increase Leverage and Portability
	Avoid Captive User Interfaces
	Make Every Program a Filter

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
	A virtual machine sold as a service by hosting service providers. A VPS runs its own copy of an operating system, and customers have Full access to that operating system instance, so they can install almost any software that runs on that OS.

	Advantages:
	 Increase 
	 Gain Total Control of the Server
	 Increase Efficiency on a Green Platform
	 Instantly Scale Resources
	 Cost Savings

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
	You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).

	If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.

	Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...

	You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.

	You don't need it for most uses, except for administrative work.
	