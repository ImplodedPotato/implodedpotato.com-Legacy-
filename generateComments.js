function generateComments() {
    fetch('https://implodedpotato.com/responses.json')
        .then(response => response.json())
        .then(data => {
            document.getElementById("responses").innerHTML = generateResponses(data.responses)
        })
        .catch(error => console.error('Error loading JSON:', error));
}

function generateResponse(i) {
    temp = 
`<div style="display: flex;">
    <div>
        <div><img src="assets/images/profileImages/${i.pfp}" style="height: 32px; border-radius: 50%; width: 32px; margin-right: 10px;"></div>
    </div>
    <div class="color: #D7E5E5;" style="display: flex; font-size: 14px;">
        <div>
            <div style="display: flex; align-items: center; flex-direction: row;">
                <div style="display: flex; align-items: center;">
                    <div style="font-size: 12px; color: white;">${i.name}</div>
                    <div style="padding: 5px; color: rgb(139, 162, 173); font-size: 12px;">•</div>
                    <div style="color: rgb(139, 162, 173); font-size: 12px;">${i.date}</div>
                    <div style="padding: 5px; color: rgb(139, 162, 173); font-size: 12px;">•</div>
                </div>
            </div>
            <p style="padding-top: 5px; margin: 0px; padding-bottom: 5px;">${i.content}</p>
            <div style="display: flex; align-items: center; margin: 0px; padding-bottom: 5px;">
                <div class="interactionButtons" style="height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;"><img src="assets/images/symbols/upVotePad.svg" class="upArrowColor" style="height: 32px; position: absolute; width: 32px;"></div>
                <div style="font-size: 12px;">${i.likes}</div>
                <div class="interactionButtons" style="height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;"><img src="assets/images/symbols/downVotePad.svg" class="downArrowColor" style="height: 32px; position: absolute; width: 32px;"></div>
                <div style="display: flex; align-items: center;">
                    <div class="interactionButtons" style="height: 32px; display: flex; align-items: center; border-radius: 50%; width: 32px; justify-content: center;"><img src="assets/images/symbols/comments.svg" style="height: 32px; position: absolute; width: 32px;"></div>
                    <div style="font-size: 12px;">Reply</div>
                </div>
            </div>
        </div>
    </div>
</div>`;

    return temp;
}

function generateResponses(comments) {
    let html = "";


    for (let comment of comments) {
        html += generateResponse(comment);

        console.log(comment)
        if (comment.comments && comment.comments.length > 0) {
            const nestedHTML = generateResponses(comment.comments);
            html += `<div style="padding-left: 40px;">${nestedHTML}</div>`;
        }
    }

    return html;
}