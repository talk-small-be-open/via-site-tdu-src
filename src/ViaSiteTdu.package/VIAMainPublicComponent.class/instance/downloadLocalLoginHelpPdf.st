actions
downloadLocalLoginHelpPdf
	| file |
	file := VIALocalFileReference new
		fileBasePath: (self db propertyAt: #webRootPath);
		fileRelativePath: 'site/downloads';
		fileName: 'login_help.pdf';
		yourself.

	self sendFileToBrowser: file