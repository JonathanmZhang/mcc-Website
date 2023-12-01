
# Role: Content Editor

Content editors are responsible for adding, changing, and/or deleting content
for the website.  Content includes words and images.

The content for the website is located in the ./content folder of the source files.

When the website is built, the files in the ./content folder are converted into
a working website by the code.  The code is the responsibility of the
[code developer role](role-code-developer.md).

## Set Up

To edit content you need a local environment or copy of the website.
To set one up, follow the instructions in [One Time Setup](one-time-setup.md).

## Content Editing

See [Hugo Documentation](https://gohugo.io/content-management/)
for detailed documentation.
This document will not attempt to explain Hugo in general.
Instead, it will attempt to explain things unique to our instance of Hugo.

## Shortcodes

See [what is a Hugo shortcode](https://gohugo.io/content-management/shortcodes/#what-a-shortcode-is).
Shortcodes built specifically for this website are described here.

### {{< home-events-list >}}
### {{< home-news-list >}}
### {{< horizontal-rule >}}
### {{< image src="..." >}}
### {{% show-until "2023-12-25" %}}
### {{< swisssys-report "*Crown*" >}}
### {{< table thead="..." data="..." >}}
