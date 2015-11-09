


## PharoLauncher Tutorial: What ? How ?


This unit aims to provide a basic overview of what PharoLauncher is and give a step\-by\-step approach on how to use this application of great advantage\. 




###1\. Overview
 

As Pharo is open source, it growing rapidly owing to the contributions of people all around the world\. Each day we have a new update of the image of Pharo which makes it cumbersome to keep track of updates\. It becomes quite a task when one has to download a new image seperately each he/she plans to work on something having the latest issues fixed, new features added etc\.

That's where the PharoLauncher comes in the picture\.

Pharo Launcher, a cross\-platform application that 


-  lets you manage your Pharo images \(launch, rename, copy and delete\); 
-  lets you download image templates \(i\.e\., zip archives\) from many  different sources \(Jenkins, files\.pharo\.org, and your local cache\) and create new images from any template\.

The idea behind the Pharo Launcher is that you should be able to access it very rapidly from your OS application launcher\. As a result launching any image is never more than 3 clicks away\. 

"PharoLauncher" is useful to a user who develops and needs to constantly switch between images\. PharoLauncher is also a very handy tool to download specific image update versions if you want to reproduce or fix Pharo bugs\.Pharo Launcher is a Pharo\-based application allowing you to manage a list of images \(download, rename, delete\) and switch between them without aditional tools\. 





###2\.  Downloading/Installing PharoLauncher

As discussed earlier about the rapid evolvement of Pharo , kindly check out [http://www\.pharo\.org/download](http://www.pharo.org/download) to get the latest download/install instructions for Pharo Launcher\.



####2\.1\. Linux Ubuntu:

\([http://pharo\.org/download\#ubuntu](http://pharo.org/download#ubuntu)\)

Ubuntu users can use the dedicated ppa to install Pharo



```smalltalk
sudo add-apt-repository ppa:pharo/stable
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install pharo-launcher
```



If you don't have the add\-apt\-repository command, install the software\-properties\-common package and try again\.

If you are on a server \(no GUI\), you can get a Pharo Virtual Machine by installing pharo\-vm\-core\.

On Ubuntu, the Launcher is installed as */usr/bin/pharo*, so you can type the following command on the terminal to start the Pharo Launcher\.


```smalltalk
pharo
```

 



####2\.2\. ArchLinux :

\([http://lists\.pharo\.org/pipermail/pharo\-users\_lists\.pharo\.org/2014\-March/010932\.html](http://lists.pharo.org/pipermail/pharo-users_lists.pharo.org/2014-March/010932.html)\)



```smalltalk
$ yaourt pharo-vm-latest
$ pharo /path/to/your/image
```



There's also a pharo\-launcher package that depends on pharo\-vm:


```smalltalk
$ yaourt pharo-launcher
$ pharo-launcher
```





####2\.3\. Windows:
Download and install the executable from the link provided here \([http://files\.pharo\.org/platform/launcher/latest\.exe](http://files.pharo.org/platform/launcher/latest.exe)\)




####2\.4\. MacOS:
Use the link \([hhttp://files\.pharo\.org/platform/launcher/latest\.dmg](hhttp://files.pharo.org/platform/launcher/latest.dmg)\)to install PharoLauncher on Mac system\.

After installation , you'll observe that the Launcher is installed in /Applications\. 




###3\. Using PharoLauncher

Launch the Pharo launcher image using the platform\-specific VM\.

The image below depicts how a PharoLauncher looks like when it is opened\.



<a name="launcher"></a><figure><img src="figures/pharolauncher_edited_new.png" width="100%"></img><figcaption>Pharo Launcher</figcaption></figure>



The screen displayed initially has been divided into two parts\.
The left part 'Existing Images' displays the images already created by the user\. Initially after the installation the left side with local images is empty\.
Whereas the the right side is the 'Templates' section which displays the image templates from various resources available for download from the internet\.
The 'Existing Images' section has 3 buttons : Launch, Delete and Refresh\.
The 'Templates' section has 2 buttons : Create Image and Refresh\.
At the bottom of the launcher we have the buttons for quit and settings\.

Select the image you wish to work on from the list and the sources provided in the 'Templates' section and download it\. 

For instance you can download "Pharo4\.0 \(beta\)” from the options provided which is the latest image as of today\. 

By clicking on the 'Create Image' button at the top right corner\.

Note that also the images from contribution CI are available\.

So you can easily download "Artefact", "Moose", \.\.\. images according to your choice\.

It will download the image into a specific directory somewhere in your users home directory\.
Each image gets an own folder\. Use the "Show in folder" menu item  to open this location\.

The location of the images can be changed through the 'Settings Browser' option located at the bottom\-right corner\.
Go to the 'Open Settings' > 'Location of your images'\. Now enter the desired path in the place provided as shown in the figure\.


<a name="settingLocation"></a><figure><img src="figures/location.png" width="100%"></img><figcaption>Setting the storage location of the image</figcaption></figure>



After 'Creating an image' , a dialog box appears which asks you to give a name to the image as shown in figure below\.



<a name="namingImage"></a><figure><img src="figures/rename.png" width="100%"></img><figcaption>Naming your image</figcaption></figure>



After entering the suitable name , the image is displayed in the 'Existing Images' section\.



<a name="imageAdded"></a><figure><img src="figures/myimage.png" width="100%"></img><figcaption>Your image added to the 'Existing Images'</figcaption></figure>

To launch the image, simply select your option and click on the 'Launch' button located at the top right corner of the 'Existing Images' section and voila \! You have the pharo image of your choice running with the name of your choice\.



<a name="launchPL"></a><figure><img src="figures/myimg.png" width="100%"></img><figcaption>Launching your image</figcaption></figure>



###4\.  Important Points

&nbsp;

-  To run multiple images, uncheck the “Quit on Launch” checkbox located at the bottom left corner \(as shown in figure [3\.1](#launcher)\), so that the Pharo Launcher doesn't close when an image is launched\.

&nbsp;

-  Pharo Launcher creates a separate directory for each image, with a matching image and directory name\. But when Pharo is asked to save the image with a different name, that image is stored in the directory of the older image by default\. The new image thus created can not be used by the Pharo Launcher\. To avoid such situation, either use the Pharo Launcher to copy an image or create a new directory and then save the image there\. With Pharo 4 , we can set the storage location of the image while saving, though with the older versions it had to be done manually after saving\.


You could watch this video on PharoLauncher to get a clearer view \([https://www\.youtube\.com/watch?v=fNim2Yxs320](https://www.youtube.com/watch?v=fNim2Yxs320)\)

Resources to explore further: 
&nbsp;

- Official Pharo Website \([http://pharo\.org/](http://pharo.org/)\)
- Pharo Launcher project on SmalltalkHub  \([http://www\.smalltalkhub\.com/\#\!/~Pharo/PharoLauncher](http://www.smalltalkhub.com/#!/~Pharo/PharoLauncher)\)
- Pharo Launcher at Continuous Integration, Inria Platform \([https://ci\.inria\.fr/pharo\-contribution/job/PharoProjectCatalog/HTML\_Report/PharoLauncher\.html](https://ci.inria.fr/pharo-contribution/job/PharoProjectCatalog/HTML_Report/PharoLauncher.html)\)
- Pharo Mailing List discussion on Pharo Launcher  \([http://lists\.pharo\.org/pipermail/pharo\-dev\_lists\.pharo\.org/](http://lists.pharo.org/pipermail/pharo-dev_lists.pharo.org/)\)


