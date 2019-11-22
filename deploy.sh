#!/bin/bash
web_root=/var/www/htdocs
homepage_site=$web_root/homepage
temp_destination=$web_root/hompage.tmp
delete_destination=$web_root/homepage.tmp.delete

echo "Copying to $temp_destination..."
cp -R . $temp_destination
echo "Done!"

echo "Staging current site to be deleted..."
mv $homepage_site $delete_destination
echo "Done!"

echo "Moving new site to replace old..."
mv $temp_destination $homepage_site
echo "Done!"

echo "Deleting old site"
rm -rf $delete_destination
echo "Done!"
