.class public final Lokio/k;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lokio/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/k;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lokio/q;)Lokio/d;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lokio/l;

    invoke-direct {v0, p0}, Lokio/l;-><init>(Lokio/q;)V

    return-object v0
.end method

.method public static a(Lokio/r;)Lokio/e;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lokio/m;

    invoke-direct {v0, p0}, Lokio/m;-><init>(Lokio/r;)V

    return-object v0
.end method

.method public static a()Lokio/q;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lokio/k$3;

    invoke-direct {v0}, Lokio/k$3;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)Lokio/q;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lokio/s;

    invoke-direct {v0}, Lokio/s;-><init>()V

    invoke-static {p0, v0}, Lokio/k;->a(Ljava/io/OutputStream;Lokio/s;)Lokio/q;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lokio/s;)Lokio/q;
    .locals 2

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lokio/k$1;

    invoke-direct {v0, p1, p0}, Lokio/k$1;-><init>(Lokio/s;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lokio/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lokio/k;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lokio/k;->a(Ljava/io/OutputStream;Lokio/s;)Lokio/q;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lokio/a;->sink(Lokio/q;)Lokio/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lokio/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/k;->a(Ljava/io/InputStream;)Lokio/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lokio/r;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lokio/s;

    invoke-direct {v0}, Lokio/s;-><init>()V

    invoke-static {p0, v0}, Lokio/k;->a(Ljava/io/InputStream;Lokio/s;)Lokio/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lokio/s;)Lokio/r;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lokio/k$2;

    invoke-direct {v0, p1, p0}, Lokio/k$2;-><init>(Lokio/s;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Lokio/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/k;->a(Ljava/io/OutputStream;)Lokio/q;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Lokio/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-static {p0}, Lokio/k;->c(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lokio/k;->a(Ljava/io/InputStream;Lokio/s;)Lokio/r;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lokio/a;->source(Lokio/r;)Lokio/r;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)Lokio/a;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lokio/k$4;

    invoke-direct {v0, p0}, Lokio/k$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lokio/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/k;->a(Ljava/io/OutputStream;)Lokio/q;

    move-result-object v0

    return-object v0
.end method
