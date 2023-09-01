import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              elevation: 1,
              automaticallyImplyLeading: false,
              snap: false,
              floating: false,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
                centerTitle: false,
                title: const Text(
                  "Saved",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'Dosis',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 8),
              sliver: SliverList.list(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Color(0xffF2AE00).withOpacity(0.4),
                          onTap: () {},
                          onLongPress: () {},
                          child: SizedBox(
                            height: 100,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1620332372374-f108c53d2e03?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80",
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: CircularProgressIndicator(
                                            color: Color(0xffF2AE00),
                                            backgroundColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Royal Ambassador",
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: 'Dosis',
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "Hlaing Township , Yangon",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 15,
                                            color: Color(0xff534F4F),
                                          ),
                                          Text(
                                            "09-87654321",
                                            style: TextStyle(
                                              color: Color(0xff534F4F),
                                              fontFamily: 'Dosis',
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "100000/m",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: 'Dosis',
                                              fontSize: 22,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "3 left",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: 'Dosis',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
