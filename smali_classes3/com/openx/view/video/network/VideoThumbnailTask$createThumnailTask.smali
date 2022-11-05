.class Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;
.super Landroid/os/AsyncTask;
.source "VideoThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/video/network/VideoThumbnailTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "createThumnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/video/network/VideoThumbnailTask;


# direct methods
.method private constructor <init>(Lcom/openx/view/video/network/VideoThumbnailTask;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/video/network/VideoThumbnailTask;Lcom/openx/view/video/network/VideoThumbnailTask$1;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;-><init>(Lcom/openx/view/video/network/VideoThumbnailTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-static {v1}, Lcom/openx/view/video/network/VideoThumbnailTask;->access$100(Lcom/openx/view/video/network/VideoThumbnailTask;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 240
    const-wide/32 v2, 0x1e8480

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 244
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 253
    const-string v0, "NewVideoThumbnailTask"

    const-string v1, "setting Bitmap"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-static {v0}, Lcom/openx/view/video/network/VideoThumbnailTask;->access$200(Lcom/openx/view/video/network/VideoThumbnailTask;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-static {v0}, Lcom/openx/view/video/network/VideoThumbnailTask;->access$300(Lcom/openx/view/video/network/VideoThumbnailTask;)Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-static {v1}, Lcom/openx/view/video/network/VideoThumbnailTask;->access$100(Lcom/openx/view/video/network/VideoThumbnailTask;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/view/video/network/VideoThumbnailTask$ThumbnailCreatedListener;->thumbnailCreated(Ljava/io/File;)V

    .line 258
    iget-object v0, p0, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->this$0:Lcom/openx/view/video/network/VideoThumbnailTask;

    invoke-static {v0}, Lcom/openx/view/video/network/VideoThumbnailTask;->access$100(Lcom/openx/view/video/network/VideoThumbnailTask;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 259
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/openx/view/video/network/VideoThumbnailTask$createThumnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
