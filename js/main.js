// import your packages here
import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    // stub * just a place for non-component-specific stuff
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone horribly, horribly wrong");
    }

    function handleDataSet(data) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in data) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${data[user].avatar}`;
            currentUserText[2].textContent = data[user].name;
            currentUserText[3].textContent = data[user].lineup;
            currentUserText[4].textContent = data[user].description;
            currentUserText[5].textContent = data[user].price;
            currentUserText[6].textContent = data[user].engine_architecture;
            currentUserText[7].textContent = data[user].transmission;

            // add this new user to the view
            userSection.appendChild(currentUser);
        }
    }

    function retrieveProjectInfo() {
        // test for an ID
        debugger;
        console.log(this.id);

        fetchData(`./includes/index.php?id=${this.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].avatar}`;
            currentUserText[1].id = thumbs[user].id;
            // add this new user to the view
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));




    let vue_vm = new Vue({

        data: {
            lineup1: "3 Door",
            lineup2: "Clubman",
            lineup3: "Convertible",
            lineup4: "Countryman",
            removeAformat: true,
            showBioData: false,

            // all car data shows up in vue tab, but only the avatar is shown
            cars: []
        },

        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");
            
            fetchData("./includes/index.php")
                .then(data => {
                    data.forEach(car => this.cars.push(car));
                })
                .catch(err => console.error(err));            
        },

        updated: function() {console.log('Vue just updated the DOM');},

        methods: {
            logClicked() {console.log("clicked on a list item");},

            click3Door() {console.log("clicked on the 3 Door car");},
            clickClubman() {console.log("clicked on the Clubman car");},
            clickConvertible() {console.log("clicked on the Convertible car");},
            clickCountryman() {console.log("clicked on the Countryman car");},

            showCarData(target) {
                console.log('clicked to view car bio data', target, target.name);

                // toggle the property between true and false using a ternary statement
                this.showBioData = this.showBioData ? false : true;

                // make the selected prof's data visible
                this.currentProfData = target;
            },            

            removeCar(target) {
                // remove this car from the cars array
                console.log('clicked to remove prof', target, target.name);

                // make the selected prof's data visible
                // this.professors.splice(this.professors.indexOf(target), 1);
                this.$delete(this.professors, target);
            }
        },
    }).$mount("#app");


})();