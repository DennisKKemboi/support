#!/bin/bash

# Quick Customization Script for Privacy Policy & Contact Pages
# Usage: ./quick-customize.sh

echo "🔧 Privacy Policy & Contact Pages - Quick Customization"
echo "======================================================="
echo

# Collect user input
read -p "Enter TheVillage name: " company_name
read -p "Enter your email address: " email_address
read -p "Enter your phone number: " phone_number
read -p "Enter your business address: " business_address
read -p "Enter your business hours (e.g., Mon-Fri 9AM-5PM): " business_hours

# Get current date
current_date=$(date +"%B %Y")

echo
echo "🔄 Applying customizations..."

# Replace placeholders in index.html
sed -i.bak "s/\[TheVillage\]/$company_name/g" index.html
sed -i.bak "s/\[UPDATE DATE\]/$current_date/g" index.html
sed -i.bak "s/\[YOUR EMAIL ADDRESS\]/$email_address/g" index.html
sed -i.bak "s/\[YOUR PHONE NUMBER\]/$phone_number/g" index.html
sed -i.bak "s/\[YOUR BUSINESS ADDRESS\]/$business_address/g" index.html

# Replace placeholders in contact.html
sed -i.bak "s/\[TheVillage\]/$company_name/g" contact.html
sed -i.bak "s/\[YOUR EMAIL ADDRESS\]/$email_address/g" contact.html
sed -i.bak "s/\[YOUR PHONE NUMBER\]/$phone_number/g" contact.html
sed -i.bak "s/\[YOUR BUSINESS ADDRESS\]/$business_address/g" contact.html
sed -i.bak "s/\[YOUR BUSINESS HOURS\]/$business_hours/g" contact.html

# Clean up backup files
rm -f index.html.bak contact.html.bak

echo "✅ Customization complete!"
echo
echo "📁 Files updated:"
echo "   - index.html (Privacy Policy)"
echo "   - contact.html (Contact Us)"
echo
echo "🚀 Next steps:"
echo "   1. Review the content and make any additional changes"
echo "   2. Test the pages locally by opening them in a browser"
echo "   3. Deploy to Netlify or your preferred hosting service"
echo
echo "📖 For more details, see CUSTOMIZATION_GUIDE.md"
