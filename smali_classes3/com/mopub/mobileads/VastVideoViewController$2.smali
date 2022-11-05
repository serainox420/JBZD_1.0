.class Lcom/mopub/mobileads/VastVideoViewController$2;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/content/Context;Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->c:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->a:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 841
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->a:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$2;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, p2, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 842
    return v3
.end method
