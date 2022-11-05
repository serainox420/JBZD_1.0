.class final Lpl/aprilapps/easyphotopicker/c$1;
.super Ljava/lang/Object;
.source "EasyImageFiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lpl/aprilapps/easyphotopicker/c$1;->a:Ljava/util/List;

    iput-object p2, p0, Lpl/aprilapps/easyphotopicker/c$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lpl/aprilapps/easyphotopicker/c$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 65
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lpl/aprilapps/easyphotopicker/c$1;->b:Landroid/content/Context;

    invoke-static {v5}, Lpl/aprilapps/easyphotopicker/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 70
    invoke-static {v0, v4}, Lpl/aprilapps/easyphotopicker/c;->a(Ljava/io/File;Ljava/io/File;)V

    .line 71
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lpl/aprilapps/easyphotopicker/c$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lpl/aprilapps/easyphotopicker/c;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 77
    return-void
.end method
