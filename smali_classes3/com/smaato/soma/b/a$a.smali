.class Lcom/smaato/soma/b/a$a;
.super Landroid/os/AsyncTask;
.source "CloseButtonImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/b/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/b/a;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/smaato/soma/b/a$a;->a:Lcom/smaato/soma/b/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/smaato/soma/b/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/b/a$a$1;-><init>(Lcom/smaato/soma/b/a$a;[Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/smaato/soma/b/a$a$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 196
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/b/a$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
