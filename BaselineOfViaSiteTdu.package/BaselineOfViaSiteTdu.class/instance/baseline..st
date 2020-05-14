baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via/src';
				loads: #('default')
		].

		spec package: 'ViaSiteTemplate' with: [
			spec 
				requires: #('Via')].

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #('ViaSiteTemplate' ). ].