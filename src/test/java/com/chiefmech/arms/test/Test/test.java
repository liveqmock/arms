package com.chiefmech.arms.test.Test;

public class test {
	public static void main(String[] args) {
		String statusChain = "|aaa|qw|123";
		if (statusChain == null) {
			statusChain = "";
		}
		String preStatus = "";
		String preStatusChain = "";
		if (statusChain.lastIndexOf('|') != -1) {
			preStatusChain = statusChain.substring(0,
					statusChain.lastIndexOf('|'));
			preStatus = preStatusChain.substring(preStatusChain
					.lastIndexOf('|') + 1);
		}

		System.out.println(preStatusChain + "\n" + preStatus);
	}
}
