module.exports = (robot) ->

  robot.hear /(?:\s|^|\()a(?:id)?(\d+)(?:\s|$|\))/i, (res) ->
    actionId = escape(res.match[1])
    res.send "https://ap-southeast-2.actionstep.com/mym/asfw/workflow/action/overview/action_id/#{actionId}"
