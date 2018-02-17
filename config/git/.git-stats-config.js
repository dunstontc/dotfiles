module.exports = {
  // "DARK", "LIGHT" or an object interpreted by IonicaBizau/node-git-stats-colors
  "theme": "DARK"

    ,
  // The file where the commit hashes will be stored
  "path": "~/.git-stats"

    // First day of the week
    ,
  first_day: "Sun"

    // This defaults to *one year ago*
    // It can be any parsable date
    ,
  since: undefined

    // This defaults to *now*
    // It can be any parsable date
    ,
  until: undefined

    // Don't show authors by default
    // If true, this will enable the authors pie
    ,
  authors: false

    // No global activity by default
    // If true, this will enable the global activity calendar in the current project
    ,
  global_activity: false
};
