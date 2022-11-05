.class final Lpl/jbzd/app/c/b$3;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lpl/jbzd/app/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/c/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lpl/jbzd/app/c/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lpl/jbzd/app/c/b$a;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lpl/jbzd/app/c/b$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lpl/jbzd/app/c/b$3;->b:Lpl/jbzd/app/c/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v1, "mime_type"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lpl/jbzd/app/c/b$3;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lpl/jbzd/app/c/b$3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 164
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/c/b$3;->b:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lpl/jbzd/app/c/b$3;->b:Lpl/jbzd/app/c/b$a;

    invoke-interface {v0, p1}, Lpl/jbzd/app/c/b$a;->a(Ljava/io/File;)V

    .line 167
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lpl/jbzd/app/c/b$3;->b:Lpl/jbzd/app/c/b$a;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lpl/jbzd/app/c/b$3;->b:Lpl/jbzd/app/c/b$a;

    invoke-interface {v0, p1}, Lpl/jbzd/app/c/b$a;->a(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method
