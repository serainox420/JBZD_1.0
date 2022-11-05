.class public Lnet/gotev/uploadservice/okhttp/a;
.super Lnet/gotev/uploadservice/a/a;
.source "OkHttpBodyWriter.java"


# instance fields
.field private a:Lokio/d;


# direct methods
.method protected constructor <init>(Lokio/d;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/gotev/uploadservice/a/a;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/a;->a:Lokio/d;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/a;->a:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    .line 34
    return-void
.end method

.method public a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/a;->a:Lokio/d;

    invoke-interface {v0, p1}, Lokio/d;->c([B)Lokio/d;

    .line 24
    return-void
.end method

.method public a([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/a;->a:Lokio/d;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lokio/d;->c([BII)Lokio/d;

    .line 29
    return-void
.end method
