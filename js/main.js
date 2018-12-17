(()=> {
    const vm = new Vue({
        el: '#app',

        data: {
            mainmessage : "WELCOME TO MY VIDEO APP!",
            videodata : [],
            singlemoviedata : [],

            videotitle : "",
            videosource : "",
            videodescription : "",
            videogenre: "",
            synopsis: "",
            image1 : "",
            image2 : "",
            showDetails : false,
            showLightbox : false
            //showLightbox : false    //trocar
        },

        created : function() {
            this.fetchMovieData(null);
        },

        methods : {

            loadMovie(e) {
                // stub
                e.preventDefault();

                dataKey = e.currentTarget.getAttribute('href');

                currentData = this.videodata.filter(video => video.vid_path === dataKey);

                this.videotitle = currentData[0].vid_name;
                this.videodescription = currentData[0].vid_desc;
                this.videosource = dataKey;

                this.showDetails = true;

                setTimeout(function() { window.scrollTo(0, 1200); }, 500);
            },

            scrollBackUp() {
                window.scrollTo(0, 0);
                this.showDetails = false;
                this.videsource = "";
            },

            closeLightbox() {
                this.showLightbox = false;
            },

            fetchMovieData(movie) {
                url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';

                fetch(url)
                .then(res => res.json())
                .then(data => {
                    if (movie) {
                        console.log(data);
                        this.singlemoviedata = data;
                    } else {
                        console.log(data);
                        this.videodata = data;
                    }
                })
                .catch(function(error) {
                    console.log(error);
                });
            },  

            fetchMore(e) {

                var details = e.currentTarget.dataset.video;
                //console.log(details);


                url = details ? `./includes/index.php?details=${details}` : './includes/index.php';

                fetch(url) 
                .then(res => res.json())
                .then(data => {
                  console.log(data);

                  this.image1 = data[0].details_image1;
                  this.image2 = data[0].details_image2;
                  this.synopsis = data[0].details_synopsis;

                  this.showLightbox = true;

                })
                .catch(function(error) {
                    console.log(error);
                });
            }
        }
    });
})();