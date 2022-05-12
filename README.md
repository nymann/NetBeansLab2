# NetBeansLab2

_Dynamic NetBeans Asteroids Game_

### Introduction

In this assignment, we apply the NetBeans Platform in the Asteroid game setting.
The focus will be on loading and unloading NetBeans modules dynamically.

### Objectives

The objective of this assignment is to get familiar with the NetBeans module system,
provide sufficient information to get started with CODA practice using NetBeans platform, and
appreciate the component-oriented features of the NetBeans platform.

### Classwork

I expect you to focus on the NetBeans module system and how to load and unload
NetBeans modules using the auto update service API.

- Port the components from previous class work and use the NetBeans module system to
  register the services and the Lookup to find the service providers.
- Generate an ”Update Center (UC)” using the maven deploy profile
  Select the deployment profile, see [app pom.xml](https://github.com/sweat-tek/SB4-KOM-F20/blob/master/AsteroidsNetbeansModules/application/pom.xml).
  Remember to add all modules as dependencies when you build the NetBeans Update Site.
  Clean and install the <AppName>-app module.
- In the build target directory you will now find the ”netbeanssite” folder, that is your update
  center location.
- Install the ”SilentUpdate” module in your game [SilentUpdate](https://github.com/sweat-tek/SB4-KOM-F20/tree/master/AsteroidsNetbeansModules).
- Change the URL in ”Bundle.properties” file from the ”SilentUpdate” module to point to the
  update centers updates.xml file.
- Use the ”Update Center” to load a components by adding the update descriptors in the
  update centers updates.xml file.

### Uploading Modules to UC

For updating your modules from the ”Update Center” follow the
steps below:

- Build your module by right clicking on the module in the NetBeans IDE and chose ”Clean
  and Build”.
- From the NetBeans IDE Files view onfold the .NBM file in the ”target” folder.
- In the .NBM file your will find an ”info” folder that contains a ”info.xml” file.
- Open the ”info.xml” file and copy the content of the <module> tag (including the tag).
  Exclude the licens information.
- Copy the .NBM file to the location of your ”Update Center”.
- Paste the \<module\> tag information into the ”updates.xml” file.
