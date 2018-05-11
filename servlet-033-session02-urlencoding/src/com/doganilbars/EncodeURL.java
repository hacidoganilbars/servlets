package com.doganilbars;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class EncodeURL {
	public static void main(String[] args) {
		String str = "<!@#$haci dogan ilbars>";
		try {
			String encoded = URLEncoder.encode(str, "UTF-8");
			System.out.println("encoded: " + encoded);
			String decoded = URLDecoder.decode(str, "UTF-8");
			System.out.println("decoded: " + decoded);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
