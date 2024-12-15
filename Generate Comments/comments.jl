# This IS NOT used in the website
# Only beforehand to generate the html for the comments
# Sense that is very repetitve

include("response.jl")
comments = [
    response("This is some test content  It s very cool an content like", "Test Name", " 1 mo. ago", "Defualt.png", 5, 5, [response("Some more very cool conten, which happens to be a comment.", "Comment 1", "0.5mo. ago", "Defualt.png", 1, 0, [response("Some more very cool conten, which happens to be a comment, but the second edition.", "Comment 2.0", "0.4mo. ago", "Defualt.png", 1, 0, nothing)])]),
    response("Some more very cool content", "Name 2", "0.5mo. ago", "Defualt.png", 1, 0, nothing)
]


function generateResponse(i::response)
    temp = 
"<div style=\"display: flex;\">
    <div>
        <div><img src=\"assets/images/profileImages/$(i.pfp)\" style=\"height: 32px; border-radius: 50%; width: 32px; margin-right: 10px;\"></div>
    </div>
    <div style=\"display: flex; color: white; font-size: 14px;\">
        <div>
            <div style=\"display: flex; align-items: center; flex-direction: row;\">
                <div style=\"display: flex; align-items: center;\">
                    <div style=\"font-size: 12px;\">$(i.name)</div>
                    <div style=\"padding: 5px; color: rgb(139, 162, 173); font-size: 12px;\">•</div>
                    <div style=\"color: rgb(139, 162, 173); font-size: 12px;\">$(i.date)</div>
                    <div style=\"padding: 5px; color: rgb(139, 162, 173); font-size: 12px;\">•</div>
                </div>
            </div>
            <p style=\"padding-top: 5px; margin: 0px; padding-bottom: 5px;\">$(i.content)</p>
            <div style=\"display: flex; align-items: center; margin: 0px; padding-bottom: 5px;\">
                <div class=\"interactionButtons\" style=\"height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;\"><img src=\"assets/images/symbols/upVotePad.svg\" class=\"upArrowColor\" style=\"height: 32px; position: absolute; width: 32px;\"></div>
                <div style=\"font-size: 12px;\">$(i.upVotes)</div>
                <div class=\"interactionButtons\" style=\"height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;\"><img src=\"assets/images/symbols/downVotePad.svg\" class=\"downArrowColor\" style=\"height: 32px; position: absolute; width: 32px;\"></div>
                <div style=\"display: flex; align-items: center;\">
                    <div class=\"interactionButtons\" style=\"height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;\"><img src=\"assets/images/symbols/comments.svg\" style=\"height: 32px; position: absolute; width: 32px;\"></div>
                    <div style=\"font-size: 12px;\">Reply</div>
                </div>
            </div>
        </div>
    </div>
</div>"

    return temp
end

function generateResponses(comments::Array{response})
    tempArr = []

    for comment in comments 
        push!(tempArr,
            generateResponse(comment)
        )
        if !isnothing(comment.responses) 
            temp = generateResponses(comment.responses)

            for reps in temp 
                push!(tempArr,
"<div style=\"padding-left: 50px;\">
    $(reps)
</div>"
                )
            end
        end
    end

    return tempArr
end

print(join(generateResponses(comments)))