require! {Activity:'../../models/activity', Tag:'../../models/tag', Comment:'../../models/comment'}

# home page
module.exports = (req, res)!->
  Activity.fetch (err, activities)!->
    if err
      console.log err
    res.render 'home', {
      title: '活动主页'
      user: req.user
      activities: activities
    }