.class Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;
.super Ljava/lang/Object;
.source "AppruptFullscreen.java"

# interfaces
.implements Lcom/apprupt/sdk/CvContentManager$PreloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V
    .locals 3

    .prologue
    .line 42
    iget-boolean v0, p1, Lcom/apprupt/sdk/CvPreloaderResponse;->a:Z

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/apprupt/sdk/CvPreloaderResponse;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/apprupt/sdk/CvPreloaderResponse;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;Ljava/lang/String;)V

    goto :goto_0
.end method
