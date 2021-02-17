rendering
renderHeaderOn: html
	html div class: 'header'; with: [
		html ukContainer: [
			html div: [
				html image
					class: 'portalLogo';
					url: '/site/images/logo_321clip.svg'
			].
			html span class: 'menu'; with: [
				html anchor
					url: '#projectInfo';
					sT: 'portal:menu:project'.
				html anchor
					url: '#patronage';
					sT: 'portal:menu:patronage'.
			].
		
		]]