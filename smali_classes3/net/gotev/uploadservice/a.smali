.class public final Lnet/gotev/uploadservice/a;
.super Ljava/lang/Object;
.source "ContentType.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 36
    if-ltz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 40
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    :cond_0
    const-string v0, "application/octet-stream"

    .line 54
    :cond_1
    :goto_1
    return-object v0

    .line 44
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 48
    const-string v0, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    const-string v0, "video/mp4"

    goto :goto_1

    .line 51
    :cond_3
    const-string v0, "application/octet-stream"

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
