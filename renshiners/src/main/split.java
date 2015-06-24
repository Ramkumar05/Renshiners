package main;

import java.util.Vector;

public class split {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String str = "The film's music has been composed by AR Rahman, who has sung the climax song in the Rajini starrer.The Oscar winner has worked in many of Rajini's films and most of the songs have turned out to be big hits.The actor's last release Endhiran had songs composed by Rahman and received appreciation from fans. Expectations are high for Kochadaiiyaan audio, which is set to be launched on 9 March at the Sathyam Cinemas in Chennai.The trailer of the film will be released on the same day.~Directed by Soundarya Rajini, Kochadaiiyaan is an historical drama that has Deepika Padukone "+
			 			"pairing opposite the superstar. The film will mark the Tamil debut of the actress, who is currently the toast of Bollywood with back-to-back films~.Kochadaiiyaan, produced by Eros International and Media One Global Entertainment, is said to be one of the costliest films ever made in India. It is billed as India first performance capture photorealistic film, a technology that has been used in Hollywood films like 'Tintin' and 'Avatar'.~The Rajini starrer has been in the production for more than a year. The film was expected to hit the screens last year,but was delayed due to the post-production work."+
						"It is gearing up for a massive release this summer, though the exact date is yet to be announced.";
		char a;
		int count=0;
		for(int i=0;i<str.length();i++)
		{
			
			if(str.charAt(i)=='~')
			{
				count++;
			}
			
		}
		String part1="";
		System.out.println("Number of ~ symbol="+count);
		count=count+1;
		Vector v1=new Vector();
		System.out.println("Number of paragraphs="+count);
		String[] parts = str.split("~");
		for(int i=0;i<count;i++)
		{
			part1 = parts[i];
			v1.add(part1);
		}
		String[] para=new String[v1.size()];
		for(int i=0;i<v1.size();i++)
		{
			para[i]=(String)v1.get(i);
		}
		int j=1;
		for(int i=0;i<v1.size();i++)
		{
			System.out.println("para"+j+"="+para[i]);
			j++;
		}
	}

}
