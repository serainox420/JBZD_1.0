.class public abstract Lnet/gotev/uploadservice/h;
.super Ljava/lang/Object;
.source "UploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lnet/gotev/uploadservice/h",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Lnet/gotev/uploadservice/UploadTaskParameters;

.field protected d:Lnet/gotev/uploadservice/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/gotev/uploadservice/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context MUST not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server URL cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    iput-object p1, p0, Lnet/gotev/uploadservice/h;->b:Landroid/content/Context;

    .line 43
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    :cond_3
    sget-object v0, Lnet/gotev/uploadservice/h;->a:Ljava/lang/String;

    const-string v1, "null or empty upload ID. Generating it"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->a(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 51
    :goto_0
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0, p3}, Lnet/gotev/uploadservice/UploadTaskParameters;->b(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 52
    sget-object v0, Lnet/gotev/uploadservice/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new upload request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 53
    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 47
    :cond_4
    sget-object v0, Lnet/gotev/uploadservice/h;->a:Ljava/lang/String;

    const-string v1, "setting provided upload ID"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0, p2}, Lnet/gotev/uploadservice/UploadTaskParameters;->a(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadTaskParameters;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/gotev/uploadservice/j;",
            ">;"
        }
    .end annotation
.end method

.method public a(I)Lnet/gotev/uploadservice/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/UploadTaskParameters;->a(I)Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 129
    invoke-virtual {p0}, Lnet/gotev/uploadservice/h;->c()Lnet/gotev/uploadservice/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lnet/gotev/uploadservice/i;)Lnet/gotev/uploadservice/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/gotev/uploadservice/i;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lnet/gotev/uploadservice/h;->d:Lnet/gotev/uploadservice/i;

    .line 143
    invoke-virtual {p0}, Lnet/gotev/uploadservice/h;->c()Lnet/gotev/uploadservice/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "taskParameters"

    iget-object v1, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lnet/gotev/uploadservice/h;->a()Ljava/lang/Class;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The request must specify a task class!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const-string v1, "taskClass"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/h;->d:Lnet/gotev/uploadservice/i;

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;Lnet/gotev/uploadservice/i;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/gotev/uploadservice/h;->b:Landroid/content/Context;

    const-class v2, Lnet/gotev/uploadservice/UploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/h;->a(Landroid/content/Intent;)V

    .line 67
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lnet/gotev/uploadservice/h;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/h;->c:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lnet/gotev/uploadservice/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 91
    return-object p0
.end method
