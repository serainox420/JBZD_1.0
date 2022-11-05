.class Lnet/gotev/uploadservice/b/b;
.super Ljava/lang/Object;
.source "FileSchemeHandler.java"

# interfaces
.implements Lnet/gotev/uploadservice/b/c;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lnet/gotev/uploadservice/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/gotev/uploadservice/b/b;->a:Ljava/io/File;

    .line 23
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lnet/gotev/uploadservice/b/b;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/gotev/uploadservice/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/gotev/uploadservice/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/gotev/uploadservice/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
