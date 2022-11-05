.class Lcom/smaato/soma/b/a$a$1;
.super Lcom/smaato/soma/l;
.source "CloseButtonImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/b/a$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/b/a$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/b/a$a;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/smaato/soma/b/a$a$1;->b:Lcom/smaato/soma/b/a$a;

    iput-object p2, p0, Lcom/smaato/soma/b/a$a$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    .line 201
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/smaato/soma/b/a$a$1;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/smaato/soma/b/a$a$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
