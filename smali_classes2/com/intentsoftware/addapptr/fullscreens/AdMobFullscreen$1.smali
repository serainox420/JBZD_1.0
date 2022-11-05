.class Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V

    .line 81
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V

    .line 71
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;)V

    .line 76
    return-void
.end method
