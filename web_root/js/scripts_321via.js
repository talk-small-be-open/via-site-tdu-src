// JavaScript für 321via

function open321VideoTutorial(language) {
	var lightbox = UIkit.lightboxPanel({
		items: [{source: '/site/video/321via_'+language+'.mp4', type: 'video'}],
		videoAutoplay: true,
		preload: 0,
	});
	
	lightbox.show();

}
