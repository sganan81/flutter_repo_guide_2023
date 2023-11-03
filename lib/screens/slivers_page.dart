import 'package:flutter/material.dart';

class SliversScreen extends StatelessWidget {

   
  const SliversScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          _SliverAppBar(size),
          _SliverBody(size),
          const _SliverGrid()
        ],
      )
    );
  }
}

class _SliverGrid extends StatelessWidget {
  const _SliverGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250.0,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15.0,
        childAspectRatio: 4.0,
        mainAxisExtent: 200
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(            
            alignment: Alignment.center,
            color: Colors.greenAccent[100 * (index % 9)],
            child: Text('grid item $index'),
          );
        },
        childCount: 20,
      ),
    );
  }
}

class _SliverBody extends StatelessWidget {
  final Size size;

  const _SliverBody(
    this.size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            width: size.width * 0.30,
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const FadeInImage(
                    height: 150,
                    width: 100,
                    placeholder: AssetImage('assets/images/loading.gif'), 
                    image: NetworkImage('https://via.placeholder.com/100x150'),
                    fit: BoxFit.cover, 
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: size.width * 0.65
                  ),
                  child: Container(
                    height: 150,                    
                    alignment: Alignment.center,                    
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Text(
                      'Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,                      
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    )
                  ),
                ),
              ],
            ),
          ),          
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
          Container(
            margin: const EdgeInsets.only(top:15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text('Sit qui officia minim incididunt nostrud ad proident Lorem voluptate. Et dolor quis pariatur dolore voluptate Lorem anim incididunt. Adipisicing esse velit mollit id. Adipisicing reprehenderit mollit elit nisi mollit excepteur reprehenderit ullamco commodo ipsum et.')
          ),
        ]
      )
    );
  }
}

class _SliverAppBar extends StatelessWidget {
  const _SliverAppBar(Size size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 10,
      title: const Text('Título primario del AppBar'),
      titleSpacing: 30,
      leading: GestureDetector(
        child: const Icon(Icons.arrow_back_ios),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      ),
      leadingWidth: 50,      
      centerTitle: true,
      floating: false,
      pinned: true,
      snap: false,
      toolbarHeight: 100,
      expandedHeight: 150,
      stretch: true,      
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,        
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          color: Colors.black26,
          child: const Text('title flex', style: TextStyle(fontSize: 13),),
        ),
        background: const FadeInImage(
          width: double.infinity,
          height: 250,
          placeholder: AssetImage('assets/images/loading.gif'), 
          image: NetworkImage('https://via.placeholder.com/400x250'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}