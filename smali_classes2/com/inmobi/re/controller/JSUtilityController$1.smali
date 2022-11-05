.class Lcom/inmobi/re/controller/JSUtilityController$1;
.super Landroid/content/BroadcastReceiver;
.source "JSUtilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/controller/JSUtilityController;->registerBroadcastListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSUtilityController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/JSUtilityController;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/inmobi/re/controller/JSUtilityController$1;->a:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 159
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 160
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 161
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$1;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->a:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 165
    const/16 v2, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 167
    iget-object v0, p0, Lcom/inmobi/re/controller/JSUtilityController$1;->a:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSUtilityController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "download failed"

    const-string v2, "storePicture"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/16 v2, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0
.end method
