.class public abstract Lnet/gotev/uploadservice/c;
.super Lnet/gotev/uploadservice/h;
.source "HttpUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lnet/gotev/uploadservice/c",
        "<TB;>;>",
        "Lnet/gotev/uploadservice/h",
        "<TB;>;"
    }
.end annotation


# instance fields
.field protected final a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lnet/gotev/uploadservice/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-direct {v0}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/c;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    .line 39
    iget-object v0, p0, Lnet/gotev/uploadservice/c;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/c;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 40
    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify either http:// or https:// as protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/gotev/uploadservice/c;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lnet/gotev/uploadservice/c;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {v0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadTaskParameters;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lnet/gotev/uploadservice/c;->c()Lnet/gotev/uploadservice/h;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/c;

    return-object v0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/h;->a(Landroid/content/Intent;)V

    .line 51
    const-string v0, "httpTaskParameters"

    iget-object v1, p0, Lnet/gotev/uploadservice/c;->a:Lnet/gotev/uploadservice/HttpUploadTaskParameters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    return-void
.end method
