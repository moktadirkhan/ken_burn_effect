import 'package:flutter/material.dart';

import 'kenburns/kenburns.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*
              Container(
                height: 300,
                child: KenBurns(
                  child: Image.network(
                    "https://www.photo-paysage.com/?file=pic_download_link/picture&pid=3100",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              */
              Container(
                height: 300,
                child: KenBurns.multiple(
                  maxAnimationDuration: Duration(seconds: 4),
                  childLoop: 1,
                  maxScale: 2,
                  // childrenFadeDuration: Duration(seconds: 1),
                  minAnimationDuration: Duration(seconds: 3),
                  children: <Widget>[
                    Image.network(
                      "https://cdn.hasselblad.com/hasselblad-com/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg?auto=format&q=97",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://cdn.getyourguide.com/img/location_img-59-1969619245-148.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://www.theglobeandmail.com/resizer/vq3O7LI3hvsjTP2N0m9NwU4W3Eg=/1500x0/filters:quality(80)/arc-anglerfish-tgam-prod-tgam.s3.amazonaws.com/public/4ETF3GZR3NA3RDDW23XDRBKKCI",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://cdn.hasselblad.com/hasselblad-com/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg?auto=format&q=97",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://cdn.getyourguide.com/img/location_img-59-1969619245-148.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://www.theglobeandmail.com/resizer/vq3O7LI3hvsjTP2N0m9NwU4W3Eg=/1500x0/filters:quality(80)/arc-anglerfish-tgam-prod-tgam.s3.amazonaws.com/public/4ETF3GZR3NA3RDDW23XDRBKKCI",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ffmpeg -i 1.jpg -i 2.jpg -i 3.jpg 
//   -filter_complex "color=c=black:r=60:size=1280x800:d=10[black];
//   [0:v]format=pix_fmts=yuva420p,crop=w=2*floor(iw/2):h=2*floor(ih/2),zoompan=z='if(eq(on,1),1,zoom+0.000417)':x='0':y='ih-ih/zoom':fps=60:d=60*4:s=1280x800,crop=w=1280:h=800:x='(iw-ow)/2':y='(ih-oh)/2',fade=t=in:st=0:d=1:alpha=0,fade=t=out:st=3:d=1:alpha=1,setpts=PTS-STARTPTS[v0];[1:v]format=pix_fmts=yuva420p,crop=w=2*floor(iw/2):h=2*floor(ih/2),pad=w=9600:h=6000:x='(ow-iw)/2':y='(oh-ih)/2',zoompan=z='if(eq(on,1),1,zoom+0.000417)':x='0':y='0':fps=60:d=60*4:s=1280x800,fade=t=in:st=0:d=1:alpha=1,fade=t=out:st=3:d=1:alpha=1,setpts=PTS-STARTPTS+1*3/TB[v1];[2:v]format=pix_fmts=yuva420p,crop=w=2*floor(iw/2):h=2*floor(ih/2),zoompan=z='if(eq(on,1),1,zoom+0.000417)':x='0':y='0':fps=60:d=60*4:s=1600x800,crop=w=1280:h=800:x='(iw-ow)/2':y='(ih-oh)/2',fade=t=in:st=0:d=1:alpha=1,fade=t=out:st=3:d=1:alpha=0,setpts=PTS-STARTPTS+2*3/TB[v2];[black][v0]overlay[ov0];[ov0][v1]overlay[ov1];[ov1][v2]overlay=format=yuv420"
//   -c:v libx264 out.mp4
