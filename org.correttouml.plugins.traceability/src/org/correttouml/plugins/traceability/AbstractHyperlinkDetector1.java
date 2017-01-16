package org.correttouml.plugins.traceability;

import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;

public class AbstractHyperlinkDetector1 extends AbstractHyperlinkDetector implements IHyperlinkDetector {
	@Override
	public IHyperlink[] detectHyperlinks(ITextViewer textViewer,
			IRegion region, boolean canShowMultipleHyperlinks) {

		ITextFileBufferManager bufferManager = FileBuffers.getTextFileBufferManager();
		IPath path=bufferManager.getTextFileBuffer(textViewer.getDocument()).getLocation();
		path=path.removeLastSegments(1);
		path=path.append("model.mappings");
		IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot(); 
		IFile file=workspaceRoot.getFile(path);
		File javafile = file.getRawLocation().makeAbsolute().toFile();

		String contents = textViewer.getDocument().get();
		Pattern p = Pattern.compile("\\$[A-Z|a-z|0-9|^|_]+");
		Matcher m = p.matcher(contents);
		while (m.find()) {
			if (m.start() <= region.getOffset() && m.end() >= region.getOffset() + region.getLength()) {

				Region hyperlinkRegion = new Region(m.start(), m.end()-m.start());
				IHyperlink[] ihl= new IHyperlink[]{new UmlElementHyperlink(m.group(), hyperlinkRegion)};
				((UmlElementHyperlink)ihl[0]).setMappingsFile(javafile);
				return ihl;
			}
		}

		return null;
	}

}