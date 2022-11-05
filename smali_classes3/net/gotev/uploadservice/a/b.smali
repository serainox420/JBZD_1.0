.class public interface abstract Lnet/gotev/uploadservice/a/b;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/a/b$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lnet/gotev/uploadservice/a/b$a;)Lnet/gotev/uploadservice/ServerResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(JZ)Lnet/gotev/uploadservice/a/b;
.end method

.method public abstract a(Ljava/util/List;)Lnet/gotev/uploadservice/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;)",
            "Lnet/gotev/uploadservice/a/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a()V
.end method
