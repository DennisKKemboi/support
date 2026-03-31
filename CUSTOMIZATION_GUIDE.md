# Privacy Policy & Contact Pages - Customization Guide

This repository contains customizable privacy policy and contact us pages ready for deployment on Netlify or any web hosting service.

## Files Included

- `index.html` - Privacy Policy page (main page)
- `contact.html` - Contact Us page with contact form and FAQ
- `privacy-policy.css` - Shared stylesheet for both pages
- `qurova/` - Custom font files directory
- `index-original.html` - Backup of the original Qityol Lite privacy policy

## Quick Customization Steps

### 1. Replace Placeholder Text

Search and replace the following placeholders in both `index.html` and `contact.html`:

- `TheVillage` - Replace with TheVillage/service name
- `[UPDATE DATE]` - Replace with current date (e.g., "March 2026")
- `info@qityol.com` - Replace with your support email
- `+1 (206) 880-0587` - Replace with your phone number
- `Seattle, WA` - Replace with your business address
- `9AM - 5PM PST` - Replace with your operating hours

### 2. Customize Privacy Policy Content

Review and modify the privacy policy sections in `index.html` to match your specific:
- Data collection practices
- Service offerings
- Legal jurisdiction
- Third-party integrations
- Contact information

### 3. Customize Contact Form

In `contact.html`, you can:
- Modify the contact form fields
- Update the FAQ section
- Change the form action URL to point to your form handler
- Add or remove contact methods

### 4. Styling Customization

Modify `privacy-policy.css` to match your brand:
- Update color scheme (search for `#4a4aef` and `#6b6bff`)
- Change fonts (currently uses Qurova custom font + Helvetica Neue)
- Adjust layout and spacing
- Modify the gradient backgrounds

## Deployment to Netlify

### Option 1: Git Integration
1. Push this customized repository to GitHub
2. Connect your GitHub repo to Netlify
3. Deploy automatically on each commit

### Option 2: Direct Upload
1. Customize the files as needed
2. Zip the entire directory
3. Drag and drop to Netlify dashboard

## Form Handling

The contact form in `contact.html` currently has `action="#"`. To make it functional:

1. **Netlify Forms**: Add `netlify` attribute to the form tag:
   ```html
   <form netlify action="#" method="POST">
   ```

2. **External Service**: Update the action to point to your form handler:
   ```html
   <form action="https://your-form-handler.com/submit" method="POST">
   ```

## Font Files

The custom Qurova font files are included in the `qurova/` directory. If you want to use different fonts:
1. Replace the font files
2. Update the `@font-face` declarations in the CSS
3. Update font-family references

## Legal Disclaimer

⚠️ **Important**: This privacy policy template is for reference only. Please consult with legal professionals to ensure your privacy policy complies with applicable laws and regulations in your jurisdiction (GDPR, CCPA, etc.).

## Support

For questions about customizing these templates, refer to standard HTML/CSS resources or web development documentation.
