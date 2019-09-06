import 'package:flutter/material.dart';

//void main() =>
//    runApp(
//      new MaterialApp(
//        title: "",
//        home: new ProductList(
//            products: new List.generate(
//                30, (index) => new Product('商品$index', '这是一个商品详情 $index'))),
//      ),
//    );
void main() => runApp(new MaterialApp(
      title: "",
      home: new FirstPageAnim(),
    ));

class FirstPageAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("跳转页面获取数据"),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: "第一张图片",
          child: new Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567694450536&di=02c3e954b423ebf74ed8e7019f957a94&imgtype=0&src=http%3A%2F%2Fpic1.nipic.com%2F2008-12-05%2F200812584425541_2.jpg"),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new SecontPageAnim()));
        },
      ),
    );
  }
}

class SecontPageAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("跳转页面获取数据"),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: "第二张图片",
          child: new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567694450536&di=633edc7203d1548060bd4aed085b8a9b&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F28ea2e5cf17173f84ef74064e95627cc3ba75fe627e71-hKNgS4_fw658",
            fit: BoxFit.fill,
            scale: 0.9,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("跳转页面获取数据"),
      ),
      body: new Center(
        child: new RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        _navigateToSecondPage(context);
      },
      child: new Text("选择一个选项，任意选项"),
    );
  }

  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SecondPage()));
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text("$result")));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("选择一条数据"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pop(context, "西红柿");
                },
                child: new Text("西红柿"),
              ),
            ),
            new Padding(
              padding: EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pop(context, "土豆");
                },
                child: new Text("土豆"),
              ),
            ),
            new Padding(
              padding: EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pop(context, "小米辣");
                },
                child: new Text("小米辣"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("商品列表"),
      ),
      body: new ListView.builder(
          itemCount: this.products.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(this.products[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            new ProductDectail(product: this.products[index])));
              },
            );
          }),
    );
  }
}

class ProductDectail extends StatelessWidget {
  final Product product;

  const ProductDectail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${this.product.title}"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(16.0),
        child: new Text("${this.product.description}"),
      ),
    );
  }
}

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}
