# This IS NOT used in the website
# Only beforehand to generate the html for the comments
# Sense that is very repetitve

include("response.jl")
comments = [
    response(
        "Well good news for you lad, I just made a pizza-pizza pie last weekend. It was so mouthwatering that I feel almost obligated to inform your misguided soul of the great bask of a well prepared pizza pie. <br><br>For the dough you’ll need:<br>3 1/2 c flour, 1 Tbs sugar, 2 1/4 tsp yeast, 2 tsp salt, 1 1/2 c warm water (45˚C), 2Tbs olive oil. <br><br>For the sauce you’ll need:<br>1 can (28oz.) whole peeled tomatoes, 2 minced garlics, 1tsp olive oil, 1tsp dried oregano, 1tsp dried basil, 1/2tsp sugar, 1/2tsp salt, 1/4tsp, 1 tbs tomato paste<br><br>Then you will need:<br>2 c. Mozzarella cheese, 1c. pepperoni, 1 green pepper, 1c. mushrooms, 1/2 c. sliced black olives, and 2 1/2 tbs chopped chives, 1 1/2 tsp olive oil, 1/4 tsp dried oregano, and 8 fresh basil leaves<br><br>For a pizza that you wouldn’t just buy, you would get out of your way to make yourself, you must follow the following instructions: <br><br>Step 1: Before you stat cooking anything, you must retrieve all of the materials by any means necessary, legally you should just go to a supermarket and pay your hard-earned money on some of dozen ingredients above, but I’m not one to tell others what to do. <br><br>Step 2: Next you must prepare the dough. As you’ve already obtained the ingredients, you need to activate the yeast. Combine some sugar and yeast with warm water, stirring gently, and letting it sit util it becomes frothy, 5-10min. You may than begin on mixing the dough in a large bowl through combining the flour and salt. Then pouring the yeast mixture and olive oil in a well in the center of the flour. Stir the dough until it’s too stiff to stir with your wooden spoon, then knead it for about 10 minutes, adding flour as needed to make it not so sticky. Place the dough I a lightly oiled bowl and let it rise util fouled in size, about 1 - 1.5 hrs. Shape into balls, depending on how many pizza you desire, and let rest for another 10-15 minutes. You may begin rolling out the dough in preparation of the toppings. <br><br>Step 3: For the sauce, you need to empty the tomatoes into a bowl and crush the living daylights out of them. You then need to heat olive oil over medium heat and add the garlic, cook until fragrant, but not browned, about 1 minute. Your may then combine all the ingredients listed above for the sauce. Finally simmer on low for 20-30 minutes, stirring occasionally. <br><br>Step 4: Spread the sauce on the dough, add the mozzarella, then add the pepperoni, green peppers, mushrooms olives, and other seasonings. Your will then bake you pizza that’ll make you have an orgy over it’s greatness until the crust is a sexy golden brown, and the cheese in bubbly and slightly browned. <br><br>Step 5: Bask in the glory of this legendary one-of-a-kind pie. Then invite only your closets allies and feast. ", "John Stewart", "6.9 mo. ago", "Defualt.png", 69, 3, 
        [
            response(
                "Looks ok, but what the 1 cup o whole peeled tomatoes mean? 1oz? 12oz? 128oz? This isn’t very clear. I guess all just take a random number generator and use that. (I rolled to use 28)", "MachoPop", "4.2mo. ago", "Defualt.png", 7, 0, nothing
            )
            response(
                "Thats a splendid pizza pie, but I’m just worried about the potential advertisement of this godly recipe.", "Julia Pi", "3.14", "Defualt.png", 314, 3, 
                [
                    response(
                        "I know right. Advertising causes therapy to even the most agile of people. Always pushing us to buy every minute and every second.", "ThetaTRON", "5 days ago", "Defualt.png", 5, 0, nothing
                    )
                ]
            )
        ]
    ),
    response(
        "My adjacent uncle in law, who happens to be 1/6 Italian and 3/4 New Yorker, had a great recipe for a chicken stew. Unfortunately, in 1978, he needed therapy, caused by advertising. This therapy, of the electric variation, got him yapping about some ballgame in the refrigerator, the door closing, lights going out, and butter getting hard. Oh well. At least we have this wonderful pizza pie recipe with pepperoni and green pepper, mushrooms, olives, chives, that makes you buy every minute and second.", "Burt", "5.3mo. ago", "Defualt.png", 8, 1, 
        [
            response("Adjacent uncle-in-law is crazy. I envy for this mutt of Italian, New Yorker. God knows how many people he’s bitten under the influence of advertising.", "Ernie", "16 hrs ago", "Defualt.png", 999, 0, nothing)
        ]
    )
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