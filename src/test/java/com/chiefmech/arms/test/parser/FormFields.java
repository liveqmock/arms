package com.chiefmech.arms.test.parser;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.nodes.TagNode;
import org.htmlparser.tags.FormTag;
import org.htmlparser.tags.InputTag;
import org.htmlparser.tags.TextareaTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class FormFields {

	public static void main(String[] args) throws IOException {
		String directory = "D:/weixin/workspace/arms/src/main/webapp/";
		String[] extensions = {"aspx"};
		List<File> files = (List<File>) FileUtils.listFiles(
				new File(directory), extensions, true);

		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < files.size(); i++) {
			File file = files.get(i);
			sb.append(String.format("---------File %d-----------\n", i));
			sb.append(parseFile(file)).append("\n");
		}

		/*
		 * String filePath =
		 * "D:/weixin/workspace/arms/src/main/webapp/login.aspx"; File file =
		 * new File(filePath); String fieldInfo = parseFile(file);
		 */

		System.out.println(sb.toString());
		FileUtils.writeStringToFile(new File("D:/FormFields.txt"),
				sb.toString());
	}
	private static String parseFile(File file) throws IOException {
		StringBuffer fieldInfo = new StringBuffer();
		fieldInfo.append(file.getPath()).append("\n");

		String content = FileUtils.readFileToString(file);

		NodeList list = null;
		try {
			Parser parser = new Parser(content);
			NodeFilter linkFilter = new NodeClassFilter(FormTag.class);
			list = parser.extractAllNodesThatMatch(linkFilter);
		} catch (ParserException e) {
			fieldInfo.append(e.getMessage()).append("\n");
		}
		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				FormTag nodeForm = (FormTag) list.elementAt(i);
				fieldInfo.append(nodeForm.getFormName()).append("\n");

				NodeList nodeInputLst = nodeForm.getFormInputs();
				if (nodeInputLst != null) {
					int nodeInputSize = nodeInputLst.size();
					for (int j = 0; j < nodeInputSize; j++) {
						InputTag node = (InputTag) nodeInputLst.elementAt(j);
						fieldInfo.append("\t").append(getNodeInfo(node))
								.append("\n");
					}

				}

				NodeList nodeTextareaLst = nodeForm.getFormTextareas();
				if (nodeTextareaLst != null) {
					int nodeTextareaSize = nodeTextareaLst.size();
					for (int j = 0; j < nodeTextareaSize; j++) {
						TextareaTag node = (TextareaTag) nodeTextareaLst
								.elementAt(j);
						fieldInfo.append("\t").append(getNodeInfo(node))
								.append("\n");
					}
				}
			}
		}

		return fieldInfo.toString();
	}

	private static String getNodeInfo(TagNode node) {
		StringBuffer sb = new StringBuffer();

		int MAXLEN = 20;
		String nodeValue = node.getAttribute("value");
		nodeValue = (nodeValue == null) ? "" : nodeValue;
		nodeValue = (nodeValue.length() < MAXLEN) ? nodeValue : nodeValue
				.substring(0, MAXLEN);

		sb.append(node.getTagName()).append(" ")
				.append(node.getAttribute("type")).append("\t\t")
				.append(node.getAttribute("name")).append("\t\t")
				.append(nodeValue);
		return sb.toString();
	}
}
