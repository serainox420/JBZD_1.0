.class public Lcom/smaato/soma/internal/c/g$a;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/c/g;

.field private b:Landroid/media/MediaScannerConnection;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/internal/c/g;Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lcom/smaato/soma/internal/c/g$a;->a:Lcom/smaato/soma/internal/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p3, p0, Lcom/smaato/soma/internal/c/g$a;->c:Ljava/io/File;

    .line 98
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/c/g$a;->b:Landroid/media/MediaScannerConnection;

    .line 99
    iget-object v0, p0, Lcom/smaato/soma/internal/c/g$a;->b:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 100
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smaato/soma/internal/c/g$a;->b:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/smaato/soma/internal/c/g$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smaato/soma/internal/c/g$a;->b:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 109
    return-void
.end method
