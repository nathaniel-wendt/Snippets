# What are skip links?
A Skip link is a common accessibility feature added to the top of a webpage that, when activated, jumps the user to the beginning of the main content area (bypassing repetitive site navigation).

## How do you implement a skip link?

Adding the HTML:
```html
<!-- place above site nav so it is the first thing focused when user tabs -->
<header>
  <a href="#main-content" id="skip-link">Skip to main content</a>
    <nav>
        ...
    </nav>
</header>
<main id="main-content" tabindex="-1">
```

Styling the CSS:
```css
#skip-link {
  position: absolute;
  top: -40px; /* hidden initally with negative number */
  left: 0;
  background: #BF1722;
  color: white;
  padding: 8px;
  z-index: 100; /* setting z-index ensures link appears above other elements */
}

#skip-link:focus {
  top: 0; /* pressing tab will focus link, top: 0 makes it visible */
}
```

JavaScript:
```javascript
let mainContent = document.getElementById('main-content');
let skipLink = document.getElementById('skip-link');

skipLink.onclick = function(e) {
  e.preventDefault();
  mainContent.focus(); // use focus so next tab after using skip link will start at main content
}
```

## What should you consider when creating skip links?
To be usable by all keyboard users, particularly sighted keyboard users, the link must:
- be hidden by default
- be accessible to keyboard navigation
- become prominently visible when it is focused
- properly set focus to the main content area when activated

## Are Skip links part of any WCAG Success Criteria?
Yes - Skip links are mentioned as a technique in the first Success Criteria of Guideline 2.4 (Navigable):
> **2.4.1 Bypass Blocks:** A mechanism is available to bypass blocks of content that are repeated on multiple Webpages. *(Level: A)* 

### Additional Learning:
- [W3C - Understanding 2.4.1](https://www.w3.org/TR/UNDERSTANDING-WCAG20/navigation-mechanisms-skip.html)
- [WebAIM - Skip Navigation Links](https://webaim.org/techniques/skipnav/)
