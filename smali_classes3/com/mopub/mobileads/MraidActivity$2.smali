.class Lcom/mopub/mobileads/MraidActivity$2;
.super Ljava/lang/Object;
.source "MraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->a(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/a$a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 134
    return-void
.end method

.method public onExpand()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onFailedToLoad()V
    .locals 4

    .prologue
    .line 125
    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidActivity;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 129
    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->a(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/a$a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onOpen()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$2;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidActivity;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 145
    return-void
.end method
