.class Lnet/gotev/uploadservice/okhttp/c$1;
.super Lokhttp3/RequestBody;
.source "OkHttpStackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/okhttp/c;->a(Lnet/gotev/uploadservice/a/b$a;)Lnet/gotev/uploadservice/ServerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/gotev/uploadservice/a/b$a;

.field final synthetic b:Lnet/gotev/uploadservice/okhttp/c;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/okhttp/c;Lnet/gotev/uploadservice/a/b$a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/c$1;->b:Lnet/gotev/uploadservice/okhttp/c;

    iput-object p2, p0, Lnet/gotev/uploadservice/okhttp/c$1;->a:Lnet/gotev/uploadservice/a/b$a;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c$1;->b:Lnet/gotev/uploadservice/okhttp/c;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/c;->a(Lnet/gotev/uploadservice/okhttp/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c$1;->b:Lnet/gotev/uploadservice/okhttp/c;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/c;->b(Lnet/gotev/uploadservice/okhttp/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/c$1;->b:Lnet/gotev/uploadservice/okhttp/c;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/c;->b(Lnet/gotev/uploadservice/okhttp/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Lokio/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lnet/gotev/uploadservice/okhttp/a;

    invoke-direct {v0, p1}, Lnet/gotev/uploadservice/okhttp/a;-><init>(Lokio/d;)V

    .line 107
    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/c$1;->a:Lnet/gotev/uploadservice/a/b$a;

    invoke-interface {v1, v0}, Lnet/gotev/uploadservice/a/b$a;->a(Lnet/gotev/uploadservice/a/a;)V

    .line 108
    invoke-virtual {v0}, Lnet/gotev/uploadservice/okhttp/a;->a()V

    .line 109
    return-void
.end method
