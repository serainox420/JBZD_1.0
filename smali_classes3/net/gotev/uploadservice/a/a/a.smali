.class public Lnet/gotev/uploadservice/a/a/a;
.super Lnet/gotev/uploadservice/a/a;
.source "HurlBodyWriter.java"


# instance fields
.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/gotev/uploadservice/a/a;-><init>()V

    .line 17
    iput-object p1, p0, Lnet/gotev/uploadservice/a/a/a;->a:Ljava/io/OutputStream;

    .line 18
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
    .line 32
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 33
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
    .line 22
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 23
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
    .line 27
    iget-object v0, p0, Lnet/gotev/uploadservice/a/a/a;->a:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 28
    return-void
.end method
