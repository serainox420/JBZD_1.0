.class public abstract Lnet/gotev/uploadservice/a/a;
.super Ljava/lang/Object;
.source "BodyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Ljava/io/InputStream;Lnet/gotev/uploadservice/a/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener MUST not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    sget v0, Lnet/gotev/uploadservice/UploadService;->f:I

    new-array v0, v0, [B

    .line 48
    :goto_0
    invoke-interface {p2}, Lnet/gotev/uploadservice/a/a$a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/a/a;->a([BI)V

    .line 50
    invoke-virtual {p0}, Lnet/gotev/uploadservice/a/a;->a()V

    .line 51
    invoke-interface {p2, v1}, Lnet/gotev/uploadservice/a/a$a;->a(I)V

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public abstract a([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
