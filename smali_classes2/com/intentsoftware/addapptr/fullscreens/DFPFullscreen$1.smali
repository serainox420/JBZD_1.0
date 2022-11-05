.class Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "DFPFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V

    .line 82
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V

    .line 72
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;)V

    .line 77
    return-void
.end method
