.class public Lnet/gotev/uploadservice/e;
.super Lnet/gotev/uploadservice/c;
.source "MultipartUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/gotev/uploadservice/c",
        "<",
        "Lnet/gotev/uploadservice/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnet/gotev/uploadservice/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/gotev/uploadservice/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lnet/gotev/uploadservice/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/e;->f:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/gotev/uploadservice/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-class v0, Lnet/gotev/uploadservice/f;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lnet/gotev/uploadservice/UploadFile;

    invoke-direct {v0, p1}, Lnet/gotev/uploadservice/UploadFile;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadFile;->a()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please specify parameterName value for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    const-string v2, "httpParamName"

    invoke-virtual {v0, v2, p2}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    :cond_2
    iget-object v2, p0, Lnet/gotev/uploadservice/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lnet/gotev/uploadservice/UploadFile;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    .line 101
    sget-object v2, Lnet/gotev/uploadservice/e;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto-detected MIME type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    const-string v1, "httpContentType"

    invoke-virtual {v0, v1, p4}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p3, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    :cond_3
    iget-object v1, p0, Lnet/gotev/uploadservice/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadFile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 112
    sget-object v1, Lnet/gotev/uploadservice/e;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using original file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_1
    const-string v1, "httpRemoteFileName"

    invoke-virtual {v0, v1, p3}, Lnet/gotev/uploadservice/UploadFile;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lnet/gotev/uploadservice/e;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->a(Lnet/gotev/uploadservice/UploadFile;)V

    .line 120
    return-object p0

    .line 104
    :cond_4
    sget-object v2, Lnet/gotev/uploadservice/e;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Type set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_5
    sget-object v1, Lnet/gotev/uploadservice/e;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using custom file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/c;->a(Landroid/content/Intent;)V

    .line 61
    const-string v0, "multipartUtf8Charset"

    iget-boolean v1, p0, Lnet/gotev/uploadservice/e;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1, p2, v0, v0}, Lnet/gotev/uploadservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/e;

    move-result-object v0

    return-object v0
.end method
