var pages = [
  {
    id: 'index',
    title: 'Home'
  },
  {
    id: 'code-general',
    section: 'Code',
    title: 'General'
  },
  {
    id: 'code-javascript',
    section: 'Code',
    title: 'Javascript'
  },
  {
    id: 'collaboration-definitions-of-done',
    section: 'Collaboration',
    title: 'Definitions of done'
  },
  {
    id: 'collaboration-definitions-of-ready',
    section: 'Collaboration',
    title: 'Definitions of ready'
  },
  {
    id: 'collaboration-development-cycles',
    section: 'Collaboration',
    title: 'Development cycles'
  },
  {
    id: 'collaboration-meetings',
    section: 'Collaboration',
    title: 'Meetings'
  },
  {
    id: 'ux-wording',
    section: 'User experience',
    title: 'Wording'
  }
];

var data = module.exports = {};

pages.forEach(function(pageData) {
  if (pageData.layout == null) {
    pageData.layout = './_layout';
  }
  pageData.pageTitle = (pageData.section ? (pageData.section + ' > ') : '') + pageData.title;
  pageData.pages = data;
  data[pageData.id] = pageData;
});
