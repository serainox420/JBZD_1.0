.class Lcom/mopub/mobileads/MoPubActivity$a;
.super Ljava/lang/Object;
.source "MoPubActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubActivity;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubActivity;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v2, v3, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubActivity;->finish()V

    .line 140
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity$a;->a:Lcom/mopub/mobileads/MoPubActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubActivity;->a(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/a$a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
